package com.jian.system.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.GroupMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Group;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.tools.core.Tips;

@Service
public class GroupService extends BaseService<Group, GroupMapper> {

	@Override
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR104, "user is null");
		}
		//判断默认用户组，不能删除
		Group old = baseMapper.selectOne(tableName, condition);
		if(old.getlGroup_SysFlag() == 1) {
			throw new ServiceException(Tips.ERROR104, "默认用户组，不可删除。");
		}
		
		return baseMapper.delete(tableName, condition);
	}
	

}
