package com.jian.system.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.dao.NfcMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Aid;
import com.jian.system.entity.Equip;
import com.jian.system.entity.Nfc;
import com.jian.system.entity.User;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class NfcService extends BaseService<Nfc, NfcMapper> {
	
	@Autowired
	private AidService aidService;
	@Autowired
	private EquipService equipService;
	
	@TargetDataSource
	public String viewBind(HttpServletRequest req) {
		String sNfc_ID = req.getParameter("sNfc_ID");
		if(Tools.isNullOrEmpty(sNfc_ID)) {
			return ResultTools.custom(Tips.ERROR206, "sNfc_ID").toJSONString();
		}
		Nfc nfc = this.selectOne(MapTools.custom().put("sNfc_ID", sNfc_ID).build());
		Map<String, Object> res = MapTools.custom().put("nfc", nfc).build();
		Aid aid = aidService.selectOne(MapTools.custom().put("sAid_NfcID", sNfc_ID).build());
		if(aid != null) { //航标
			res.put("aid", aid);
			res.put("type", "aid");
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}
		Equip equip = equipService.selectOne(MapTools.custom().put("sEquip_NfcID", sNfc_ID).build());
		if(equip != null) { //器材
			res.put("equip", equip);
			res.put("type", "equip");
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@TargetDataSource
	public int bind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("lNfc_StatusFlag", 1);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sNfc_ID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition);
	}
	
	@Transactional
	@TargetDataSource
	public int delBind(String sNfc_ID) {
		aidService.rebind(sNfc_ID); //解除绑定
		equipService.rebind(sNfc_ID); //解除绑定
		return rebind(sNfc_ID);
	}

	@TargetDataSource
	public int rebind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("lNfc_StatusFlag", 0);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sNfc_ID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition);
	}

	@TargetDataSource
	public List<Nfc> unbind() {
		return baseMapper.unbind();
	}

	@Override
	@Transactional
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		aidService.rebind(String.valueOf(condition.get("sNfc_ID"))); //解除绑定
		equipService.rebind(String.valueOf(condition.get("sNfc_ID"))); //解除绑定
		return super.delete(condition, user);
	}


	@TargetDataSource
	public Nfc findAndAdd(String sNfc_NO) {
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sNfc_NO", sNfc_NO);
		Nfc test = baseMapper.selectOne(getTableName(), condition);
		if(test == null) {
			Nfc nfc = new Nfc();
			nfc.setsNfc_ID(Utils.newSnowflakeIdStr());
			nfc.setsNfc_NO(sNfc_NO);
			nfc.setsNfc_Name(sNfc_NO);
			nfc.setlNfc_StatusFlag(0);
			nfc.setdNfc_CreateDate(new Date());
			baseMapper.insert(getTableName(), Tools.parseObjectToMap(nfc));
			return nfc;
		}
		if(test.getlNfc_StatusFlag() == 1) {
			return null;
		}
		return test;
	}
	
}
