package com.jian.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.config.Config;
import com.jian.system.dao.AidMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Aid;
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
	public List<Map<String, Object>> aidMap() {
		return baseMapper.aidMap();
	}

	
	//TODO ---------------------------------------------------------------------------------统计
	
	
	@TargetDataSource
	public List<Map<String, Object>> statis(String sAid_Station){
		
		List<Map<String, Object>> list = baseMapper.statis(sAid_Station);
		
		return list;
	}
	
}
