package com.jian.system.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.UserMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.User;

@Service
public class UserService extends BaseService<User, UserMapper> {


}
