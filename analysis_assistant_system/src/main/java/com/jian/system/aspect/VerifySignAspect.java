package com.jian.system.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.jian.system.annotation.VerifySign;

@Aspect
@Component
@Order(1)
public class VerifySignAspect {



    @Before("execution(public * com.jian.system.controller.*.*(..)) && @annotation(sign)")
    public void before(JoinPoint joinPoint, VerifySign sign){
    	System.out.println("----------------------VerifySign--------------------------");
    }


}
