package com.jian.system.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.BaseMapper;
import com.jian.system.dao.UserMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.User;

@Service
public class BaseService<M extends BaseMapper<T>, T> {

	@Autowired
	protected M baseMapper;

	//TODO ----------------------------------------------------------------------insert

	@TargetDataSource
	public int insert(T obj) {
		return baseMapper.insert(obj);
	}
	
	//TODO ----------------------------------------------------------------------delete

	@TargetDataSource
	public int deleteById(String id) {
		return baseMapper.deleteById(id);
	}

	//TODO ----------------------------------------------------------------------update

	@TargetDataSource
	public int update(T obj) {
		return baseMapper.update(obj);
	}

	@TargetDataSource
	public int updatePwd(T obj) {
		return baseMapper.updatePwd(obj);
	}

	//TODO ----------------------------------------------------------------------select

	@TargetDataSource
	public T selectOne() {
		return baseMapper.selectOne();
	}

	@TargetDataSource
	public T selectById(String id) {
		return baseMapper.selectById(id);
	}

	@TargetDataSource
	public List<T> selectAll() {
		return baseMapper.selectAll();
	}

	@TargetDataSource
	public List<T> selectList(Map<String, Object> condition) {
		return baseMapper.selectList("tBase_User",condition);
	}

	//TODO ----------------------------------------------------------------------custom
	
	

}
