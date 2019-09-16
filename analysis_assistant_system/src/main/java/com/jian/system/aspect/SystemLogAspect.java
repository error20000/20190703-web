package com.jian.system.aspect;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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

import com.jian.system.annotation.SysLog;
import com.jian.system.config.Config;
import com.jian.system.entity.SystemLog;
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
    private SystemLog slog = null;
    private static final Logger logger = LoggerFactory.getLogger(SystemLogAspect.class);
    

    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)")
    public void before(JoinPoint joinPoint, SysLog log){
    	startTime = System.currentTimeMillis();
    }


    @After("execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)")
    public void after(JoinPoint joinPoint, SysLog log){
    	HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    	HttpSession session = request.getSession();
		User user = (User) session.getAttribute(config.login_session_key);
    	//日志
		slog = new SystemLog();
    	slog.setsSLog_ID(Utils.newSnowflakeIdStr());
    	slog.setdSLog_CreateDate(new Date());
    	slog.setsSLog_Type(log.type().getValue());
    	slog.setsSLog_Describe(log.describe());
    	if(user != null) {
    		slog.setsSLog_UserID(user.getsUser_ID());
    		slog.setsSLog_UserNick(user.getsUser_Nick());
    	}
    	slog.setlSLog_TimeConsume((int)(System.currentTimeMillis() - startTime));
    	slog.setsSLog_Uri(request.getRequestURI());
    	slog.setsSLog_Method(joinPoint.getSignature().getName());
    	slog.setsSLog_Module(joinPoint.getTarget().getClass().getName());
    	slog.setsSLog_IP(Tools.getIp(request));
    	
    	//保存
    	switch (log.type()) {
		case Query:
			break;
		case Add:
		case Update:
		case Delete:
		case Export:
			String str = JsonTools.toJsonString(request.getParameterMap());
			str = str.substring(0, str.length() > 255 ? 255 : str.length());
			slog.setsSLog_Request(str);
			logService.insert(slog, user);
			break;
		case Login:
			Map<String, String[]> params = new HashMap<>(request.getParameterMap());
			params.remove("password");
			slog.setsSLog_Request(JsonTools.toJsonString(params));
			logService.insert(slog, user);
			break;
		default:
			logService.insert(slog, user);
			break;
		}

		logger.info("request: "+JsonTools.toJsonString(request.getParameterMap()));
    }

    
    @AfterReturning(pointcut="execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)", returning="obj")
    public void afterReturning(JoinPoint joinPoint, Object obj, SysLog log){
    	switch (log.type()) {
		case Query:
			break;
		case Add:
		case Update:
		case Login:
		case Export:
			String str = String.valueOf(obj);
			slog.setsSLog_Response(str.substring(0, str.length() > 255 ? 255 : str.length()) );
	    	logService.update(slog, null);
			break;
		default:
			logger.info("response: "+String.valueOf(obj));
			break;
		}
    }
    
    @AfterThrowing(pointcut="execution(public * com.jian.system.controller.*.*(..)) && @annotation(log)", throwing="e")
    public void afterThrowing(JoinPoint joinPoint, Exception e, SysLog log){
    	logger.error(e.getMessage());
    	String str = e.getMessage();
    	str = str.substring(0, str.length() > 255 ? 255 : str.length());
    	slog.setsSLog_Exception(str);
    	logService.update(slog, null);
    }
    
}
