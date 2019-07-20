package com.jian.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.entity.User;
import com.jian.system.service.UserService;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;


@Controller
@RequestMapping("/api/user")
@API(name="用户管理")
public class UserController {
	
	@Autowired
	private UserService service;

	@ResponseBody
	@RequestMapping("/findAll")
	@API
	public String findAll(HttpServletRequest request) {
		List<User> user = service.selectAll();
		return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, user).toJSONString();
	}

}
