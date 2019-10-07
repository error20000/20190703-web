package com.jian.system.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.DictTypeMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.DictType;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class DictTypeService extends BaseService<DictType, DictTypeMapper> {

	@Override
	@TargetDataSource
	public int insert(DictType obj, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR101, "user is null");
		}
		//判断重复
		DictType test = baseMapper.selectOne(tableName, MapTools.custom().put("sDictType_NO", obj.getsDictType_NO()).build());
		if(test != null) {
			throw new ServiceException(Tips.ERROR105, obj.getsDictType_NO());
		}
		//保存
		obj.setsDictType_ID(Utils.newSnowflakeIdStr());
		obj.setdDictType_CreateDate(new Date());
		obj.setsDictType_UserID(user.getsUser_ID());
		
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}


	@Override
	@TargetDataSource
	public int update(DictType obj, User user) {
		List<String> pkeys = getPrimaryKeys();
		Map<String, Object> value = Tools.parseObjectToMap(obj);
		Map<String, Object> condition = new HashMap<String, Object>();
		for (String string : pkeys) {
			condition.put(string, value.get(string));
			value.remove(string);
		}
		condition = condition != null && condition.isEmpty() ? null : condition;
		value = value != null && value.isEmpty() ? null : value;
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
		//判断重复
		String sDictType_NO = (String) value.get("sDictType_NO");
		if(!Tools.isNullOrEmpty(sDictType_NO)) {
			DictType old = baseMapper.selectOne(tableName, condition);
			DictType test = baseMapper.selectOne(tableName, MapTools.custom().put("sDictType_NO", sDictType_NO).build());
			if(test != null && !test.getsDictType_NO().equals(old.getsDictType_NO())) {
				throw new ServiceException(Tips.ERROR105, sDictType_NO);
			}
		}
		
		//保存
		value.put("dDictType_UpdateDate", new Date());
		value.put("sDictType_UpdateUserID", user.getsUser_ID());
		return baseMapper.update(tableName, value, condition);
	}

	@Override
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR104, "user is null");
		}
		//判断系统默认，不能删除
		DictType old = baseMapper.selectOne(tableName, condition);
		if(old.getlDictType_SysFlag() == 1) {
			throw new ServiceException(Tips.ERROR104, "系统默认，不可删除。");
		}
		
		return baseMapper.delete(tableName, condition);
	}

	@TargetDataSource
	public List<Map<String, Object>> export() {
		return baseMapper.export();
	}
	

}
