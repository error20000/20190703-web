package com.jian.system.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.entity.AppMenu;
import com.jian.system.entity.GroupMenu;
import com.jian.system.entity.Menu;
import com.jian.system.entity.UserMenu;
import com.jian.system.service.MenuService;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/menu")
@API(name="菜单管理")
public class MenuController extends BaseController<Menu, MenuService> {


	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@PostMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增菜单")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@PostMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新菜单")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@PostMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除菜单")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@PostMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询菜单")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@PostMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个菜单")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@PostMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有菜单")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}


	@PostMapping("/menuAuthOptions")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询权限菜单选项")
	public String menuAuthOptions(HttpServletRequest req) {
		List<Map<String, Object>> res = service.menuAuthOptions();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@PostMapping("/groupMenuAuth")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询用户组菜单权限")
	public String groupMenuAuth(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sGroup_ID = Tools.getReqParamSafe(req, "sGroup_ID");
		vMap = Tools.verifyParam("sGroup_ID", sGroup_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<GroupMenu> res = service.groupMenuAuth(sGroup_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@PostMapping("/updateGroupMenuAuth")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新用户组菜单权限")
	public String updateGroupMenuAuth(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sGroup_ID = Tools.getReqParamSafe(req, "sGroup_ID");
		vMap = Tools.verifyParam("sGroup_ID", sGroup_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		Map<String, Object> params =Tools.getReqParamsToMap(req);
		params.remove("sGroup_ID");
		int res = service.updateGroupMenuAuth(sGroup_ID, params);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	@PostMapping("/userMenuAuth")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询用户菜单权限")
	public String userMenuAuth(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<UserMenu> res = service.userMenuAuth(sUser_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@PostMapping("/updateUserMenuAuth")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新用户菜单权限")
	public String updateUserMenuAuth(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		Map<String, Object> params =Tools.getReqParamsToMap(req);
		params.remove("sUser_ID");
		int res = service.updateUserMenuAuth(sUser_ID, params);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	


	@PostMapping("/appMenuAuth")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询应用菜单权限")
	public String appMenuAuth(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sApp_ID = Tools.getReqParamSafe(req, "sApp_ID");
		vMap = Tools.verifyParam("sApp_ID", sApp_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<AppMenu> res = service.appMenuAuth(sApp_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@PostMapping("/updateAppMenuAuth")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新应用菜单权限")
	public String updateAppMenuAuth(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sApp_ID = Tools.getReqParamSafe(req, "sApp_ID");
		vMap = Tools.verifyParam("sApp_ID", sApp_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		Map<String, Object> params =Tools.getReqParamsToMap(req);
		params.remove("sApp_ID");
		int res = service.updateAppMenuAuth(sApp_ID, params);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 前端接口


}
