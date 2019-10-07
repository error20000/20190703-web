package com.jian.system.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.jian.system.entity.System;
import com.jian.system.listener.EquipListener;
import com.jian.system.listener.StoreListener;
import com.jian.system.service.SystemService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Controller
@RequestMapping("/api/sys")
@API(name="系统设置")
public class SystemController extends BaseController<System, SystemService> {

	@Autowired
	StoreListener storeListener;
	@Autowired
	EquipListener equipListener;

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新系统设置")
	public String update(HttpServletRequest req) {
		String res = super.update(req);

		String update = Tools.getReqParamSafe(req, "update");
		if(!Tools.isNullOrEmpty(update)) {
			storeListener.update();
			equipListener.update();
		}
		
		return res;
	}




	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询系统设置")
	public String findOne(HttpServletRequest req) {
		//参数
		Map<String, Object> condition = Utils.getReqParamsToMap(req, System.class);
		System res = service.selectOne(condition);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	
	//TODO -------------------------------------------------------------------------------- 前端接口
	
	

	//TODO -------------------------------------------------------------------------------- app接口
	
	@RequestMapping("/app/findOne")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询系统设置")
	public String appFindOne(HttpServletRequest req) {
		//参数
		Map<String, Object> condition = Utils.getReqParamsToMap(req, System.class);
		System res = service.selectOne(condition);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}


}
