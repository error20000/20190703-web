package com.jian.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.dao.EquipMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Equip;

@Service
public class EquipService extends BaseService<Equip, EquipMapper> {

	@Autowired
	private NfcService nfcService;
	
	@TargetDataSource
	public String viewBind(HttpServletRequest req) {
		return "";
	}

	@Transactional
	@TargetDataSource
	public int bind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", sNfc_ID);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition);
		return nfcService.bind(sNfc_ID);
	}
	

	@TargetDataSource
	public int rebind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_NfcID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition);
	}
	
	@TargetDataSource
	public List<Equip> unbind() {
		return baseMapper.unbind();
	}

}
