package com.jian.system.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.EquipLogMapper;
import com.jian.system.entity.EquipLog;

@Service
public class EquipLogService extends BaseService<EquipLog, EquipLogMapper> {

	
	
	public List<EquipLog> syncDate(Date syncDate){
		return baseMapper.syncDate(syncDate);
	}
	
	
	public List<Map<String, Object>> history(String sEquip_ID){
		return baseMapper.history(sEquip_ID);
	}

}
