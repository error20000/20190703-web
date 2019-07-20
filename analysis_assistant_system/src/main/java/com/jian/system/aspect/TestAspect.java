package com.jian.system.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.jian.system.annotation.Ttest;

@Aspect
@Component
public class TestAspect {



    @Before("@annotation(test)")
    public void logBefore(JoinPoint joinPoint, Ttest test){
    	System.out.println("------------------------------------------------");
    }


}
