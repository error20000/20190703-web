package com.jian.system.controller;

import java.util.Date;
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
import com.jian.system.entity.SystemLog;
import com.jian.system.service.SystemLogService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/systemLog")
@API(name="系统日志管理")
public class SystemLogController extends BaseController<SystemLog, SystemLogService> {


	//TODO -------------------------------------------------------------------------------- 后台管理
	
	/*@Override
	@PostMapping("/add")
	@ResponseBody	
	@VerifyLogin
	@VerifyAuth
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@PostMapping("/update")
	@ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String update(HttpServletRequest req) {
		return super.update(req);
	}
	
	
	@Override
	@PostMapping("/delete")
	@ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}*/

	@Override
	@PostMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询日志")
	public String findPage(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String page = Tools.getReqParamSafe(req, "page");
		String rows = Tools.getReqParamSafe(req, "rows");
		String startDate = Tools.getReqParamSafe(req, "startDate");
		String endDate = Tools.getReqParamSafe(req, "endDate");
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, SystemLog.class);
		
		Date sDate = Tools.isNullOrEmpty(startDate) ? null : new Date(Long.parseLong(startDate));
		Date eDate = Tools.isNullOrEmpty(endDate) ? null : new Date(Long.parseLong(endDate));
		
		List<SystemLog> list = service.selectPageByDate(condition, sDate, eDate, start, Tools.parseInt(rows));
		long total = service.sizeByDate(condition, sDate, eDate);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@PostMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单条日志")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	


	//TODO -------------------------------------------------------------------------------- 前端接口


}
