package com.jian.system.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.AppMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.App;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class AppService extends BaseService<App, AppMapper> {

	@Override
	@TargetDataSource
	public int insert(App obj, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR101, "user is null");
		}
		//随机生成
		if("******".equals(obj.getsApp_NO())) {
			obj.setsApp_NO(new Date().getTime() + "");
		}
		if("******".equals(obj.getsApp_SecretKey())) {
			obj.setsApp_SecretKey(Tools.md5(Utils.newSnowflakeIdStr()));
		}
		//判断重复
		App test = baseMapper.selectOne(tableName, MapTools.custom().put("sApp_NO", obj.getsApp_NO()).build());
		if(test != null) {
			throw new ServiceException(Tips.ERROR105, obj.getsApp_NO());
		}
		//保存
		obj.setsApp_ID(Utils.newSnowflakeIdStr());
		obj.setdApp_CreateDate(new Date());
		obj.setsApp_UserID(user.getsUser_ID());
		
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}


	@Override
	@TargetDataSource
	public int update(App obj, User user) {
		List<String> pkeys = getPrimaryKeys();
		Map<String, Object> value = Tools.parseObjectToMap(obj);
		Map<String, Object> condition = new HashMap<String, Object>();
		for (String string : pkeys) {
			condition.put(string, value.get(string));
			value.remove(string);
		}
		condition = condition.isEmpty() ? null : condition;
		value = value.isEmpty() ? null : value;
		return update(value, condition, user);
	}

	@Override
	@TargetDataSource
	public int update(Map<String, Object> value, Map<String, Object> condition, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR102, "user is null");
		}
		//随机生成
		if("******".equals(value.get("sApp_NO"))) {
			value.put("sApp_NO", new Date().getTime() + "");
		}
		if("******".equals(value.get("sApp_SecretKey"))) {
			value.put("sApp_SecretKey", Tools.md5(Utils.newSnowflakeIdStr()));
		}
		//判断重复
		String sApp_NO = (String) value.get("sApp_NO");
		if(!Tools.isNullOrEmpty(sApp_NO)) {
			App old = baseMapper.selectOne(tableName, condition);
			App test = baseMapper.selectOne(tableName, MapTools.custom().put("sApp_NO", sApp_NO).build());
			if(test != null && !test.getsApp_NO().equals(old.getsApp_NO())) {
				throw new ServiceException(Tips.ERROR105, sApp_NO);
			}
		}
		
		return baseMapper.update(tableName, value, condition);
	}

	@TargetDataSource
	public List<Map<String, Object>> export() {
		return baseMapper.export();
	}

}
