package com.jian.system.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.jian.system.annotation.VerifyAuth;

@Aspect
@Component
@Order(3)
public class VerifyAuthAspect {



    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(auth)")
    public void before(JoinPoint joinPoint, VerifyAuth auth){
    	System.out.println("----------------------VerifyAuth--------------------------");
    }


}
