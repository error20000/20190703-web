package com.jian.system.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import com.jian.system.config.Config;
import com.jian.system.config.RedisCacheKey;
import com.jian.system.entity.User;
import com.jian.system.service.UserService;
import com.jian.system.utils.RedisUtils;
import com.jian.system.utils.TokenUtils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;
import com.jian.tools.core.cache.CacheObject;


@Controller
@RequestMapping("/api/user")
@API(name="用户管理")
public class UserController extends BaseController<User, UserService> {

	@Autowired
	private Config config;
	@Autowired
	private RedisCacheKey cacheKey;

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增用户")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新用户")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除用户")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询用户")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个用户")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有用户")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}


	@RequestMapping("/login")
    @ResponseBody
	@SysLog(type=SystemLogType.Login, describe="用户登录")
	public String login(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String username = Tools.getReqParamSafe(req, "username");
		String password = Tools.getReqParamSafe(req, "password");
		vMap = Tools.verifyParam("username", username, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "username").toJSONString();
		}
		vMap = Tools.verifyParam("password", password, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "password").toJSONString();
		}
		
		//检查
		User user = service.selectOne(MapTools.custom().put("sUser_UserName", username).build());
		if(user == null){
			return ResultTools.custom(Tips.ERROR109).toJSONString();
		}
		if(user.getlUser_StatusFlag() == 0){
			return ResultTools.custom(Tips.ERROR107, "账号").toJSONString();
		}
		//时长
		String tkey = cacheKey.userLoginErrorPwdTime + user.getsUser_ID();
		CacheObject tobj = RedisUtils.getCacheObj(tkey);
		if(tobj != null) {
			int m = (int)((tobj.getTimeOut() - System.currentTimeMillis()) / (60 * 1000));
			m = m <= 0 ? 1 : m;
			return ResultTools.custom(Tips.ERROR108).put(ResultKey.MSG, "账号登录失败，请" +m+"分钟后重试。").toJSONString();
		}
		//次数
		if(!user.getsUser_PassWord().equals(Tools.md5(password))){
			//限制错误次数
			int loinTime = config.maxLoginCount - 1;
			String ckey = cacheKey.userLoginErrorPwdCount + user.getsUser_ID();
			CacheObject cobj = RedisUtils.getCacheObj(ckey);
			if(cobj == null){
				RedisUtils.setCacheObj(ckey, loinTime);
			}else{
				loinTime = Integer.parseInt(cobj.getValue()+"");
				loinTime--;
				if(loinTime <= 0){
					//时长限制
					RedisUtils.setCacheObj(tkey, 1, config.maxLoginTime); 
					RedisUtils.clearCacheObj(ckey); //解除禁用
				}else{
					RedisUtils.setCacheObj(ckey, loinTime);
				}
			}
			return ResultTools.custom(Tips.ERROR110).put(ResultKey.DATA, loinTime).toJSONString();
		}
		user.setsUser_PassWord("");
		
		//保存
		String okey = cacheKey.userLoginOnPc + user.getsUser_ID();
		String tokenStr = newToken(user);
		RedisUtils.setCacheObj(okey, JsonTools.toJsonString(user), config.expireTime); 
		
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("token", tokenStr);
		res.put("user", user);
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/logout")
    @ResponseBody
	@SysLog(type=SystemLogType.Other, describe="退出登录")
	public String logout(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}

		String key = cacheKey.userLoginOnPc + TokenUtils.getUserId(tokenStr);
		RedisUtils.clearCacheObj(key);
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}
	

	@RequestMapping("/isLogin")
    @ResponseBody
	@SysLog(type=SystemLogType.Query, describe="检测用户是否已登录")
	public String isLogin(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}
		
		String key = cacheKey.userLoginOnPc + TokenUtils.getUserId(tokenStr);
		CacheObject test = RedisUtils.getCacheObj(key);
		if(test == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, JsonTools.jsonToMap(String.valueOf(test.getValue())) ).toJSONString();
		}
	}
	

	@RequestMapping("/changePWD")
    @ResponseBody
	@VerifyLogin
	@SysLog(type=SystemLogType.Update, describe="修改用户密码")
	public String changePWD(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String oldPwd = Tools.getReqParamSafe(req, "oldPwd");
		String newPwd = Tools.getReqParamSafe(req, "newPwd");
		vMap = Tools.verifyParam("oldPwd", oldPwd, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "oldPwd").toJSONString();
		}
		vMap = Tools.verifyParam("newPwd", newPwd, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "newPwd").toJSONString();
		}
		
		//保存
		int res = service.changePWD(oldPwd, newPwd, getLoginUser(req).getsUser_ID());
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/resetPWD")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="重置用户密码")
	public String resetPWD(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		String sUser_PassWord = Tools.getReqParamSafe(req, "sUser_PassWord");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "sUser_ID").toJSONString();
		}
		vMap = Tools.verifyParam("sUser_PassWord", sUser_PassWord, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "sUser_PassWord").toJSONString();
		}
		
		//保存
		int res = service.resetPWD(sUser_ID, sUser_PassWord);
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/authMenu")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询用户权限")
	public String authMenu(HttpServletRequest req) {
		
		Map<String,Object> res = service.authMenu(getLoginUser(req));
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	@RequestMapping("/aid")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询分配给用户的航标")
	public String aid(HttpServletRequest req) {

		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<Map<String, Object>> list = service.aid(sUser_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/updateAid")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新分配给用户的航标")
	public String updateAid(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		String aid = Tools.getReqParamSafe(req, "aid");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updateAid(sUser_ID, aid);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	private String newToken(User user){
		return newToken(user, config.expireTime);
	}
	
	private String newToken(User user, int expireTime){
		long curTime = System.currentTimeMillis();
		String str = user.getsUser_ID() + "." + curTime + "."  + expireTime;
		String token = Tools.md5(str + config.tokenSecretKey); // userId + time + expire + key
		String tokenStr = token + "." + str;
		return tokenStr;
	}

	//TODO -------------------------------------------------------------------------------- 前端接口
	
	
	//TODO -------------------------------------------------------------------------------- app接口
	
	@RequestMapping("/app/login")
    @ResponseBody
	@SysLog(type=SystemLogType.Login, describe="app用户登录")
	public String appLogin(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String username = Tools.getReqParamSafe(req, "username");
		String password = Tools.getReqParamSafe(req, "password"); // 已md5
		vMap = Tools.verifyParam("username", username, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "username").toJSONString();
		}
		vMap = Tools.verifyParam("password", password, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "password").toJSONString();
		}
		
		//检查
		User user = service.selectOne(MapTools.custom().put("sUser_UserName", username).build());
		if(user == null){
			return ResultTools.custom(Tips.ERROR109).toJSONString();
		}
		if(user.getlUser_StatusFlag() == 0){
			return ResultTools.custom(Tips.ERROR107, "账号").toJSONString();
		}
		//时长
		String tkey = cacheKey.userLoginErrorPwdTime + user.getsUser_ID();
		CacheObject tobj = RedisUtils.getCacheObj(tkey);
		if(tobj != null) {
			int m = (int)((tobj.getTimeOut() - System.currentTimeMillis()) / (60 * 1000));
			m = m <= 0 ? 1 : m;
			return ResultTools.custom(Tips.ERROR108).put(ResultKey.MSG, "账号登录失败，请" +m+"分钟后重试。").toJSONString();
		}
		//次数
		if(!user.getsUser_PassWord().equals(password)){
			//限制错误次数
			int loinTime = config.maxLoginCount - 1;
			String ckey = cacheKey.userLoginErrorPwdCount + user.getsUser_ID();
			CacheObject cobj = RedisUtils.getCacheObj(ckey);
			if(cobj == null){
				RedisUtils.setCacheObj(ckey, loinTime);
			}else{
				loinTime = Integer.parseInt(cobj.getValue()+"");
				loinTime--;
				if(loinTime <= 0){
					//时长限制
					RedisUtils.setCacheObj(tkey, 1, config.maxLoginTime); 
					RedisUtils.clearCacheObj(ckey); //解除禁用
				}else{
					RedisUtils.setCacheObj(ckey, loinTime);
				}
			}
			return ResultTools.custom(Tips.ERROR110).put(ResultKey.DATA, loinTime).toJSONString();
		}
		user.setsUser_PassWord("");
		
		//保存
		int expireTime = 8 * 3600 * 1000;
		String okey = cacheKey.userLoginOnMobile + user.getsUser_ID();
		String tokenStr = newToken(user, expireTime);
		RedisUtils.setCacheObj(okey, JsonTools.toJsonString(user), expireTime); 
		
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("token", tokenStr);
		res.put("user", user);
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/logout")
    @ResponseBody
	@SysLog(type=SystemLogType.Other, describe="app退出登录")
	public String appLogout(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}

		String key = cacheKey.userLoginOnMobile + TokenUtils.getUserId(tokenStr);
		RedisUtils.clearCacheObj(key);
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}
	

	@RequestMapping("/app/isLogin")
    @ResponseBody
	@SysLog(type=SystemLogType.Query, describe="app检测用户是否已登录")
	public String appIsLogin(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}
		
		String key = cacheKey.userLoginOnMobile + TokenUtils.getUserId(tokenStr);
		CacheObject test = RedisUtils.getCacheObj(key);
		if(test == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, JsonTools.jsonToMap(String.valueOf(test.getValue())) ).toJSONString();
		}
	}

	@RequestMapping("/app/aid")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询登录用户的航标")
	public String appAid(HttpServletRequest req) {

		User luser = getAppLoginUser(req);
		if(luser == null){
			return ResultTools.custom(Tips.ERROR111).toJSONString();
		}
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		if(config.superGroupId.equals(luser.getsUser_GroupID())) { //超管
			list = service.aidAll();
		}else {
			list = service.aid(luser.getsUser_ID());
		}
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
}
