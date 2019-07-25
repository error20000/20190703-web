package com.jian.system.service;

import java.util.Date;
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
	public int batchInsert(List<DictType> objs, User user) {
		// TODO Auto-generated method stub
		return super.batchInsert(objs, user);
	}

	@Override
	public int update(DictType obj, User user) {
		// TODO Auto-generated method stub
		return super.update(obj, user);
	}

	@Override
	public int update(Map<String, Object> value, Map<String, Object> condition, User user) {
		// TODO Auto-generated method stub
		return super.update(value, condition, user);
	}



}
