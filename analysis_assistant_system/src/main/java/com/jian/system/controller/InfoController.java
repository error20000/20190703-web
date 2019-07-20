package com.digisky.site.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.digisky.site.config.Config;
import com.digisky.site.entity.Info;
import com.digisky.site.entity.SmsLogs;
import com.digisky.site.service.InfoService;
import com.digisky.site.service.SmsLogsService;
import com.digisky.site.util.AccountUtils;
import com.digisky.site.util.SMSTools;
import com.jian.annotation.API;
import com.jian.annotation.APIType;
import com.jian.tools.core.CacheTools;
import com.jian.tools.core.CallBack;
import com.jian.tools.core.DateTools;
import com.jian.tools.core.HttpTools;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;
import com.jian.tools.core.cache.CacheObject;

//@Controller
//@RequestMapping("/api/info")
@API(name="活动")
public class InfoController extends BaseController<Info> {

	@Autowired
	private InfoService service;
	@Autowired
	private Config config;
	@Autowired
	private SmsLogsService slService;
	
	private static ExecutorService pool = new ThreadPoolExecutor(20, 20, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue<Runnable>(100));
	
	private final String SMS_VCODE_PREFIX = "vcode_"; //短信码
	private final String SMS_VCODE_TIME_PREFIX = "vcode_time_";//发送时间间隔
	private final String SMS_VCODE_ERROR_PREFIX = "vcode_error_";//限制错误次数
	
	@Override
	public void initService() {
		super.service = service;
	}
	
