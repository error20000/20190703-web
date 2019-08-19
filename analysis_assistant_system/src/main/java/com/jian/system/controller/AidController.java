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
import com.jian.system.entity.Aid;
import com.jian.system.service.AidService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/aid")
@API(name="航标管理")
public class AidController extends BaseController<Aid, AidService> {

	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增航标")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新航标")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除航标")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询航标")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个航标")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有航标")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	@RequestMapping("/delBind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="航标解除NFC绑定")
	public String delBind(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sNfc_ID = Tools.getReqParamSafe(req, "sNfc_ID");
		String id = Tools.getReqParamSafe(req, "id");
		vMap = Tools.verifyParam("sNfc_ID", sNfc_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("id", id, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.delBind(id, sNfc_ID);
		if(res == 0) {
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/bind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="航标绑定NFC")
	public String bind(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sNfc_ID = Tools.getReqParamSafe(req, "sNfc_ID");
		String id = Tools.getReqParamSafe(req, "id");
		vMap = Tools.verifyParam("sNfc_ID", sNfc_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("id", id, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.bind(id, sNfc_ID);
		if(res == 0) {
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/unbind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询未绑定NFC的航标")
	public String unbind(HttpServletRequest req) {
		List<Aid> list = service.unbind();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	

	@RequestMapping("/user")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标分配的用户")
	public String user(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		vMap = Tools.verifyParam("sAid_ID", sAid_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<Map<String, Object>> list = service.user(sAid_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/updateUser")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新航标分配的用户")
	public String updateUser(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		String user = Tools.getReqParamSafe(req, "user");
		vMap = Tools.verifyParam("sAid_ID", sAid_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updateUser(sAid_ID, user);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/equip")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标的器材")
	public String equip(HttpServletRequest req) {
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		List<Map<String, Object>> res = service.equip(sAid_ID, getLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/map")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标（地图）")
	public String map(HttpServletRequest req) {
		List<Map<String, Object>> list = service.aidMap();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 前端接口


	
	//TODO -------------------------------------------------------------------------------- app接口

	@RequestMapping("/app/findAll")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询所有航标(只有id，名称，编码)")
	public String appFindAll(HttpServletRequest req) {
		
		List<Map<String, Object>> list = service.aidAll();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findPage")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app分页查询航标")
	public String appFindPage(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String page = Tools.getReqParamSafe(req, "page");
		String rows = Tools.getReqParamSafe(req, "rows");
		vMap = Tools.verifyParam("page", page, 0, 0, true);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("rows", rows, 0, 0, true);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int start = Tools.parseInt(page) <= 1 ? 0 : (Tools.parseInt(page) - 1) * Tools.parseInt(rows);
		//参数
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Aid.class);
		
		List<Aid> list = service.selectPage(condition, getAppLoginUser(req), start, Tools.parseInt(rows));
		long total = service.size(condition, getAppLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findOne")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询单个航标")
	public String appFindOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	
	@RequestMapping("/app/search")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app搜索航标")
	public String appSearch(HttpServletRequest req) {
		String keywords = Tools.getReqParamSafe(req, "keywords");
		List<Aid> res = service.search(keywords, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	
	@RequestMapping("/app/equip")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询航标的器材")
	public String appEquip(HttpServletRequest req) {
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		List<Map<String, Object>> res = service.equip(sAid_ID, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	
	@RequestMapping("/app/unusual")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材异常")
	public String appUnusual(HttpServletRequest req) {
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		int res = service.unusual(sAid_ID, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}


	@RequestMapping("/app/map")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询所有航标(地图)")
	public String appMap(HttpServletRequest req) {
		
		List<Map<String, Object>> list = service.aidMap();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
}
