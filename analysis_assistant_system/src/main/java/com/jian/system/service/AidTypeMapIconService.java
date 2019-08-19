package com.jian.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.AidTypeMapIconMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.AidTypeMapIcon;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class AidTypeMapIconService extends BaseService<AidTypeMapIcon, AidTypeMapIconMapper> {

	@Override
	@TargetDataSource
	public int insert(AidTypeMapIcon obj, User user) {
		String tableName =  getTableName();
		//判断重复
		AidTypeMapIcon test = baseMapper.selectOne(tableName, MapTools.custom().put("sAidTypeIcon_Type", obj.getsAidTypeIcon_Type()).put("sAidTypeIcon_Status", obj.getsAidTypeIcon_Status()).build());
		if(test != null) {
			throw new ServiceException(Tips.ERROR105, "该状态图标");
		}
		//保存
		obj.setsAidTypeIcon_ID(Utils.newSnowflakeIdStr());
		
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}


	@Override
	@TargetDataSource
	public int update(AidTypeMapIcon obj, User user) {
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
		//判断重复
		String sAidTypeIcon_Type = (String) value.get("sAidTypeIcon_Type");
		String sAidTypeIcon_Status = (String) value.get("sAidTypeIcon_Status");
		if(!Tools.isNullOrEmpty(sAidTypeIcon_Type) || !Tools.isNullOrEmpty(sAidTypeIcon_Status)) {
			AidTypeMapIcon old = baseMapper.selectOne(tableName, condition);
			AidTypeMapIcon test = baseMapper.selectOne(tableName, MapTools.custom().put("sAidTypeIcon_Type", sAidTypeIcon_Type).put("sAidTypeIcon_Status", sAidTypeIcon_Status).build());
			if(test != null && !test.getsAidTypeIcon_Type().equals(old.getsAidTypeIcon_Type()) && !test.getsAidTypeIcon_Status().equals(old.getsAidTypeIcon_Status()) ) {
				throw new ServiceException(Tips.ERROR105, "该状态图标");
			}
		}
		
		//保存
		return baseMapper.update(tableName, value, condition);
	}


}
