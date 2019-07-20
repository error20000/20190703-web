package com.jian.system.datasource;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DynamicDataSourceContextHolder {
	
	 private static Logger logger = LoggerFactory.getLogger(DynamicDataSourceContextHolder.class);

	private static final ThreadLocal<String> contextHolder = new ThreadLocal<>();
	public static List<String> dataSourceIds = new ArrayList<>();

	public static void setDataSourceType(String dataSourceType) {
		logger.info("切换至{}数据源", dataSourceType);
		contextHolder.set(dataSourceType);
	}

	public static String getDataSourceType() {
		return (String) contextHolder.get();
	}

	public static void clearDataSourceType() {
		contextHolder.remove();
	}

	public static boolean containsDataSource(String dataSourceId) {
		return dataSourceIds.contains(dataSourceId);
	}
}
