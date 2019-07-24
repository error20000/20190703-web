package com.jian.system.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.jian.system.annotation.VerifyLogin;

@Aspect
@Component
@Order(2)
public class VerifyLoginAspect {



    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(login)")
    public void before(JoinPoint joinPoint, VerifyLogin login){
    	System.out.println("----------------------VerifyLogin--------------------------");
    }


}
