package com.jian.system.utils;


import java.util.Base64;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jian.system.config.Config;
import com.jian.tools.core.Tools;


@Component
public class TokenUtils {
	
	public static Config config = null;
	
	@Autowired
	public void setConfig(Config config){
		TokenUtils.config = config;
	}
	
	public static String getLoginToken(){
		HttpServletRequest req =  ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return getLoginToken(req);
	}

	public static String getLoginToken(HttpServletRequest req){
		//读取cookie
		String tokenStr = "";
		Cookie[] cookies = req.getCookies();
		if(cookies != null){
			for (int i = 0; i < cookies.length; i++) {
				Cookie tmp = cookies[i];
				if("token".equals(tmp.getName())){
					tokenStr = tmp.getValue();
					break;
				}
			}
		}
		//Authorization
		if(Tools.isNullOrEmpty(tokenStr)){
			tokenStr = Tools.isNullOrEmpty(req.getHeader("Authorization")) ? "" : Base64.getDecoder().decode(req.getHeader("Authorization").replace("Basic ", "")).toString();
		}
		//header parameter
		if(Tools.isNullOrEmpty(tokenStr)){
			tokenStr = Tools.isNullOrEmpty(req.getHeader("token")) ? Tools.getReqParamSafe(req, "token") : req.getHeader("token");
		}
		return tokenStr;
	}
	
	public static boolean checkLoginToken(String tokenStr){
		String token = getToken(tokenStr);
		String userId = getUserId(tokenStr);
		long time = getTokenTime(tokenStr);
		long expire = getTokenExpire(tokenStr);
		String str = userId + "." + time + "."  + expire;
		return token.equals(Tools.md5(str + config.tokenSecretKey));
	}
	
	public static String getToken(String tokenStr){
		String token = "";
		if(tokenStr.split("[.]").length >= 1){
			token = tokenStr.split("[.]")[0];
		}
		return token;
	}
	
	public static String getUserId(String tokenStr){
		String userId = "";
		if(tokenStr.split("[.]").length >= 2){
			userId = tokenStr.split("[.]")[1];
		}
		return userId;
	}
	
	public static long getTokenTime(String tokenStr){
		long time = 0;
		if(tokenStr.split("[.]").length >= 3){
			time = Long.parseLong(tokenStr.split("[.]")[2]);
		}
		return time;
	}
	
	public static long getTokenExpire(String tokenStr){
		long expire = 0;
		if(tokenStr.split("[.]").length >= 4){
			expire = Long.parseLong(tokenStr.split("[.]")[3]);
		}
		return expire;
	}
	
	
	
}