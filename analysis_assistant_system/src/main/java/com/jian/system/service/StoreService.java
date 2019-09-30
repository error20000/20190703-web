package com.jian.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.config.Config;
import com.jian.system.config.Constant;
import com.jian.system.dao.StoreMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Equip;
import com.jian.system.entity.Message;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreType;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class StoreService extends BaseService<Store, StoreMapper> {

	@Autowired
	private StoreTypeService typeService;
	@Autowired
	private EquipService equipService;
	@Autowired
	private MessageService msgService;
	@Autowired
	private Config config;
	
	@TargetDataSource
	public int add(String level, String name, StoreType type, Store obj, User user) {
		if(Tools.isNullOrEmpty(level)) {
			throw new ServiceException(Tips.ERROR101, "level is null.");
		}
		int res = 0;
		switch (level) {
		case "1": //一级
			//判断重复
			StoreType test = typeService.selectOne(MapTools.custom().put("sStoreType_Name", name).build());
			if(test != null) {
				throw new ServiceException(Tips.ERROR105, name);
			}
			type.setsStoreType_Name(name);
			res = typeService.insert(type, user);
			break;

		default:
			String parent = !Tools.isNullOrEmpty(obj.getsStore_Level3())
					? obj.getsStore_Level3() : !Tools.isNullOrEmpty(obj.getsStore_Level2())
					? obj.getsStore_Level2() : !Tools.isNullOrEmpty(obj.getsStore_Level1()) 
					? obj.getsStore_Level1() : "";
			//判断重复
			Store test2 = super.selectOne(MapTools.custom().put("sStore_Name", name).put("sStore_Parent", parent).build());
			if(test2 != null) {
				throw new ServiceException(Tips.ERROR105, name);
			}
			obj.setsStore_Name(name);
			obj.setsStore_Parent(parent);
			res = super.insert(obj, user);
			break;
		}
		return res;
	}
	
	@TargetDataSource
	public int modify(String level, String name, StoreType type, Store obj, User user) {
		if(Tools.isNullOrEmpty(level)) {
			throw new ServiceException(Tips.ERROR101, "level is null.");
		}
		int res = 0;
		switch (level) {
		case "1": //一级
			//判断重复
			StoreType test = typeService.selectOne(MapTools.custom().put("sStoreType_Name", name).build());
			if(test != null && !test.getsStoreType_ID().equals(type.getsStoreType_ID())) {
				throw new ServiceException(Tips.ERROR105, name);
			}
			type.setsStoreType_Name(name);
			res = typeService.update(type, user);
			break;

		default:
			String parent = !Tools.isNullOrEmpty(obj.getsStore_Level3())
					? obj.getsStore_Level3() : !Tools.isNullOrEmpty(obj.getsStore_Level2())
					? obj.getsStore_Level2() : !Tools.isNullOrEmpty(obj.getsStore_Level1()) 
					? obj.getsStore_Level1() : "";
			//判断重复
			Store test2 = super.selectOne(MapTools.custom().put("sStore_Name", name).put("sStore_Parent", parent).build());
			if(test2 != null && !test2.getsStore_ID().equals(obj.getsStore_ID())) {
				throw new ServiceException(Tips.ERROR105, name);
			}
			obj.setsStore_Name(name);
			obj.setsStore_Parent(parent);
			res = super.update(obj, user);
			break;
		}
		return res;
	}
	

	@TargetDataSource
	public int delete(String level, String id, User user) {
		if(Tools.isNullOrEmpty(level)) {
			throw new ServiceException(Tips.ERROR101, "level is null.");
		}
		int test = equipService.isStore(id);
		if(test > 0) {
			throw new ServiceException(Tips.ERROR104, "仓库正在使用，不可删除.");
		}
		int res = 0;
		switch (level) {
		case "1": //一级
			res = typeService.delete(MapTools.custom().put("sStoreType_ID", id).build(), user);
			break;

		default:
			res = super.delete(MapTools.custom().put("sStore_ID", id).build(), user);
			break;
		}
		return res;
	}
	
	@TargetDataSource
	public List<Map<String, Object>> storeList(String parent, User user) {
		
		List<Map<String, Object>> res = new ArrayList<>();
		Map<String, Object> node = null;
		
		if(Tools.isNullOrEmpty(parent)) {
			List<StoreType> typeList = new ArrayList<>();
			if(config.superGroupId.equals(user.getsUser_GroupID()) 
					|| config.managerGroupId.equals(user.getsUser_GroupID())) { 
				typeList = typeService.selectAllByUser(null);
			}else {
				typeList = typeService.selectAllByUser(user.getsUser_ID());
			}
			for (StoreType type : typeList) {
				node = Tools.parseObjectToMap(type);
				res.add(node);
			}
		}else {
			List<Store> list = this.selectListByUser(MapTools.custom().put("sStore_Parent", parent).build(), user);
			for (Store store : list) {
				node = Tools.parseObjectToMap(store);
				res.add(node);
			}
		}
		return res;
	}
	

	@TargetDataSource
	public List<Store> selectListByUser(Map<String, Object> contion, User user) {
		contion = contion != null && contion.isEmpty() ? null : contion;
		if(config.superGroupId.equals(user.getsUser_GroupID()) 
				|| config.managerGroupId.equals(user.getsUser_GroupID())) { 
			return baseMapper.selectListByUser(contion, null);
		}
		return baseMapper.selectListByUser(contion, user.getsUser_ID());
	}
	
	@TargetDataSource
	public List<Map<String, Object>> storeListApp(String parent, User user) {
		
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		Map<String, Object> node = null;
		
		if(Tools.isNullOrEmpty(parent)) {
			List<Store> list = this.selectListByUser(null, user);
			for (Store store : list) {
				node = Tools.parseObjectToMap(store);
				res.add(node);
			}
		}else {
			List<Store> list = this.selectListByUser(MapTools.custom().put("sStore_Parent", parent).build(), user);
			for (Store store : list) {
				node = Tools.parseObjectToMap(store);
				res.add(node);
			}
		}
		return res;
	}


	@TargetDataSource
	public List<Map<String, Object>> storeTree(String sStore_Level1, String sStore_Level2, String sStore_Level3, String sStore_Level4, User user) {
		
		List<StoreType> typeList = new ArrayList<>();
		if(config.superGroupId.equals(user.getsUser_GroupID()) 
				|| config.managerGroupId.equals(user.getsUser_GroupID())) { 
			typeList = typeService.selectAllByUser(null);
		}else {
			typeList = typeService.selectAllByUser(user.getsUser_ID());
		}
		if(!Tools.isNullOrEmpty(sStore_Level1)) {
			typeList = typeList.stream()
					.filter(e -> e.getsStoreType_ID().equals(sStore_Level1))
					.collect(Collectors.toList());
		}
		
		List<Store> list = this.selectListByUser(null, user);
		if(!Tools.isNullOrEmpty(sStore_Level2)) {
			list = list.stream()
					.filter(e -> e.getsStore_ID().equals(sStore_Level2) || sStore_Level2.equals(e.getsStore_Level2()))
					.collect(Collectors.toList());
		}
		if(!Tools.isNullOrEmpty(sStore_Level3)) {
			list = list.stream()
					.filter(e -> e.getsStore_ID().equals(sStore_Level2)  
							|| e.getsStore_ID().equals(sStore_Level3) || sStore_Level3.equals(e.getsStore_Level3()))
					.collect(Collectors.toList());
		}
		if(!Tools.isNullOrEmpty(sStore_Level4)) {
			list = list.stream()
					.filter(e -> e.getsStore_ID().equals(sStore_Level2) || e.getsStore_ID().equals(sStore_Level3)
							|| e.getsStore_ID().equals(sStore_Level4) )
					.collect(Collectors.toList());
		}
		
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		Map<String, Object> node = null;
		for (StoreType type : typeList) {
			node = Tools.parseObjectToMap(type);
			node.put("sStore_ID", type.getsStoreType_ID());
			node.put("sStore_Name", type.getsStoreType_Name());
			List<Map<String, Object>>  children = findChildren(type.getsStoreType_ID(), list);
			if(children != null && children.size() > 0) {
				node.put("children", children);
			}
			res.add(node);
		}
		return res;
	}
	
	private List<Map<String, Object>> findChildren(String id, List<Store> list){
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		List<Store> children = list.stream()
				.filter(e -> e.getsStore_Parent().equals(id))
				.collect(Collectors.toList());
		Map<String, Object> node = null;
		for (Store store : children) {
			node = Tools.parseObjectToMap(store);
			List<Map<String, Object>> temp = findChildren(store.getsStore_ID(), list);
			if(temp != null && temp.size() > 0) {
				node.put("children", temp);
			}
			res.add(node);
		}
		return res;
	}
	
	@TargetDataSource
	public List<StoreType> findType(User user) {
		if(config.superGroupId.equals(user.getsUser_GroupID()) 
				|| config.managerGroupId.equals(user.getsUser_GroupID())) { 
			return typeService.selectAllByUser(null);
		}
		return typeService.selectAllByUser(user.getsUser_ID());
	}
	
	@TargetDataSource
	public List<Map<String, Object>> storeMap(User user) {
		if(config.superGroupId.equals(user.getsUser_GroupID()) 
				|| config.managerGroupId.equals(user.getsUser_GroupID())) { 
			return typeService.storeMap(null);
		}
		return typeService.storeMap(user.getsUser_ID());
	}

	
	@TargetDataSource
	public List<Equip> appEquip(String sEquip_StoreLv1, String sEquip_StoreLv2, String sEquip_StoreLv3, String sEquip_StoreLv4) {
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_StoreLv1", sEquip_StoreLv1);
		condition.put("sEquip_StoreLv2", sEquip_StoreLv2);
		condition.put("sEquip_StoreLv3", sEquip_StoreLv3);
		condition.put("sEquip_StoreLv4", sEquip_StoreLv4);
		return equipService.selectList(condition);
	}
	
	
	@TargetDataSource
	public List<Map<String, Object>> checkEquipType() {
		return baseMapper.checkEquipType();
	}
	
	
	@TargetDataSource
	public List<Map<String, Object>> checkStore() {
		return baseMapper.checkStore();
	}

	@TargetDataSource
	public List<Map<String, Object>> equipPage(Map<String, Object> condition, int start, int rows){
		if(condition == null) {
			condition = new HashMap<>();
		}
		condition.put("sEquip_Status", Constant.EquipStatus_1); //只查询库存中的器材
		return equipService.selectPageByCustom(condition, start, rows);
	}
	
	@TargetDataSource
	public long equipSize(Map<String, Object> condition) {
		if(condition == null) {
			condition = new HashMap<>();
		}
		condition.put("sEquip_Status", Constant.EquipStatus_1); //只查询库存中的器材
		return equipService.sizeByCustom(condition);
	}

	@TargetDataSource
	public List<Message> msgPage(Map<String, Object> condition, User user, int start, int rows){
		return msgService.selectPage(condition, null, null, user, start, rows);
	}
	
	@TargetDataSource
	public long msgSize(Map<String, Object> condition, User user) {
		return msgService.size(condition, null, null, user);
	}


	@TargetDataSource
	public List<Map<String, Object>> export(Map<String, Object> condition, User user) {
		return baseMapper.export(condition);
	}

	@TargetDataSource
	@Transactional
	public void imports(List<StoreType> types, List<Store> stores, User user) {
		if(types.size() > 0) {
			typeService.batchInsert(types, user);
		}
		if(stores.size() > 0) {
			batchInsert(stores, user);
		}
	}
	
	//TODO ------------------------------------------------------------------------------统计
	
	/**
	 * 仓库区域分布
	 */
	@TargetDataSource
	public List<Map<String, Object>> distribution(String sEquip_Type){
		
		List<Map<String, Object>> list = equipService.statisUnused(sEquip_Type);
		
		return list;
	}
	
	/**
	 * 仓库库存变化
	 */
	@TargetDataSource
	public List<Map<String, Object>> time(String sEquip_Type, String sStore_Level1, String sStore_Level2, String sStore_Level3, String sStore_Level4){
		
		List<Map<String, Object>> list = baseMapper.time(sEquip_Type, sStore_Level1, sStore_Level2, sStore_Level3, sStore_Level4);
		
		return list;
	}
	
}
