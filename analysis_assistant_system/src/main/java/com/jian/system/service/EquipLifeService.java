package com.jian.system.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.config.Constant;
import com.jian.system.dao.EquipLifeMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.EquipLife;
import com.jian.system.entity.Message;

@Service
public class EquipLifeService extends BaseService<EquipLife, EquipLifeMapper> {

	

	@TargetDataSource
	public List<Map<String, Object>> checkLife() {
		return baseMapper.checkLife(Constant.EquipStatus_8);
	}
	
	@TargetDataSource
	public List<Map<String, Object>> checkUsed() {
		return baseMapper.checkLife(Constant.EquipStatus_9);
	}
	
	@TargetDataSource
	public List<Message> isCheckedLife(String startDate, String endDate) {
		return baseMapper.isCheckedLife(startDate, endDate);
	}
	
}