	//TODO 基本方法
	
	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * page	是	int	页码，从1开始。
	 * rows	是	int	每页条数。
	 * pid	否	int	自增主键
	 * roleId	否	String	角色uid
	 * roleName	否	String	角色名称
	 * phone	否	String	手机号
	 * date	否	String	日期
	 * info	否	String	大数据信息
	 * md5	否	String	md5值
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"total": 0,
	 * 	"data": [{
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	},...]
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * total	总条数
	 * data	数据集。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@API(name="分页查询", info="需登录认证")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * pid	否	int	自增主键
	 * roleId	否	String	角色uid
	 * roleName	否	String	角色名称
	 * phone	否	String	手机号
	 * date	否	String	日期
	 * info	否	String	大数据信息
	 * md5	否	String	md5值
	 * </pre>
	 * <b style="color:#004b91;">注意：</b>以上参数不可同时为空。
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@API(name="查询一个", info="需登录认证")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}

	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * pid	否	int	自增主键
	 * roleId	否	String	角色uid
	 * roleName	否	String	角色名称
	 * phone	否	String	手机号
	 * date	否	String	日期
	 * info	否	String	大数据信息
	 * md5	否	String	md5值
	 * </pre>
	 * <b style="color:#004b91;">注意：</b>以上参数不可同时为空。
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": [{
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	},...]
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@Override
	@RequestMapping("/findList")
    @ResponseBody
	@API(name="查询多个", info="需登录认证")
	public String findList(HttpServletRequest req) {
		return super.findList(req);
	}
	
	
	@Override
	@RequestMapping("/excel")
    @ResponseBody
	@API(name="导出CSV", info="需登录认证")
	public String excelFree(HttpServletRequest req, HttpServletResponse resp) {
		return super.excelFree(req, resp);
	}
	
	//TODO 自定义方法

	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * roleId	是	String	角色uid
	 * roleName	是	String	角色名称
	 * phone	是	String	手机号
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"total": "",
	 * 	"data": {
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * total	已用次数。
	 * data	数据集。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@RequestMapping("/check")
    @ResponseBody
	@API(name="检查用户", info="如果data有值，表示用户已查询过。如果total有值，表示用户查询次数已用完。如果都没，表示新查询。", type=APIType.UI)
	public String check(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String roleId = Tools.getReqParamSafe(req, "roleId");
		String roleName = Tools.getReqParamSafe(req, "roleName");
		String phone = Tools.getReqParamSafe(req, "phone");
		vMap = Tools.verifyParam("roleId", roleId, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("roleName", roleName, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("phone", phone, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		Info test = service.findOne(MapTools.custom().put("roleId", roleId).put("roleName", roleName).put("phone", phone).build());
		if(test != null){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, test).toJSONString();
		}
		long count = service.size(MapTools.custom().put("phone", phone).build());
		if(count >= 3){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, count).toJSONString();
		}
        return ResultTools.custom(Tips.ERROR1).toJSONString();
	}

	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * phone	是	String	手机号
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"total": "",
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * total	已用次数。
	 * </pre>
	 */
	@RequestMapping("/times")
    @ResponseBody
	@API(name="查询手机号已使用次数", info="", type=APIType.UI)
	public String times(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String phone = Tools.getReqParamSafe(req, "phone");
		vMap = Tools.verifyParam("phone", phone, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		long count = service.size(MapTools.custom().put("phone", phone).build());
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, count).toJSONString();
	}


	/**
	 * 
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {},
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * </pre>
	 */
	@RequestMapping("/tcode")
    @ResponseBody
	@API(name="获取图形验证码", info="", type=APIType.UI)
	public String tcode(HttpServletRequest req) {

		//账号信息
		String accountUrl = config.account_url+"/api/captcha/create";
		String accountData = MapTools.custom()
				.put("app_id", config.tcode_appId)
				.put("secretKey", config.tcode_secretKey)
				.put("userIp", Tools.getIp(req))
				.toJSONString();
		String account = AccountUtils.post(accountUrl, accountData);
		Map<String, Object> res = JsonTools.jsonToMap(account);
		
		if("1".equals(res.get("result")+"")){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res.get("data")).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}


	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * phone	是	String	手机号
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {},
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * </pre>
	 */
	@RequestMapping("/vcode")
    @ResponseBody
	@API(name="获取短信验证码", info="", type=APIType.UI)
	public String vcode(HttpServletRequest req) {

		Map<String, Object> vMap = null;
		
		//参数
		String phone = Tools.getReqParamSafe(req, "phone");
		String ticket = Tools.getReqParamSafe(req, "ticket");
		vMap = Tools.verifyParam("phone", phone, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("ticket", ticket, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}

		//图形验证码验证
		String accountUrl = config.account_url+"/api/captcha/check";
		String accountData = MapTools.custom()
				.put("app_id", config.tcode_appId)
				.put("secretKey", config.tcode_secretKey)
				.put("ticket", ticket)
				.put("userIp", Tools.getIp(req))
				.toJSONString();
		String account = AccountUtils.post(accountUrl, accountData);
		try {
			Map<String, Object> res = JsonTools.jsonToMap(account);
			
			if(!"1".equals(res.get("result")+"")){
				return ResultTools.custom(Tips.ERROR203, "图形码").put(ResultKey.DATA, account).toJSONString();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return ResultTools.custom(Tips.ERROR203, "图形码").put(ResultKey.DATA, account).toJSONString();
		}
		
		
		//发送时间间隔，60s一次
		String timekey = SMS_VCODE_TIME_PREFIX + phone;
		CacheObject time = CacheTools.getCacheObj(timekey, 60*1000);
		if(time != null){
			return ResultTools.custom(Tips.ERROR308).toJSONString();
		}
		
		String vcode = Tools.createVCodeNumber(6);
		String key = SMS_VCODE_PREFIX + phone;
		CacheTools.setCacheObj(key, vcode, 5*60*1000); //短信码有效期5分钟
		//发送短信
		sendSMS(phone, config.sms_templateId, vcode, new SmsLogs(), null);
		CacheTools.setCacheObj(timekey, vcode);
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}
	
	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * roleId	是	String	角色uid
	 * roleName	是	String	角色名称
	 * phone	是	String	手机号
	 * vcode	是	String	短信验证码
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@RequestMapping("/save")
    @ResponseBody
	@API(name="保存查询数据", info="", type=APIType.UI)
	public String save(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String roleId = Tools.getReqParamSafe(req, "roleId");
		String roleName = Tools.getReqParamSafe(req, "roleName");
		String phone = Tools.getReqParamSafe(req, "phone");
		String vcode = Tools.getReqParamSafe(req, "vcode");
		vMap = Tools.verifyParam("roleId", roleId, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("roleName", roleName, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("phone", phone, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("vcode", vcode, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}

		//验证短信码
		vMap = Tools.verifyParam("vcode", vcode, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "vcode").toJSONString();
		}
		
		String key = SMS_VCODE_PREFIX + phone;
		CacheObject cobj = CacheTools.getCacheObj(key);
		if(cobj == null){
			return ResultTools.custom(Tips.ERROR208).toJSONString();
		}
		//限制错误次数，5次
		String ckey = SMS_VCODE_ERROR_PREFIX + phone;
		if(!vcode.equals(cobj.getValue())){
			CacheObject cobj2 = CacheTools.getCacheObj(ckey);
			if(cobj2 == null){
				CacheTools.setCacheObj(ckey, 5 - 1);
			}else{
				int time = Tools.parseInt(cobj.getValue()+"");
				time--;
				if(time <= 0){
					CacheTools.clearCacheObj(key);
					CacheTools.clearCacheObj(ckey); //解除禁用
				}else{
					CacheTools.setCacheObj(ckey, time);
				}
			}
			return ResultTools.custom(Tips.ERROR205).toJSONString();
		}
		CacheTools.clearCacheObj(key);
		CacheTools.clearCacheObj(ckey); //解除禁用
		
		//查询大数据
		String binfo = getBigInfo(roleId, roleName);
		if(Tools.isNullOrEmpty(binfo)){
			return ResultTools.custom(Tips.ERROR103, "没有查询到数据。").toJSONString();
		}
		//保存
		Info info = new Info();
		info.setRoleId(roleId);
		info.setRoleName(roleName);
		info.setPhone(phone);
		info.setDate(DateTools.formatDate());
		info.setInfo(binfo);
		info.setMd5(Tools.md5(roleId+roleName+phone));
		int res = service.add(info);
		if(res > 0){
			info.setPid(res);
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, info).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}
	
	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * md5	是	String	info的md5值
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@RequestMapping("/md5")
    @ResponseBody
	@API(name="根据md5值查询数据", info="", type=APIType.UI)
	public String md5(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String md5 = Tools.getReqParamSafe(req, "md5");
		vMap = Tools.verifyParam("md5", md5, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		//查询
		Info info = service.findOne(MapTools.custom().put("md5", md5).build());
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, info).toJSONString();
	}
	
	/**
	 * 
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * roleId	是	String	角色uid
	 * roleName	是	String	角色名称
	 * phone	是	String	手机号
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"pid":"",
	 * 		"roleId":"",
	 * 		"roleName":"",
	 * 		"phone":"",
	 * 		"date":"",
	 * 		"info":"",
	 * 		"md5":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * pid	自增主键
	 * roleId	角色uid
	 * roleName	角色名称
	 * phone	手机号
	 * date	日期
	 * info	大数据信息
	 * md5	md5值
	 * </pre>
	 */
	@RequestMapping("/unique")
    @ResponseBody
	@API(name="根据条件查询数据", info="", type=APIType.UI)
	public String unique(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String roleId = Tools.getReqParamSafe(req, "roleId");
		String roleName = Tools.getReqParamSafe(req, "roleName");
		String phone = Tools.getReqParamSafe(req, "phone");
		vMap = Tools.verifyParam("roleId", roleId, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("roleName", roleName, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("phone", phone, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		//查询
		Info info = service.findOne(MapTools.custom().put("roleId", roleId).put("roleName", roleName).put("phone", phone).build());
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, info).toJSONString();
	}
	
	private void sendSMS(final String phone, final String templateId, final String vcode, SmsLogs log, final CallBack callBack){
		
		pool.execute(new Runnable() {
			
			@Override
			public void run() {
				try {
					//短信工具
					List<String> param = new ArrayList<>();
					if(!Tools.isNullOrEmpty(vcode)){
						param.add(vcode);
					}
					String res = SMSTools.send(phone, templateId, param);
					if("success".equals(res) && callBack != null){
						callBack.execute(res);
					}
					//日志
					log.setDate(DateTools.formatDate());
					log.setPhone(phone);
					log.setVcode(vcode);
					log.setRes(res);
					slService.add(log);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	private String getBigInfo(String roleId, String roleName){
		
		String res = HttpTools.getInstance().sendHttpPost(config.bigdata_url+"/ext/h5Query", 
				MapTools.custom().put("character_id", roleId).put("server_id", roleName).build());
		String info = "";
		try {
			Map<String, Object> map = JsonTools.jsonToMap(res);
			if(Tools.parseInt(map.get("status")) == 0){
				info = JsonTools.toJsonString(map.get("data"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return info;
	}
	
}
