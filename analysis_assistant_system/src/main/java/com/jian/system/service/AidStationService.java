package com.jian.system.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.config.Config;
import com.jian.system.dao.AidStationMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.AidStation;
import com.jian.system.entity.User;

@Service
public class AidStationService extends BaseService<AidStation, AidStationMapper> {

	@Autowired
	private Config config;
	
	@TargetDataSource
	public List<AidStation> list(Map<String, Object> condition, User user) {
		if(user == null) {
			return new ArrayList<AidStation>();
		}
		condition = condition != null && condition.isEmpty() ? null : condition;
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.list(condition, null);
		}
		return baseMapper.list(condition, user.getsUser_ID());
	}
	


	@TargetDataSource
	public List<Map<String, Object>> export(Map<String, Object> condition, User user) {
		condition = condition != null && condition.isEmpty() ? null : condition;
		if(config.superGroupId.equals(user.getsUser_GroupID()) || config.managerGroupId.equals(user.getsUser_GroupID())) { //超管组查询所有航标
			return baseMapper.export(condition, null);
		}
		return baseMapper.export(condition, user.getsUser_ID());
	}

}
