package com.jian.system.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.config.Config;
import com.jian.system.dao.MessageMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Equip;
import com.jian.system.entity.EquipLog;
import com.jian.system.entity.Message;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class MessageService extends BaseService<Message, MessageMapper> {

	

	@Autowired
	private Config config;
	

	@TargetDataSource
	public List<Message> selectPage(Map<String, Object> condition, Date startDate, Date endDate, User user, int start, int rows) {
		if(user == null) {
			return new ArrayList<Message>();
		}
		condition = condition.isEmpty() ? null : condition;
		if(config.superGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有消息
			return baseMapper.selectPageByUser(condition, startDate, endDate, null, start, rows);
		}
		return baseMapper.selectPageByUser(condition, startDate, endDate, user.getsUser_ID(), start, rows);
	}

	@TargetDataSource
	public long size(Map<String, Object> condition, Date startDate, Date endDate, User user) {
		if(user == null) {
			return 0;
		}
		condition = condition.isEmpty() ? null : condition;
		if(config.superGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有消息
			return baseMapper.sizeByUser(condition, startDate, endDate, null);
		}
		return baseMapper.sizeByUser(condition, startDate, endDate, user.getsUser_ID());
	}

	
	@TargetDataSource
	public List<Message> search(String keywords, User user, String ip) {
		if(config.superGroupId.equals(user.getsUser_GroupID())) { //超管组搜索所有消息
			return baseMapper.search(keywords, null);
		}
		return baseMapper.search(keywords, user.getsUser_ID());
	}
	
	
	@TargetDataSource
	public Map<String, Object> view(String sMsg_ID, User user, String ip) {
		if(config.superGroupId.equals(user.getsUser_GroupID())) { //超管组搜索所有消息
			return baseMapper.view(sMsg_ID, null);
		}
		return baseMapper.view(sMsg_ID, user.getsUser_ID());
	}
	


	@TargetDataSource
	@Transactional
	public int handle(String sMsg_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sMsg_ID)) {
			throw new ServiceException(Tips.ERROR206, "sMsg_ID");
		}
		
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sMsg_ID", sMsg_ID);
		Message test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "消息");
		}
		if("4".equals(test.getsMsg_Status())) {
			throw new ServiceException(Tips.ERROR101, "消息已处理");
		}
		
		//保存
		Map<String, Object> values = new HashMap<String, Object>();
		values.put("sMsg_Status", "4");
		if(user != null) {
			values.put("sMsg_UserID", user.getsUser_ID());
		}
		values.put("sMsg_IP", ip);
		values.put("dMsg_UpdateDate", new Date());
		values.put("sMsg_Remarks", remarks);
		
		return baseMapper.update(tableName, values, condition);
	}
	

	@TargetDataSource
	@Transactional
	public int unhandle(String sMsg_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sMsg_ID)) {
			throw new ServiceException(Tips.ERROR206, "sMsg_ID");
		}
		
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sMsg_ID", sMsg_ID);
		Message test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "消息");
		}
		if("3".equals(test.getsMsg_Status())) {
			throw new ServiceException(Tips.ERROR101, "消息已设为待处理");
		}
		if("4".equals(test.getsMsg_Status())) {
			throw new ServiceException(Tips.ERROR101, "已处理消息，不可设为待处理");
		}
		
		//保存
		Map<String, Object> values = new HashMap<String, Object>();
		values.put("sMsg_Status", "3");
		if(user != null) {
			values.put("sMsg_UserID", user.getsUser_ID());
		}
		values.put("sMsg_IP", ip);
		values.put("dMsg_UpdateDate", new Date());
		values.put("sMsg_Remarks", remarks);
		
		return baseMapper.update(tableName, values, condition);
	}
	

	@TargetDataSource
	@Transactional
	public int read(String sMsg_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sMsg_ID)) {
			throw new ServiceException(Tips.ERROR206, "sMsg_ID");
		}
		
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sMsg_ID", sMsg_ID);
		Message test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "消息");
		}
		
		//保存
		Map<String, Object> values = new HashMap<String, Object>();
		values.put("sMsg_Status", "2");
		if(user != null) {
			values.put("sMsg_UserID", user.getsUser_ID());
		}
		values.put("sMsg_IP", ip);
		values.put("dMsg_UpdateDate", new Date());
		values.put("sMsg_Remarks", remarks);
		
		return baseMapper.update(tableName, values, condition);
	}

}
