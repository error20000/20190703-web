package com.jian.system.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAppAuth;
import com.jian.system.annotation.VerifyAppLogin;
import com.jian.system.annotation.VerifyAppSign;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreType;
import com.jian.system.service.StoreService;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/store")
@API(name="仓库管理")
public class StoreController extends BaseController<Store, StoreService> {

	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增仓库")
	public String add(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String level = Tools.getReqParamSafe(req, "level");
		String name = Tools.getReqParamSafe(req, "name");
		vMap = Tools.verifyParam("level", level, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("name", name, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		StoreType type = Tools.getReqParamsToObject(req, new StoreType());
		Store obj = Tools.getReqParamsToObject(req, new Store());
		int res = service.add(level, name, type, obj, getLoginUser(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新仓库")
	public String update(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String level = Tools.getReqParamSafe(req, "level");
		String name = Tools.getReqParamSafe(req, "name");
		vMap = Tools.verifyParam("level", level, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("name", name, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		StoreType type = Tools.getReqParamsToObject(req, new StoreType());
		Store obj = Tools.getReqParamsToObject(req, new Store());
		int res = service.modify(level, name, type, obj, getLoginUser(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除仓库")
	public String delete(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String level = Tools.getReqParamSafe(req, "level");
		String id = Tools.getReqParamSafe(req, "id");
		vMap = Tools.verifyParam("level", level, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("id", id, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.delete(level, id, getLoginUser(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}


	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单条仓库")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有仓库")
	public String findAll(HttpServletRequest req) {
		List<Map<String, Object>> list = service.storeTree();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@RequestMapping("/findList")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询仓库列表")
	public String findList(HttpServletRequest req) {
		String parent = Tools.getReqParamSafe(req, "parent");
		List<Map<String, Object>> list = service.storeList(parent);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/findType")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询一级仓库")
	public String findType(HttpServletRequest req) {
		List<StoreType> list = service.findType();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	
	//TODO -------------------------------------------------------------------------------- 前端接口


	//TODO -------------------------------------------------------------------------------- app接口
	
	
	@RequestMapping("/app/findList")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询仓库列表")
	public String appFindList(HttpServletRequest req) {
		String parent = Tools.getReqParamSafe(req, "parent");
		List<Map<String, Object>> list = service.storeListApp(parent);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findType")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询一级仓库")
	public String appFindType(HttpServletRequest req) {
		List<StoreType> list = service.findType();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

}
