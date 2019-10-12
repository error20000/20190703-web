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
import com.jian.system.entity.AppMenu;
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
	@Autowired
	private AppMenuService appMenuService;
	
	@TargetDataSource
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> menuAuthOptions() {
		
		List<Menu> menus = this.selectAll();
		List<MenuFun> funs = menuFunService.selectAll();
		
		List<Map<String, Object>> res = new ArrayList<Map<String,Object>>();
		Map<String, Object> node = null;
		
		Map<String, Object> temp = new HashMap<String, Object>();

		//排序
		for (int i = 0; i < funs.size(); i++) {
			for (int j = i; j < funs.size(); j++) {
				if(funs.get(i).getsMFun_ID().compareTo(funs.get(j).getsMFun_ID()) > 0 ) {
					MenuFun tempMenuFun = funs.get(i);
					funs.set(i, funs.get(j));
					funs.set(j, tempMenuFun);
				}
			}
		}
		
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
		
		//排序
		for (int i = 0; i < res.size(); i++) {
			for (int j = i; j < res.size(); j++) {
				if(Tools.parseInt(res.get(i).get("lMenu_Order")) > Tools.parseInt(res.get(j).get("lMenu_Order"))) {
					Map<String, Object> t = res.get(i);
					res.set(i, res.get(j));
					res.set(j, t);
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
			if(Tools.isNullOrEmpty(params.get(key))) {
				continue;
			}
			node = new GroupMenu();
			node.setsGroupMenu_ID(Utils.newSnowflakeIdStr());
			node.setsGroupMenu_GroupID(sGroup_ID);
			node.setsGroupMenu_MenuID(key);
			node.setsGroupMenu_MenuFunID(String.valueOf(params.get(key))); 
			list.add(node);
		}
		if(list.size() == 0) { //空权限
			return 1;
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
			if(Tools.isNullOrEmpty(params.get(key))) {
				continue;
			}
			node = new UserMenu();
			node.setsUserMenu_ID(Utils.newSnowflakeIdStr());
			node.setsUserMenu_UserID(sUser_ID);
			node.setsUserMenu_MenuID(key);
			node.setsUserMenu_MenuFunID(String.valueOf(params.get(key))); 
			list.add(node);
		}
		if(list.size() == 0) { //空权限
			return 1;
		}
		return userMenuService.batchInsert(list, null);
	}
	

	
	@TargetDataSource
	public List<AppMenu> appMenuAuth(String sApp_ID) {
		return appMenuService.selectList(MapTools.custom().put("sAppMenu_AppID", sApp_ID).build());
	}
	
	@Transactional
	@TargetDataSource
	public int updateAppMenuAuth(String sApp_ID, Map<String, Object> params) {
		//删除原权限
		appMenuService.delete(MapTools.custom().put("sAppMenu_AppID", sApp_ID).build(), null);
		//添加新权限
		List<AppMenu> list = new ArrayList<>();
		AppMenu node = null;
		for (String key : params.keySet()) {
			if(Tools.isNullOrEmpty(params.get(key))) {
				continue;
			}
			node = new AppMenu();
			node.setsAppMenu_ID(Utils.newSnowflakeIdStr());
			node.setsAppMenu_AppID(sApp_ID);
			node.setsAppMenu_MenuID(key);
			node.setsAppMenu_MenuFunID(String.valueOf(params.get(key))); 
			list.add(node);
		}
		if(list.size() == 0) { //空权限
			return 1;
		}
		return appMenuService.batchInsert(list, null);
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
