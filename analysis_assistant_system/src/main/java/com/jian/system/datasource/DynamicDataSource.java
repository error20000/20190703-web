package com.jian.system.datasource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class DynamicDataSource extends AbstractRoutingDataSource {
	
	protected Object determineCurrentLookupKey() {
		
		return DynamicDataSourceContextHolder.getDataSourceType();
		
	}
}