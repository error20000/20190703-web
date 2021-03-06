package com.jian.system.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.StoreTypeMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.StoreType;

@Service
public class StoreTypeService extends BaseService<StoreType, StoreTypeMapper> {

	
	@TargetDataSource
	public List<Map<String, Object>> storeMap(String sUser_ID) {
		return baseMapper.storeMap(sUser_ID);
	}
	
	@TargetDataSource
	public List<StoreType> selectAllByUser(String sUser_ID) {
		return baseMapper.selectAllByUser(sUser_ID);
	}
	

}
