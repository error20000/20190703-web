package com.jian.system.aspect;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jian.system.annotation.SystemLog;
import com.jian.system.config.Config;
import com.jian.system.entity.User;
import com.jian.system.service.SystemLogService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.Tools;

@Aspect
@Component
@Order(1)
public class SystemLogAspect {

	@Autowired
	private Config config;
	@Autowired
	private SystemLogService logService;
	
    private long startTime = 0;
    private com.jian.system.entity.SystemLog slog = null;
    private static final Logger logger = LoggerFactory.getLogger(SystemLogAspect.class);
    

    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)")
    public void before(JoinPoint joinPoint, SystemLog log){
    	startTime = System.currentTimeMillis();
    }


    @After("execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)")
    public void after(JoinPoint joinPoint, SystemLog log){
    	HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    	HttpSession session = request.getSession();
		User user = (User) session.getAttribute(config.login_session_key);
    	//日志
		slog = new com.jian.system.entity.SystemLog();
    	slog.setsSLog_ID(Utils.newSnowflakeIdStr());
    	slog.setdSLog_CreateDate(new Date());
    	slog.setsSLog_Type(log.type());
    	slog.setsSLog_Describe(log.describe());
    	if(user != null) {
    		slog.setsSLog_UserID(user.getsUser_ID());
    		slog.setsSLog_UserName(user.getsUser_UserName());
    	}
    	slog.setlSLog_TimeConsume((int)(System.currentTimeMillis() - startTime));
    	slog.setsSLog_Uri(request.getRequestURI());
    	slog.setsSLog_Method(joinPoint.getSignature().getName());
    	slog.setsSLog_Module(joinPoint.getTarget().getClass().getName());
    	slog.setsSLog_IP(Tools.getIp(request));
    	logService.insert(slog, user);

		logger.debug("request: "+JsonTools.toJsonString(request.getParameterMap()));
    }

    
    @AfterReturning(pointcut="execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)", returning="obj")
    public void afterReturning(JoinPoint joinPoint, Object obj, SystemLog log){
    	switch (log.type()) {
		case "query":
			break;

		default:
			logger.debug("response: "+JsonTools.toJsonString(obj));
			break;
		}
    }
    
    @AfterThrowing(pointcut="execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)", throwing="e")
    public void afterThrowing(JoinPoint joinPoint, Exception e, SystemLog log){
    	System.out.println(e.getMessage());
    	slog.setsSLog_Exception(e.getMessage());
    	logService.update(slog, null);
    }
    
}
