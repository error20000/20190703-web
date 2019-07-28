package com.jian.system.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.annotation.ParamsInfo;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.config.Config;
import com.jian.system.entity.User;
import com.jian.system.service.UserService;
import com.jian.tools.core.CacheTools;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/user")
@API(name="用户管理")
public class UserController extends BaseController<User, UserService> {

	@Autowired
	private Config config;

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
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
	}

	@Override
	@PostMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
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
		return super.findAll(req);
	}

	
	//TODO -------------------------------------------------------------------------------- 前端接口

	@RequestMapping("/login")
    @ResponseBody
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
		if(!user.getsUser_PassWord().equals(Tools.md5(password))){
			return ResultTools.custom(Tips.ERROR110).toJSONString();
		}
		user.setsUser_PassWord("");
		
		//保存
		HttpSession session = req.getSession();
		session.setAttribute(config.login_session_key, user);
		//CacheTools.setCacheObj("login_user_"+user.getPid(), user);
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, user).toJSONString();
	}
	
	@RequestMapping("/logout")
    @ResponseBody
	public String logout(HttpServletRequest req) {
		//保存
		HttpSession session = req.getSession();
		session.removeAttribute(config.login_session_key);
		
		/*String userId = req.getHeader("userId");
		if(Tools.isNullOrEmpty(userId)) {
			userId = Tools.getReqParamSafe(req, "userId");
		}
		CacheTools.clearCacheObj("login_user_"+userId);*/
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}
	

	@RequestMapping("/isLogin")
    @ResponseBody
	public String isLogin(HttpServletRequest req) {
		//保存
		HttpSession session = req.getSession();
		Object test = session.getAttribute(config.login_session_key);
		
//		String userId = req.getHeader("userId");
//		if(Tools.isNullOrEmpty(userId)) {
//			userId = Tools.getReqParamSafe(req, "userId");
//		}
//		CacheObject test = CacheTools.getCacheObj("login_user_"+userId);
		if(test == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, test).toJSONString();
		}
	}
	

	@PostMapping("/changePWD")
    @ResponseBody
	@VerifyLogin
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

	@PostMapping("/resetPWD")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
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

}
