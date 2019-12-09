package com.jian.system.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.config.Config;
import com.jian.system.dao.SystemMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.AidStation;
import com.jian.system.entity.System;
import com.jian.system.entity.User;
import com.jian.system.entity.UserStation;
import com.jian.tools.core.MapTools;

@Service
public class SystemService extends BaseService<System, SystemMapper> {
	
	@Autowired
	private Config config;
	@Autowired
	private UserStationService userStationService;
	@Autowired
	private AidStationService aidStationService;
	
	@TargetDataSource
	public System system(Map<String, Object> condition, User user) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		System base = baseMapper.selectOne(tableName, condition);
		if(user == null) {
			return base;
		}
		//超管组返回默认
		if(config.superGroupId.equals(user.getsUser_GroupID())  ) {
			return base;
		}
		//查询用户航标站权限
		List<UserStation> uStation = userStationService.selectList(MapTools.custom().put("sUserStation_UserID", user.getsUser_ID()).build());
		if(uStation == null || uStation.size() != 1) {
			return base; //没有或多个返回默认
		}
		//查询航标站配置
		AidStation aStation = aidStationService.selectOne(MapTools.custom().put("sAidStation_Station", uStation.get(0).getsUserStation_Station()).build());
		if(aStation == null) {
			return base; //没有单独配置
		}
		//修改配置
		base.setlSys_MapLat(aStation.getlAidStation_MapLat());
		base.setlSys_MapLng(aStation.getlAidStation_MapLng());
		base.setlSys_MapLevel(aStation.getlAidStation_MapLevel());
		return base;
	}
	
}
