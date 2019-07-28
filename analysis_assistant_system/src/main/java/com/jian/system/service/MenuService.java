package com.jian.system.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.dao.MenuMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.GroupMenu;
import com.jian.system.entity.Menu;
import com.jian.system.entity.MenuFun;
import com.jian.system.entity.UserMenu;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tools;

@Service
public class MenuService extends BaseService<Menu, MenuMapper> {

	@Autowired
	private MenuFunService menuFunService;
	@Autowired
	private GroupMenuService groupMenuService;
	@Autowired
	private UserMenuService userMenuService;
	
	@TargetDataSource
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> menuAuthOptions() {
		
		List<Menu> menus = this.selectAll();
		List<MenuFun> funs = menuFunService.selectAll();
		
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		Map<String, Object> node = null;
		
		Map<String, Object> temp = new HashMap<String, Object>();
		
		for (MenuFun fun : funs) {
			List<MenuFun> list = (List<MenuFun>) temp.get(fun.getsMFun_MenuID());
			if(list == null) {
				list = new ArrayList<>();
			}
			list.add(fun);
			temp.put(fun.getsMFun_MenuID(), list);
		}
		
		for (String key : temp.keySet()) {
			for (Menu menu : menus) {
				if(key.equals(menu.getsMenu_ID())) {
					node = Tools.parseObjectToMap(menu);
					node.put("children", temp.get(key));
					node.put("parent", findParent(menu.getsMenu_Parent(), menus));
					res.add(node);
				}
			}
		}
		
		return res;
	}
	
	@TargetDataSource
	public List<GroupMenu> groupMenuAuth(String sGroup_ID) {
		return groupMenuService.selectList(MapTools.custom().put("sGroupMenu_GroupID", sGroup_ID).build());
	}
	
	@Transactional
	@TargetDataSource
	public int updateGroupMenuAuth(String sGroup_ID, Map<String, Object> params) {
		//删除原权限
		groupMenuService.delete(MapTools.custom().put("sGroupMenu_GroupID", sGroup_ID).build(), null);
		//添加新权限
		List<GroupMenu> list = new ArrayList<>();
		GroupMenu node = null;
		for (String key : params.keySet()) {
			node = new GroupMenu();
			node.setsGroupMenu_ID(Utils.newSnowflakeIdStr());
			node.setsGroupMenu_GroupID(sGroup_ID);
			node.setsGroupMenu_MenuID(key);
			node.setsGroupMenu_MenuFunID(String.valueOf(params.get(key))); 
			list.add(node);
		}
		return groupMenuService.batchInsert(list, null);
	}
	

	@TargetDataSource
	public List<UserMenu> userMenuAuth(String sUser_ID) {
		return userMenuService.selectList(MapTools.custom().put("sUserMenu_UserID", sUser_ID).build());
	}
	
	@Transactional
	@TargetDataSource
	public int updateUserMenuAuth(String sUser_ID, Map<String, Object> params) {
		//删除原权限
		userMenuService.delete(MapTools.custom().put("sUserMenu_UserID", sUser_ID).build(), null);
		//添加新权限
		List<UserMenu> list = new ArrayList<>();
		UserMenu node = null;
		for (String key : params.keySet()) {
			node = new UserMenu();
			node.setsUserMenu_ID(Utils.newSnowflakeIdStr());
			node.setsUserMenu_UserID(sUser_ID);
			node.setsUserMenu_MenuID(key);
			node.setsUserMenu_MenuFunID(String.valueOf(params.get(key))); 
			list.add(node);
		}
		return userMenuService.batchInsert(list, null);
	}
	
	private List<Map<String, Object>> findParent(String pid, List<Menu> all){
		List<Map<String, Object>> temp = new ArrayList<>();
		Map<String, Object> node = null;
		if(Tools.isNullOrEmpty(pid)) {
			return temp;
		}
		for (Menu menu : all) {
			if(pid.equals(menu.getsMenu_ID())){
				node = Tools.parseObjectToMap(menu);
				node.put("parent", findParent(menu.getsMenu_Parent(), all) );
				temp.add(node);
			}
		}
		return temp;
	}

}
