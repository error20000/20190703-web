package com.jian.system.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.config.Config;
import com.jian.system.dao.UserMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.GroupMenu;
import com.jian.system.entity.Menu;
import com.jian.system.entity.MenuFun;
import com.jian.system.entity.User;
import com.jian.system.entity.UserAid;
import com.jian.system.entity.UserMenu;
import com.jian.system.entity.UserStation;
import com.jian.system.entity.UserStore;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class UserService extends BaseService<User, UserMapper> {

	@Autowired
	private Config config;
	@Autowired
	private MenuService menuService;
	@Autowired
	private MenuFunService menuFunService;
	@Autowired
	private GroupMenuService groupMenuService;
	@Autowired
	private UserMenuService userMenuService;
	@Autowired
	private UserAidService userAidService;
	@Autowired
	private UserStationService userStationService;
	@Autowired
	private UserStoreService userStoreService;
	
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
		if(!config.superGroupId.equals(user.getsUser_GroupID()) && config.superGroupId.equals(obj.getsUser_GroupID())) {
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
		if(!config.superGroupId.equals(user.getsUser_GroupID()) && config.superGroupId.equals(value.get("sUser_GroupID"))) {
			throw new ServiceException(Tips.ERROR102, "非超级用户组，不可创建用户到超级用户组。");
		}
		//判断非超级用户组，不可降级
		if(!config.superGroupId.equals(user.getsUser_GroupID()) 
				&& config.superGroupId.equals(old.getsUser_GroupID())
				&& !config.superGroupId.equals(value.get("sUser_GroupID")) ) {
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
		if(!config.superGroupId.equals(user.getsUser_GroupID()) && config.defualtUserName.equals(old.getsUser_UserName())) {
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
	
	@TargetDataSource
	public Map<String, Object> authMenu(User user){
		String groupId = user.getsUser_GroupID();
		String userId = user.getsUser_ID();
		//查询所有菜单
		List<Menu> allms = menuService.selectList(MapTools.custom().put("lMenu_StatusFlag", 1).build());
		List<MenuFun> allmfs = menuFunService.selectList(MapTools.custom().put("lMFun_StatusFlag", 1).build());
		Map<String, Object> res = new HashMap<>();
		
		if(config.superGroupId.equals(groupId)) { //超管
			res.put("menus", allms);
			res.put("funs", allmfs);
		}else {
			Map<String, Object> temp = new HashMap<>();
			List<Menu> resms = new ArrayList<>();
			List<MenuFun> resmfs = new ArrayList<>();
			//查询用户组菜单
			List<GroupMenu> gms = groupMenuService.selectList(MapTools.custom().put("sGroupMenu_GroupID", groupId).build());
			for (GroupMenu groupMenu : gms) {
				//菜单
				for (Menu menu : allms) {
					if(groupMenu.getsGroupMenu_MenuID().equals(menu.getsMenu_ID())
							&& temp.get("menu_" + menu.getsMenu_ID()) == null) {
						resms.add(menu);
						temp.put("menu_" + menu.getsMenu_ID(), 1);
					}
				}
				//功能
				for (MenuFun menuFun : allmfs) {
					if((groupMenu.getsGroupMenu_MenuFunID()+",").contains(menuFun.getsMFun_ID()+",")
							&& temp.get("menuFun_" + menuFun.getsMFun_ID()) == null) {
						resmfs.add(menuFun);
						temp.put("menuFun_" + menuFun.getsMFun_ID(), 1);
					}
				}
			}
			//查询用户菜单
			List<UserMenu> ums = userMenuService.selectList(MapTools.custom().put("sUserMenu_UserID", userId).build());
			for (UserMenu userMenu : ums) {
				//菜单
				for (Menu menu : allms) {
					if(userMenu.getsUserMenu_MenuID().equals(menu.getsMenu_ID())
							&& temp.get("menu_" + menu.getsMenu_ID()) == null) {
						resms.add(menu);
						temp.put("menu_" + menu.getsMenu_ID(), 1);
					}
				}
				//功能
				for (MenuFun menuFun : allmfs) {
					if((userMenu.getsUserMenu_MenuFunID()+",").contains(menuFun.getsMFun_ID()+",")
							&& temp.get("menuFun_" + menuFun.getsMFun_ID()) == null) {
						resmfs.add(menuFun);
						temp.put("menuFun_" + menuFun.getsMFun_ID(), 1);
					}
				}
			}
			System.out.println(JsonTools.toJsonString(resms));
			//查询菜单父级
			List<Menu> pms = new ArrayList<>();
			for (Menu menu : resms) {
				pms.addAll(findParent(menu.getsMenu_Parent(), allms));
			}
			//加入菜单父级
			for (Menu menu : pms) {
				if(temp.get("menu_" + menu.getsMenu_ID()) == null) {
					resms.add(menu);
					temp.put("menu_" + menu.getsMenu_ID(), 1);
				}
			}
			//排序
			for (int i = 0; i < resms.size(); i++) {
				for (int j = i; j < resms.size(); j++) {
					if(resms.get(i).getlMenu_Order() > resms.get(j).getlMenu_Order()) {
						Menu t = resms.get(i);
						resms.set(i, resms.get(j));
						resms.set(j, t);
					}
				}
			}
			//结果
			res.put("menus", resms);
			res.put("funs", resmfs);
		}
		
		return res;
	}
	
	private List<Menu> findParent(String pid, List<Menu> all){
		List<Menu> temp = new ArrayList<>();
		for (Menu menu : all) {
			if(menu.getsMenu_ID().equals(pid)){
				temp.add(menu);
				temp.addAll(findParent(menu.getsMenu_Parent(), all));
			}
		}
		return temp;
	}
	
	@TargetDataSource
	public List<Map<String, Object>> aid(String sUser_ID) {
		return baseMapper.aid(sUser_ID);
	}
	
	@TargetDataSource
	public List<Map<String, Object>> aidAll() {
		return baseMapper.aidAll();
	}
	
	@Transactional
	@TargetDataSource
	public int updateAid(String sUser_ID, String aidIds) {
		//删除分配
		userAidService.delete(MapTools.custom().put("sUserAid_UserID", sUser_ID).build(), null);
		//重新分配
		if(Tools.isNullOrEmpty(aidIds)) {
			return 1;
		}
		List<UserAid> list = new ArrayList<>();
		UserAid node = null;
		for (String aidId : aidIds.split(",")) {
			node = new UserAid();
			node.setsUserAid_ID(Utils.newSnowflakeIdStr());
			node.setsUserAid_AidID(aidId);
			node.setsUserAid_UserID(sUser_ID);
			list.add(node);
		}
		if(list.size() == 0) { //空分配
			return 1;
		}
		return userAidService.batchInsert(list, null);
	}
	
	@TargetDataSource
	public List<UserStation> station(String sUser_ID) {
		return baseMapper.station(sUser_ID);
	}
	
	@Transactional
	@TargetDataSource
	public int updateStation(String sUser_ID, String stations) {
		//删除分配
		userStationService.delete(MapTools.custom().put("sUserStation_UserID", sUser_ID).build(), null);
		//重新分配
		if(Tools.isNullOrEmpty(stations)) {
			return 1;
		}
		List<UserStation> list = new ArrayList<>();
		UserStation node = null;
		for (String station : stations.split(",")) {
			node = new UserStation();
			node.setsUserStation_ID(Utils.newSnowflakeIdStr());
			node.setsUserStation_UserID(sUser_ID);
			node.setsUserStation_Station(station);
			list.add(node);
		}
		if(list.size() == 0) { //空分配
			return 1;
		}
		return userStationService.batchInsert(list, null);
	}
	
	@TargetDataSource
	public List<Map<String, Object>> store(String sUser_ID) {
		return baseMapper.store(sUser_ID);
	}
	
	/*@TargetDataSource
	public List<Map<String, Object>> storeAll() {
		return baseMapper.storeAll();
	}*/
	
	@Transactional
	@TargetDataSource
	public int updateStore(String sUser_ID, String storeIds) {
		//删除分配
		userStoreService.delete(MapTools.custom().put("sUserStore_UserID", sUser_ID).build(), null);
		//重新分配
		if(Tools.isNullOrEmpty(storeIds)) {
			return 1;
		}
		List<Map<String, Object>> storeList = JsonTools.jsonToList(storeIds);
		List<UserStore> list = new ArrayList<>();
		UserStore node = null;
		for (Map<String, Object> map : storeList) {
			node = new UserStore();
			node.setsUserStore_ID(Utils.newSnowflakeIdStr());
			node.setsUserStore_UserID(sUser_ID);
			node.setsUserStore_StoreLv1ID((String)map.get("sStore_Level1"));
			node.setsUserStore_StoreLv2ID((String)map.get("sStore_Level2"));
			node.setsUserStore_StoreLv3ID((String)map.get("sStore_Level3"));
			node.setsUserStore_StoreLv4ID((String)map.get("sStore_Level4"));
			list.add(node);
		}
		if(list.size() == 0) { //空分配
			return 1;
		}
		return userStoreService.batchInsert(list, null);
	}

	@TargetDataSource
	public List<Map<String, Object>> export() {
		return baseMapper.export();
	}
	
	
}
