package com.jian.system.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.config.Config;
import com.jian.system.config.Constant;
import com.jian.system.dao.AidMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Aid;
import com.jian.system.entity.AidEquip;
import com.jian.system.entity.Message;
import com.jian.system.entity.Nfc;
import com.jian.system.entity.User;
import com.jian.system.entity.UserAid;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class AidService extends BaseService<Aid, AidMapper> {

	@Autowired
	private Config config;
	@Autowired
	private NfcService nfcService;
	@Autowired
	private UserAidService userAidService;
	@Autowired
	private MessageService msgService;
	@Autowired
	private AidEquipService aidEquipService;
	@Autowired
	private EquipService equipService;
	
	@Transactional
	@TargetDataSource
	public int delBind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sAid_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sAid_ID", id);
		baseMapper.update(getTableName(), value, condition); //解除绑定
		return nfcService.rebind(sNfc_ID); //修改状态
	}

	@Transactional
	@TargetDataSource
	public int bind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sAid_NfcID", sNfc_ID);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sAid_ID", id);
		baseMapper.update(getTableName(), value, condition); //绑定
		return nfcService.bind(sNfc_ID); //修改状态
	}

	@TargetDataSource
	public int rebind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sAid_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sAid_NfcID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition); //解除绑定
	}
	
	@TargetDataSource
	public List<Aid> unbind() {
		return baseMapper.unbind();
	}

	@Override
	@Transactional
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		condition = condition.isEmpty() ? null : condition;
		String tableName =  getTableName();
		Aid old = baseMapper.selectOne(tableName, condition);
		if(!Tools.isNullOrEmpty(old.getsAid_NfcID())) {
			nfcService.rebind(old.getsAid_NfcID()); //修改状态
		}
		return baseMapper.delete(tableName, condition); //删除
	}
	
	@TargetDataSource
	public int deleteBatchById(List<String> ids, User user) {
		String tableName =  getTableName();
		return baseMapper.deleteBatch(tableName, "sAid_ID", ids);
	}
	
	@TargetDataSource
	public List<Aid> unuser() {
		return baseMapper.unuser();
	}
	

	@TargetDataSource
	public List<Map<String, Object>> user(String sAid_ID) {
		return baseMapper.user(sAid_ID);
	}
	
	@Transactional
	@TargetDataSource
	public int updateUser(String sAid_ID, String userIds) {
		//删除分配
		userAidService.delete(MapTools.custom().put("sUserAid_AidID", sAid_ID).build(), null);
		//重新分配
		if(Tools.isNullOrEmpty(userIds)) {
			return 1;
		}
		List<UserAid> list = new ArrayList<>();
		UserAid node = null;
		for (String userId : userIds.split(",")) {
			node = new UserAid();
			node.setsUserAid_ID(Utils.newSnowflakeIdStr());
			node.setsUserAid_AidID(sAid_ID);
			node.setsUserAid_UserID(userId);
			list.add(node);
		}
		if(list.size() == 0) { //空分配
			return 1;
		}
		return userAidService.batchInsert(list, null);
	}
	

	
	@TargetDataSource
	public List<Map<String, Object>> aidAll() {
		return baseMapper.aidAll();
	}
	

	@TargetDataSource
	public List<Aid> selectPage(Map<String, Object> condition, User user, int start, int rows) {
		if(user == null) {
			return new ArrayList<Aid>();
		}
		condition = condition.isEmpty() ? null : condition;
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.selectPageByUser(condition, null, start, rows);
		}
		return baseMapper.selectPageByUser(condition, user.getsUser_ID(), start, rows);
	}

	@TargetDataSource
	public long size(Map<String, Object> condition, User user) {
		if(user == null) {
			return 0;
		}
		condition = condition.isEmpty() ? null : condition;
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.sizeByUser(condition, null);
		}
		return baseMapper.sizeByUser(condition, user.getsUser_ID());
	}


	@TargetDataSource
	public List<Aid> selectAll(User user) {
		if(user == null) {
			return new ArrayList<Aid>();
		}
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.selectAllByUser(null);
		}
		return baseMapper.selectAllByUser(user.getsUser_ID());
	}

	
	@TargetDataSource
	public List<Aid> search(String keywords, User user, String ip) {
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组搜索所有航标
			return baseMapper.search(keywords, null);
		}
		return baseMapper.search(keywords, user.getsUser_ID());
	}


	@TargetDataSource
	public List<Map<String, Object>> equip(String sAid_ID, User user, String ip) {
		return baseMapper.equip(sAid_ID);
	}
	

	@Transactional
	@TargetDataSource
	public int useEquip(String sAid_ID, String sEquip_IDs, User user) {
		Map<String, Object> condition = MapTools.custom().put("sAidEquip_AidID", sAid_ID).build();
		//查询已使用的
		List<AidEquip> old = aidEquipService.selectList(condition);
		//删除已使用
		aidEquipService.delete(condition, user);
		//新增
		List<String> equipIds = Arrays.asList(sEquip_IDs.split(","));
		equipIds = equipIds.stream().distinct().collect(Collectors.toList());
		
		List<String> oldIds = old.stream()
				.map(e -> e.getsAidEquip_EquipID())
				.collect(Collectors.toList());
		
		List<String> tempUpdate = equipIds.stream()
				.filter(e -> !oldIds.contains(e))
				.collect(Collectors.toList());
		
		List<AidEquip> res = new ArrayList<>();
		AidEquip node = null;
		for (String equipId : equipIds) {
			node = new AidEquip();
			node.setsAidEquip_ID(Utils.newSnowflakeIdStr());
			node.setsAidEquip_AidID(sAid_ID);
			node.setsAidEquip_EquipID(equipId);
			Date date = new Date();
			List<AidEquip> test = old.stream()
					.filter(e -> equipId.equals(e.getsAidEquip_EquipID()))
					.collect(Collectors.toList());
			if(test != null && test.size() > 0) {
				date = test.get(0).getdAidEquip_CreateDate();
			}
			node.setdAidEquip_CreateDate(date);
			res.add(node);
		}
		//修改器材状态
		Map<String, Object> condEquip = new HashMap<>();
		Map<String, Object> valueEquip = new HashMap<>();
		for (String equipId : tempUpdate) {
			condEquip.put("sEquip_ID", equipId);
			valueEquip.put("sEquip_Status", Constant.EquipStatus_9);
			equipService.update(valueEquip, condEquip, user);
		}
		
		return aidEquipService.batchInsert(res, user);
	}


	@TargetDataSource
	public int unusual(String sAid_ID, User user, String ip) {
		Map<String, Object> condition = new HashMap<>();
		condition.put("sAid_ID", sAid_ID);
		String tableName =  getTableName();
		Aid aid = baseMapper.selectOne(tableName, condition);
		if(aid == null) {
			throw new ServiceException(Tips.ERROR102, "航标不存在");
		}
		Map<String, Object> value = new HashMap<>();
		value.put("sAid_Status", "unusual");
		return baseMapper.update(tableName, value, condition);
	}

	
	@TargetDataSource
	public List<Map<String, Object>> aidMap(User user) {
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.aidMap(null);
		}
		return baseMapper.aidMap(user.getsUser_ID());
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
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.export(condition, null);
		}
		return baseMapper.export(condition, user.getsUser_ID());
	}


	@TargetDataSource
	@Transactional
	public void imports(List<Aid> aids, List<Nfc> nfcs, User user) {
		for (Nfc nfc : nfcs) {
			nfcService.update(nfc, user);
		}
		batchInsert(aids, user);
	}
	
	//TODO ---------------------------------------------------------------------------------统计
	
	
	@TargetDataSource
	public List<Map<String, Object>> statis(String sAid_Station){
		
		List<Map<String, Object>> list = baseMapper.statis(sAid_Station);
		
		return list;
	}
	
}
