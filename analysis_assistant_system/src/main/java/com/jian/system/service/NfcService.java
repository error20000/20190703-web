package com.jian.system.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jian.system.dao.NfcMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Nfc;

@Service
public class NfcService extends BaseService<Nfc, NfcMapper> {
	
	@Autowired
	private AidService aidService;
	
	@TargetDataSource
	public String viewBind(HttpServletRequest req) {
		String sNfc_ID = req.getParameter("sNfc_ID");
		return "";
	}
	
	public String bind(HttpServletRequest req) {
		return "";
	}
	
	public String unused(HttpServletRequest req) {
		return "";
	}

}
