package com.jian.system.aspect;

import java.lang.reflect.Method;
import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogsAspect {


    //此处在实际开发中需要注入一个日志服务，模拟加入数据库

    private LogService logService=new LogServiceImpl();

    private  static  final Logger logger = LoggerFactory.getLogger(LogAspect. class);

    private final int LOG_INFO=0;
    private final int LOG_EXPETION=1;


    @Before("@annotation(com.kay.annotation.LogAnnotation)")
    public void logBefore(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
        StringBuilder sb = new StringBuilder();
        if (args!=null) {
            for (Object arg : args) {
                sb.append(JSON.toJSONString(arg));
            }
        }
        try {
            //产生数据库日志
            MyLog log=new MyLog();
            log.setInvokeMethod(getMethodName(joinPoint));
            log.setMethodParams(sb.toString());
            log.setExceptionCode(null);
            log.setExceptionDetail(null);
            log.setType(LOG_INFO);
            log.setInvokeTime(new Date());
            //todo 方法描述
            log.setDescription(getMthodDescription(joinPoint));
            logService.addLogToDB(log);
        } catch (Exception e) {
            logger.error("log dobefore异常");
            logger.error(e.getMessage(),e);
        }

        //控制台记录
        getLogger(joinPoint).info(String.format("start invoke [%s], params = [%s]", new Object[]{getMethodName(joinPoint), sb.toString()}));
    }


    @AfterThrowing(value = "@annotation(com.kay.annotation.LogAnnotation)", throwing = "ex")
    public void logAfterThrowingException(JoinPoint joinPoint,Exception ex){

        Object[] args = joinPoint.getArgs();
        StringBuilder sb = new StringBuilder();
        if (args!=null) {
            for (Object arg : args) {
                sb.append(JSON.toJSONString(arg));
            }
        }
        try {
            MyLog log=new MyLog();
            log.setInvokeMethod(getMethodName(joinPoint));
            log.setMethodParams(sb.toString());
            log.setExceptionCode(ex.getClass().getName());
            log.setExceptionDetail(ex.getMessage());
            log.setType(LOG_EXPETION);
            log.setInvokeTime(new Date());
            log.setDescription(getMthodDescription(joinPoint));
            logService.addLogToDB(log);
        } catch (Exception e) {
           logger.error("log 异常");
           logger.error(e.getMessage(),e);
        }

        getLogger(joinPoint).error(String.format("error occurred when invoking [%s]",new Object[]{ getMethodName(joinPoint)}), ex);

    }

    private Logger getLogger(JoinPoint joinPoint) {
        return LoggerFactory.getLogger(getFullClassName(joinPoint));
    }
    private String getMethodName(JoinPoint joinPoint) {
        return ((MethodSignature) joinPoint.getSignature()).getName();
    }
    private String getFullClassName(JoinPoint joinPoint) {
        return joinPoint.getTarget().getClass().getName();
    }


    /**
     * 获取切面方法注解上的描述
     * @param joinPoint
     * @return
     * @throws Exception
     */
    public  static String getMthodDescription(JoinPoint joinPoint)
            throws Exception {
        String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object[] arguments = joinPoint.getArgs();
        Class targetClass = Class.forName(targetName);
        Method[] methods = targetClass.getMethods();
        String description = "";
        for (Method method : methods) {
            if (method.getName().equals(methodName)) {
                Class[] clazzs = method.getParameterTypes();
                if (clazzs.length == arguments.length) {
                    description = method.getAnnotation(LogAnnotation. class).description();
                    break;
                }
            }
        }
        return description;
    }
}
