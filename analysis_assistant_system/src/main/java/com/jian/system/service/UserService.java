package com.jian.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.UserMapper;
import com.jian.system.entity.User;

@Service
public class UserService{
	
	@Autowired
	protected UserMapper baseMapper;
	
    public User selectOne(){
        return baseMapper.selectOne();
    }
    
    public int insert(String sUser_ID, String sUser_UserName, String sUser_PassWord) {
    	User user = new User();
    	user.setsUser_ID(sUser_ID);
    	user.setsUser_UserName(sUser_UserName);
    	user.setsUser_PassWord(sUser_PassWord);
    	return baseMapper.insert(user);
    }
}
