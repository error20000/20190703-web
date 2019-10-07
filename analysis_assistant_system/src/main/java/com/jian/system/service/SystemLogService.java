package com.jian.system.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.SystemLogMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.SystemLog;

@Service
public class SystemLogService extends BaseService<SystemLog, SystemLogMapper> {

	@TargetDataSource
	public List<SystemLog> selectPageByDate(Map<String, Object> condition, Date startDate, Date endDate, int start, int rows) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectPageByDate(tableName, condition, startDate, endDate, start, rows);
	}

	@TargetDataSource
	public long sizeByDate(Map<String, Object> condition, Date startDate, Date endDate) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.sizeByDate(tableName, condition, startDate, endDate);
	}

	@TargetDataSource
	public List<SystemLog> selectByDate(Map<String, Object> condition, Date startDate, Date endDate) {
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectByDate(condition, startDate, endDate);
	}
	
	
}
