package com.jian.system.aspect;

import javax.servlet.http.HttpServletRequest;

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
import com.jian.system.config.RedisCacheKey;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.TokenUtils;
import com.jian.tools.core.Tips;

@Aspect
@Component
@Order(2)
public class VerifyLoginAspect {


	@Autowired
	public Config config;
	@Autowired
	public RedisCacheKey cacheKey;

    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(login)")
    public void before(JoinPoint joinPoint, VerifyLogin login){
    	HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();

		String tokenStr = TokenUtils.getLoginToken(request);
		User user = TokenUtils.getLoginUser(tokenStr);
    	
		if(user == null) {
    		throw new ServiceException(Tips.ERROR111);
    	}
    	
    }


}
