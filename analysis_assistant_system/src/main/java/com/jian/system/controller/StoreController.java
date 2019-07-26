package com.jian.system.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
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
	@PostMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
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
	@PostMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
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
	@PostMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
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
	@PostMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@PostMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String findAll(HttpServletRequest req) {
		List<Map<String, Object>> list = service.storeTree();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@PostMapping("/findList")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String findList(HttpServletRequest req) {
		String parent = Tools.getReqParamSafe(req, "parent");
		List<Map<String, Object>> list = service.storeList(parent);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 前端接口


}
