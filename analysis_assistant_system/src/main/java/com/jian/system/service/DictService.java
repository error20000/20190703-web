package com.jian.system.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.DictMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Dict;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class DictService extends BaseService<Dict, DictMapper> {

	@Override
	@TargetDataSource
	public int insert(Dict obj, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR101, "user is null");
		}
		//判断重复
		List<Dict> test = baseMapper.selectList(tableName, MapTools.custom().put("sDict_DictTypeNO", obj.getsDict_DictTypeNO()).build());
		for (Dict dict : test) {
			if(dict.getsDict_NO().equals(obj.getsDict_NO())) {
				throw new ServiceException(Tips.ERROR105, obj.getsDict_NO());
			}
		}
		//保存
		obj.setsDict_ID(Utils.newSnowflakeIdStr());
		obj.setdDict_CreateDate(new Date());
		obj.setsDict_UserID(user.getsUser_ID());
		
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}


	@Override
	@TargetDataSource
	public int update(Dict obj, User user) {
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
			throw new ServiceException(Tips.ERROR101, "user is null");
		}
		//判断重复
		String sDict_NO = (String) value.get("sDict_NO");
		String sDict_DictTypeNO = (String) value.get("sDict_DictTypeNO");
		if(!Tools.isNullOrEmpty(sDict_NO)) {
			Dict old = baseMapper.selectOne(tableName, condition);
			Dict test = baseMapper.selectOne(tableName, MapTools.custom().put("sDict_NO", sDict_NO).put("sDict_DictTypeNO", sDict_DictTypeNO).build());
			if(test != null && !test.getsDict_NO().equals(old.getsDict_NO())) {
				throw new ServiceException(Tips.ERROR105, sDict_NO);
			}
		}
		
		//保存
		value.put("dDict_UpdateDate", new Date());
		value.put("sDict_UpdateUserID", user.getsUser_ID());
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
		Dict old = baseMapper.selectOne(tableName, condition);
		if(old.getlDict_SysFlag() == 1) {
			throw new ServiceException(Tips.ERROR104, "系统默认，不可删除。");
		}
		
		return baseMapper.delete(tableName, condition);
	}
	
	@TargetDataSource
	public int deleteBatchById(List<String> ids, User user) {
		String tableName =  getTableName();
		return baseMapper.deleteBatch(tableName, "sDict_ID", ids);
	}

	@TargetDataSource
	public List<Map<String, Object>> export() {
		return baseMapper.export();
	}
}
