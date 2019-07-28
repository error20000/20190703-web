package com.jian.system.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.UserMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class UserService extends BaseService<User, UserMapper> {

	private String superGroupId = "1";
	private String defualtUserName = "admin";
	
	
	@Override
	@TargetDataSource
	public int insert(User obj, User user) {
		String tableName =  getTableName();
		//判断用户
		if(user == null) {
			throw new ServiceException(Tips.ERROR101, "user is null");
		}
		//判断用户名重复
		User test = baseMapper.selectOne(tableName, MapTools.custom().put("sUser_UserName", obj.getsUser_UserName()).build());
		if(test != null) {
			throw new ServiceException(Tips.ERROR105, "用户名 "+obj.getsUser_UserName());
		}
		//判断超级用户组
		if(!superGroupId.equals(user.getsUser_GroupID()) && superGroupId.equals(obj.getsUser_GroupID())) {
			throw new ServiceException(Tips.ERROR101, "非超级用户组，不可创建用户到超级用户组。");
		}
		//检查密码复杂度
		if(!checkPWD(obj.getsUser_PassWord())) {
			throw new ServiceException(Tips.ERROR101, "密码不符合要求。");
		}
		//保存
		obj.setsUser_ID(Utils.newSnowflakeIdStr());
		obj.setsUser_PassWord(Tools.md5(obj.getsUser_PassWord())); //md5
		obj.setdUser_CreateDate(new Date());
		obj.setsUser_UserID(user.getsUser_ID());
		
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}

	@Override
	@TargetDataSource
	public int update(User obj, User user) {
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
			throw new ServiceException(Tips.ERROR102, "user is null");
		}
		User old = baseMapper.selectOne(tableName, condition);
		//判断用户名重复
		String sUser_UserName = (String) value.get("sUser_UserName");
		if(!Tools.isNullOrEmpty(sUser_UserName)) {
			User test = baseMapper.selectOne(tableName, MapTools.custom().put("sUser_UserName", sUser_UserName).build());
			if(test != null && !test.getsUser_UserName().equals(old.getsUser_UserName())) {
				throw new ServiceException(Tips.ERROR105, "用户名 "+sUser_UserName);
			}
		}
		//判断超级用户组
		if(!superGroupId.equals(user.getsUser_GroupID()) && superGroupId.equals(value.get("sUser_GroupID"))) {
			throw new ServiceException(Tips.ERROR102, "非超级用户组，不可创建用户到超级用户组。");
		}
		//判断非超级用户组，不可降级
		if(!superGroupId.equals(user.getsUser_GroupID()) 
				&& superGroupId.equals(old.getsUser_GroupID())
				&& !superGroupId.equals(value.get("sUser_GroupID")) ) {
			throw new ServiceException(Tips.ERROR102, "非超级用户组，不可降级超级用户组。");
		}
		//判断自己修改自己用户组
		if(user.getsUser_ID().equals(old.getsUser_ID()) 
				&& !user.getsUser_GroupID().equals(value.get("sUser_GroupID"))) {
			throw new ServiceException(Tips.ERROR102, "自己不可修改自己的用户组。");
		}
		
		//移除密码修改
		value.remove("sUser_PassWord");
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
		User old = baseMapper.selectOne(tableName, condition);
		//判断删除自己
		if(user.getsUser_ID().equals(old.getsUser_ID())) {
			throw new ServiceException(Tips.ERROR104, "自己不可删除自己。");
		}
		//判断默认用户，不可删除
		if(!superGroupId.equals(user.getsUser_GroupID()) && defualtUserName.equals(old.getsUser_UserName())) {
			throw new ServiceException(Tips.ERROR104, "非超级用户组，不可删除默认用户。");
		}
		
		return baseMapper.delete(tableName, condition);
	}

	@TargetDataSource
	public int changePWD(String oldPwd, String newPwd, String sUser_ID) {
		String tableName =  getTableName();
		
		Map<String, Object> condition = MapTools.custom().put("sUser_ID", sUser_ID).build();
		User test = baseMapper.selectOne(tableName, condition);
		//判断用户
		if(test == null){
			throw new ServiceException(Tips.ERROR102, "用户不存在。");
		}
		//判断密码
		if(!test.getsUser_PassWord().equals(Tools.md5(oldPwd))){
			throw new ServiceException(Tips.ERROR102, "原密码不正确。");
		}
		//检查密码复杂度
		if(!checkPWD(newPwd)) {
			throw new ServiceException(Tips.ERROR102, "密码不符合要求。");
		}
		Map<String, Object> value = MapTools.custom().put("sUser_PassWord", Tools.md5(newPwd)).build();
		return baseMapper.update(tableName, value, condition);
	}
	

	@TargetDataSource
	public int resetPWD(String sUser_ID, String sUser_PassWord) {
		String tableName =  getTableName();
		
		Map<String, Object> condition = MapTools.custom().put("sUser_ID", sUser_ID).build();
		User test = baseMapper.selectOne(tableName, condition);
		//判断用户
		if(test == null){
			throw new ServiceException(Tips.ERROR102, "用户不存在。");
		}
		//检查密码复杂度
		if(!checkPWD(sUser_PassWord)) {
			throw new ServiceException(Tips.ERROR102, "密码不符合要求。");
		}
		Map<String, Object> value = MapTools.custom().put("sUser_PassWord", Tools.md5(sUser_PassWord)).build();
		return baseMapper.update(tableName, value, condition);
	}
	
	
	public boolean checkPWD(String pwd) {
		
		return true;
	}
	
}
