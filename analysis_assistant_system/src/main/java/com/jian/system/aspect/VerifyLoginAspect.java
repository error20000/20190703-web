package com.jian.system.aspect;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jian.system.annotation.VerifyLogin;
import com.jian.system.config.Config;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.RedisUtils;
import com.jian.tools.core.Tips;

@Aspect
@Component
@Order(2)
public class VerifyLoginAspect {


	@Autowired
	public Config config;

    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(login)")
    public void before(JoinPoint joinPoint, VerifyLogin login){
    	HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    	HttpSession session = request.getSession();
		User user = (User) session.getAttribute(config.login_session_key);
    	if(user == null) {
    		throw new ServiceException(Tips.ERROR111);
    	}
    	
    	RedisUtils.setCacheObj("test", "test");
    	System.out.println(RedisUtils.getCacheObj("test").getValue());
    }


}
