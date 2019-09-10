package com.jian.system.controller;

import java.util.List;

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
import com.jian.system.entity.Dict;
import com.jian.system.service.DictService;
import com.jian.system.service.SystemService;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.system.entity.System;


@Controller
@RequestMapping("/api/sync")
@API(name="通过管理")
public class SyncController extends BaseController<Dict, DictService> {
	
	@Autowired
	private SystemService systemService;


	//TODO -------------------------------------------------------------------------------- 后台管理
	
	
	
	//TODO -------------------------------------------------------------------------------- 前端接口
	
	

	//TODO -------------------------------------------------------------------------------- app接口

	@RequestMapping("/app/system")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询系统配置")
	public String appSystem(HttpServletRequest req) {
		List<System> res = systemService.selectAll();
		 return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
}
