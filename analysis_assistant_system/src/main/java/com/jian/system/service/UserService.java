package com.jian.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.UserMapper;
import com.jian.system.entity.User;

@Service
public class UserService {

	@Autowired
	protected UserMapper baseMapper;

	//TODO ----------------------------------------------------------------------insert
	
	public int insert(User user) {
		return baseMapper.insert(user);
	}
	
	//TODO ----------------------------------------------------------------------delete
	
	public int deleteById(String sUser_ID) {
		return baseMapper.deleteById(sUser_ID);
	}

	//TODO ----------------------------------------------------------------------update
	
	public int update(User user) {
		return baseMapper.update(user);
	}
	
	public int updatePwd(User user) {
		return baseMapper.updatePwd(user);
	}

	//TODO ----------------------------------------------------------------------select
	
	public User selectOne() {
		return baseMapper.selectOne();
	}

	public User selectById(String sUser_ID) {
		return baseMapper.selectById(sUser_ID);
	}

	public List<User> selectAll() {
		return baseMapper.selectAll();
	}

	//TODO ----------------------------------------------------------------------custom
	
	

}
