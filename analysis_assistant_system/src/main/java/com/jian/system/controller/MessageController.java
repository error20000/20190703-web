package com.jian.system.controller;

import java.util.Date;
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
import com.jian.system.config.Constant;
import com.jian.system.entity.Message;
import com.jian.system.entity.User;
import com.jian.system.service.MessageService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/msg")
@API(name="消息中心")
public class MessageController extends BaseController<Message, MessageService> {

	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增消息")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新消息")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除消息")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询消息")
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Message.class);
		

		Date sDate = Tools.isNullOrEmpty(startDate) ? null : new Date(Long.parseLong(startDate));
		Date eDate = Tools.isNullOrEmpty(endDate) ? null : new Date(Long.parseLong(endDate));
		
		List<Message> list = service.selectPage(condition, sDate, eDate, getLoginUser(req), start, Tools.parseInt(rows));
		long total = service.size(condition, sDate, eDate, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个消息")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有消息")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	@RequestMapping("/view")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询消息详情")
	public String view(HttpServletRequest req) {
		String sMsg_ID = Tools.getReqParamSafe(req, "sMsg_ID");
		Map<String, Object> res = service.view(sMsg_ID, getLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	//TODO -------------------------------------------------------------------------------- 前端接口


	
	//TODO -------------------------------------------------------------------------------- app接口


	@RequestMapping("/app/findPage")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app分页查询消息")
	public String appFindPage(HttpServletRequest req) {
		
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Message.class);
		

		Date sDate = Tools.isNullOrEmpty(startDate) ? null : new Date(Long.parseLong(startDate));
		Date eDate = Tools.isNullOrEmpty(endDate) ? null : new Date(Long.parseLong(endDate));
		
		List<Message> list = service.selectPage(condition, sDate, eDate, getAppLoginUser(req), start, Tools.parseInt(rows));
		long total = service.size(condition, sDate, eDate, getAppLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findView")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询单个消息")
	public String appFindView(HttpServletRequest req) {
		String sMsg_ID = Tools.getReqParamSafe(req, "sMsg_ID");
		Map<String, Object> res = service.view(sMsg_ID, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/add")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Add, describe="app新增消息")
	public String appAdd(HttpServletRequest req) {
		Message obj = Utils.getReqParamsToObject(req, new Message());
		User loginUser = getAppLoginUser(req);
		//String describe = Tools.getReqParamSafe(req, "describe");

		obj.setsMsg_ID(Utils.newSnowflakeIdStr());
		//obj.setsMsg_Type(Constant.MsgType_4);
		//obj.setsMsg_Title(Constant.MsgType_4_Msg);
		obj.setsMsg_Status(Constant.MsgStatus_3);
		//obj.setsMsg_Describe(describe);
		obj.setlMsg_Level(10);
		obj.setdMsg_CreateDate(new Date());
		obj.setsMsg_FromUserID(loginUser.getsUser_ID());
		obj.setsMsg_ToUserID(loginUser.getsUser_ID());
		
		int res = service.insert(obj, loginUser);
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}
	
	
	@RequestMapping("/app/search")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app搜索消息")
	public String appSearch(HttpServletRequest req) {
		String keywords = Tools.getReqParamSafe(req, "keywords");
		List<Message> res = service.search(keywords, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	
	@RequestMapping("/app/handle")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app处理消息")
	public String appHandle(HttpServletRequest req) {
		String sMsg_ID = Tools.getReqParamSafe(req, "sMsg_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.handle(sMsg_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	
	@RequestMapping("/app/unhandle")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app设为待处理消息")
	public String appUnHandle(HttpServletRequest req) {
		String sMsg_ID = Tools.getReqParamSafe(req, "sMsg_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.unhandle(sMsg_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/read")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app消息已读")
	public String appRead(HttpServletRequest req) {
		String sMsg_ID = Tools.getReqParamSafe(req, "sMsg_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		int res = service.read(sMsg_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}


	@RequestMapping("/app/unReadNum")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询最新消息数量")
	public String appUnReadNum(HttpServletRequest req) {
		int res = service.unReadNum(getAppLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
}
