package com.jian.system.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.dao.EquipMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Equip;
import com.jian.system.entity.User;
import com.jian.tools.core.Tools;

@Service
public class EquipService extends BaseService<Equip, EquipMapper> {

	@Autowired
	private NfcService nfcService;
	
	@Transactional
	@TargetDataSource
	public int delBind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition); //解除绑定
		return nfcService.rebind(sNfc_ID); //修改状态
	}

	@Transactional
	@TargetDataSource
	public int bind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", sNfc_ID);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition); //绑定
		return nfcService.bind(sNfc_ID); //修改状态
	}
	

	@TargetDataSource
	public int rebind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_NfcID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition); //解除绑定
	}
	
	@TargetDataSource
	public List<Equip> unbind() {
		return baseMapper.unbind();
	}


	@Override
	@Transactional
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		condition = condition.isEmpty() ? null : condition;
		String tableName =  getTableName();
		Equip old = baseMapper.selectOne(tableName, condition);
		if(!Tools.isNullOrEmpty(old.getsEquip_NfcID())) {
			nfcService.rebind(old.getsEquip_NfcID()); //修改状态
		}
		return baseMapper.delete(tableName, condition); //删除
	}

}
