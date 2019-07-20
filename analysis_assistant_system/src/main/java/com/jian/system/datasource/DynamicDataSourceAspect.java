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
@Order(-10)
@Component
public class DynamicDataSourceAspect {
	
	private Logger logger = LoggerFactory.getLogger(DynamicDataSourceAspect.class);

	@Before("@annotation(ds)")
	public void changeDataSource(JoinPoint point, TargetDataSource ds) throws Throwable {
		String dsId = ds.value();
		if (!DynamicDataSourceContextHolder.containsDataSource(dsId)) {
			logger.info("数据源(" + dsId + ")不存在-" + point.getSignature());
		} else {
			logger.debug("使用数据源(" + dsId + ")-" + point.getSignature());
			DynamicDataSourceContextHolder.setDataSourceType(ds.value());
		}
	}

	@After("@annotation(ds)")
	public void restoreDataSource(JoinPoint point, TargetDataSource ds) {
		logger.debug("恢复数据源 - {} > {}", ds.value(), point.getSignature());
		DynamicDataSourceContextHolder.clearDataSourceType();
	}
}
