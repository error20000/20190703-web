package com.jian.system.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.entity.Nfc;
import com.jian.system.service.NfcService;

@Controller
@RequestMapping("/api/nfc")
@API(name="NFC管理")
public class NfcController extends BaseController<Nfc, NfcService> {

	

	//TODO -------------------------------------------------------------------------------- 基本方法
	
	@Override
	@PostMapping("/add")
    @ResponseBody
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@PostMapping("/update")
    @ResponseBody
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@PostMapping("/delete")
    @ResponseBody
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@PostMapping("/findPage")
    @ResponseBody
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}
	
	@Override
	@PostMapping("/findAll")
    @ResponseBody
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	//TODO -------------------------------------------------------------------------------- 自定义方法

	
}
