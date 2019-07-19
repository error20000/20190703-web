package com.jian.system.datasource;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Aspect
@Order(-1)
@Component
public class DynamicDataSourceAspect {
	private Logger logger = LoggerFactory.getLogger(DynamicDataSourceAspect.class);

	@Before("@annotation(targetDataSource)")
	public void changeDataSource(JoinPoint point, TargetDataSource targetDataSource) throws Throwable {
		String dsId = targetDataSource.value();
		if (!DynamicDataSourceContextHolder.containsDataSource(dsId)) {
			logger.info("数据源(" + dsId + ")不存在-" + point.getSignature());
		} else {
			logger.info("使用数据源(" + dsId + ")-" + point.getSignature());
			DynamicDataSourceContextHolder.setDataSourceType(targetDataSource.value());
		}
	}

	@After("@annotation(targetDataSource)")
	public void restoreDataSource(JoinPoint point, TargetDataSource targetDataSource) {
		logger.info("恢复数据源-" + point.getSignature());
		DynamicDataSourceContextHolder.clearDataSourceType();
	}
}
