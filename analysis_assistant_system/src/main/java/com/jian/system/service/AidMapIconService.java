package com.jian.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.AidMapIconMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.AidMapIcon;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class AidMapIconService extends BaseService<AidMapIcon, AidMapIconMapper> {

	@Override
	@TargetDataSource
	public int insert(AidMapIcon obj, User user) {
		String tableName =  getTableName();
		//判断重复
		AidMapIcon test = baseMapper.selectOne(tableName, MapTools.custom().put("sAidIcon_AidID", obj.getsAidIcon_AidID()).put("sAidIcon_Status", obj.getsAidIcon_Status()).build());
		if(test != null) {
			throw new ServiceException(Tips.ERROR105, "该状态图标");
		}
		//保存
		obj.setsAidIcon_ID(Utils.newSnowflakeIdStr());
		
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}


	@Override
	@TargetDataSource
	public int update(AidMapIcon obj, User user) {
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
		String sAidIcon_AidID = (String) value.get("sAidIcon_AidID");
		String sAidIcon_Status = (String) value.get("sAidIcon_Status");
		if(!Tools.isNullOrEmpty(sAidIcon_AidID) || !Tools.isNullOrEmpty(sAidIcon_Status)) {
			AidMapIcon old = baseMapper.selectOne(tableName, condition);
			AidMapIcon test = baseMapper.selectOne(tableName, MapTools.custom().put("sAidIcon_AidID", sAidIcon_AidID).put("sAidIcon_Status", sAidIcon_Status).build());
			if(test != null && !test.getsAidIcon_AidID().equals(old.getsAidIcon_AidID()) && !test.getsAidIcon_Status().equals(old.getsAidIcon_Status()) ) {
				throw new ServiceException(Tips.ERROR105, "该状态图标");
			}
		}
		
		//保存
		return baseMapper.update(tableName, value, condition);
	}



	@TargetDataSource
	public List<Map<String, Object>> export(Map<String, Object> condition, User user) {
		return baseMapper.export(condition);
	}
	

}
