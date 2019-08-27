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
import com.jian.system.entity.Equip;
import com.jian.system.entity.EquipLog;
import com.jian.system.service.EquipService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/equip")
@API(name="器材管理")
public class EquipController extends BaseController<Equip, EquipService> {

	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增器材")
	public String add(HttpServletRequest req) {
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		int res = service.insert(obj, getLoginUser(req), Tools.getIp(req));
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
	@SysLog(type=SystemLogType.Update, describe="更新器材")
	public String update(HttpServletRequest req) {
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		//保存
		int res = service.update(obj, getLoginUser(req), Tools.getIp(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除器材")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询器材")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个器材")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有器材")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	@RequestMapping("/delBind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="器材解除NFC绑定")
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
	@SysLog(type=SystemLogType.Update, describe="器材绑定NFC")
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
	@SysLog(type=SystemLogType.Query, describe="查询未绑定NFC的器材")
	public String unbind(HttpServletRequest req) {
		List<Equip> list = service.unbind();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/history")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材历史记录")
	public String history(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		List<EquipLog> list = service.history(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/detail")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材详情")
	public String detail(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		Object res = service.detail(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 统计接口


	@RequestMapping("/distribution")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材区域分布")
	public String distribution(HttpServletRequest req) {
		String used = Tools.getReqParamSafe(req, "used");
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		Map<String, Object> res = service.distribution(sEquip_Type, used);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/status")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材状态")
	public String status(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		List<Map<String, Object>> res = service.status(sEquip_Type, sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/inoutStore")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材出入库")
	public String inoutStore(HttpServletRequest req) {
		String sEquip_StoreLv1 = Tools.getReqParamSafe(req, "sEquip_StoreLv1");
		String sEquip_StoreLv2 = Tools.getReqParamSafe(req, "sEquip_StoreLv2");
		String sEquip_StoreLv3 = Tools.getReqParamSafe(req, "sEquip_StoreLv3");
		String sEquip_StoreLv4 = Tools.getReqParamSafe(req, "sEquip_StoreLv4");
		List<Map<String, Object>> res = service.inoutStore(sEquip_StoreLv1, sEquip_StoreLv2, sEquip_StoreLv3, sEquip_StoreLv4);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brand")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号")
	public String brand(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brand(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brandDump")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号的报废")
	public String brandDump(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brandDump(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brandUnusual")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号的异常")
	public String brandUnusual(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brandUnusual(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brandRepair")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号的维修")
	public String brandRepair(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brandRepair(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/life")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材寿命")
	public String life(HttpServletRequest req) {
		String sEquip_MBrand = Tools.getReqParamSafe(req, "sEquip_MBrand");
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		List<Map<String, Object>> res = service.life(sEquip_MBrand, sEquip_Type);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	@RequestMapping("/brandOption")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有器材品牌")
	public String brandOption(HttpServletRequest req) {
		List<Map<String, Object>> res = service.brandOption();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 前端接口

	
	//TODO -------------------------------------------------------------------------------- app接口


	@RequestMapping("/app/findPage")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app分页查询器材")
	public String appFindPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@RequestMapping("/app/findOne")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询单个器材")
	public String appFindOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@RequestMapping("/app/history")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询器材历史记录")
	public String appHistory(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		List<EquipLog> list = service.history(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	

	@RequestMapping("/app/add")
    @ResponseBody	
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Add, describe="app新增器材")
	public String appAdd(HttpServletRequest req) {
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		int res = service.insert(obj, getAppLoginUser(req), Tools.getIp(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}
	
	@RequestMapping("/app/inStore")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材入库")
	public String appInStore(HttpServletRequest req) {
		String remarks = Tools.getReqParamSafe(req, "remarks");
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		int res = service.inStore(obj, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/outStore")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材出库")
	public String appOutStore(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.outStore(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/remove")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材拆除")
	public String appRemove(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.remove(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/transport")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材运输")
	public String appTransport(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.transport(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/toBeTest")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材待检测中")
	public String appToBeTest(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.toBeTest(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/check")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材检测中")
	public String appCheck(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.check(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/repair")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材维修中")
	public String appRepair(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.repair(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/dump")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材已报废")
	public String appDump(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.dump(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/useToAid")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材使用中")
	public String appUseToAid(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		int res = service.useToAid(sEquip_ID, sAid_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	@RequestMapping("/app/unusual")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材异常")
	public String appUnusual(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.unusual(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	
	@RequestMapping("/app/search")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app搜索器材")
	public String appSearch(HttpServletRequest req) {
		String keywords = Tools.getReqParamSafe(req, "keywords");
		List<Equip> res = service.search(keywords, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
}
