package com.jian.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.AidMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Aid;
import com.jian.system.entity.User;

@Service
public class AidService {

	@Autowired
	protected AidMapper baseMapper;

	//TODO ----------------------------------------------------------------------insert

	@TargetDataSource
	public int insert(User user) {
		return baseMapper.insert(user);
	}
	
	//TODO ----------------------------------------------------------------------delete

	@TargetDataSource
	public int deleteById(String sUser_ID) {
		return baseMapper.deleteById(sUser_ID);
	}

	//TODO ----------------------------------------------------------------------update

	@TargetDataSource
	public int update(User user) {
		return baseMapper.update(user);
	}

	@TargetDataSource
	public int updatePwd(User user) {
		return baseMapper.updatePwd(user);
	}

	//TODO ----------------------------------------------------------------------select

	@TargetDataSource
	public User selectById(String sUser_ID) {
		return baseMapper.selectById(sUser_ID);
	}

	@TargetDataSource
	public List<Aid> selectAll() {
		return baseMapper.selectAll();
	}

	//TODO ----------------------------------------------------------------------custom
	
	

}
