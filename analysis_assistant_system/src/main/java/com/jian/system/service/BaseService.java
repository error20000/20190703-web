package com.jian.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.annotation.Table;
import com.jian.system.dao.BaseMapper;
import com.jian.system.dao.UserMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.User;
import com.jian.system.utils.Utils;
import com.jian.tools.core.Tools;

@Service
public class BaseService<T, M extends BaseMapper<T>> {

	@Autowired
	protected M baseMapper;

	//TODO ----------------------------------------------------------------------insert

	@TargetDataSource
	public int insert(T obj) {
		String tableName =  getTableName();
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}
	
	@TargetDataSource
	public int batchInsert(List<T> objs) {
		String tableName =  getTableName();
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		for (T t : objs) {
			list.add(Tools.parseObjectToMap(t));
		}
		return baseMapper.batchInsert(tableName, list);
	}
	
	//TODO ----------------------------------------------------------------------delete

	@TargetDataSource
	public int delete(Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.delete(tableName, condition);
	}

	//TODO ----------------------------------------------------------------------update

	@TargetDataSource
	public int update(T obj) {
		List<String> pkeys = getPrimaryKeys();
		Map<String, Object> condition = Tools.parseObjectToMap(obj);
		Map<String, Object> value = new HashMap<String, Object>();
		for (String string : pkeys) {
			value.put(string, condition.get(string));
		}
		return update(value, condition);
	}

	@TargetDataSource
	public int update(Map<String, Object> value, Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.update(tableName, value, condition);
	}

	//TODO ----------------------------------------------------------------------select

	@TargetDataSource
	public T selectOne(Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.selectOne(tableName, condition);
	}
	
	/*@TargetDataSource
	public T selectOne(Map<String, Object> condition) {
		List<T> list = selectList(condition);
		if(list == null || list.size() == 0) {
			return null;
		}
		return list.get(0);
	}*/
	
	@TargetDataSource
	public Map<String, Object> selectOneMap(List<String> columns, Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.selectOneMap(tableName, columns, condition);
	}

	@TargetDataSource
	public List<T> selectAll() {
		String tableName =  getTableName();
		return baseMapper.selectAll(tableName);
	}

	@TargetDataSource
	public List<T> selectList(Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.selectList(tableName, condition);
	}

	@TargetDataSource
	public List<Map<String, Object>> selectListMap(List<String> columns, Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.selectListMap(tableName, columns, condition);
	}

	@TargetDataSource
	public List<T> selectPage(Map<String, Object> condition, int start, int rows) {
		String tableName =  getTableName();
		return baseMapper.selectPage(tableName, condition, start, rows);
	}

	//TODO ----------------------------------------------------------------------size

	@TargetDataSource
	public long size(Map<String, Object> condition) {
		String tableName =  getTableName();
		return baseMapper.size(tableName, condition);
	}
	
	@TargetDataSource
	public long sizeAll() {
		String tableName =  getTableName();
		return baseMapper.sizeAll(tableName);
	}

	//TODO ----------------------------------------------------------------------Tools
	
	//获取泛型注解的table name。
	private String getTableName(){
		String tableName = "";
		Class<?> clss = Utils.getObejctClass(getClass());
		if(clss != null){
			if(clss.isAnnotationPresent(Table.class)){
				tableName = clss.getAnnotation(Table.class).value();
			}
		}
		return tableName;
	}

	private List<String> getPrimaryKeys(){
		Class<?> clss = Utils.getObejctClass(getClass());
		if(clss == null){
			return new ArrayList<String>();
		}
		return Utils.getPrimaryKeys(clss);
	}
}
