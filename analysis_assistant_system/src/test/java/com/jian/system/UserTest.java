package com.jian.system;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.jian.system.entity.User;
import com.jian.system.service.UserService;
import com.jian.tools.core.MapTools;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = { App.class })
public class UserTest {

	@Autowired
	private UserService service;



	@Test
	public void selectOne() {
		User user = service.selectOne();
		System.out.println(user.getsUser_UserName());
		System.out.println(user.getsUser_PassWord());
		System.out.println(user.getlUser_StatusFlag());
	}

	@Test
	public void insert() {
		User user = new User();
		user.setsUser_ID("3333333");
		user.setsUser_UserName("3333333");
		user.setsUser_PassWord("3333333");
		user.setlUser_StatusFlag(1);
		int res = service.insert(user);
		System.out.println(res);
	}
	
	@Test
	public void selectList() {
		List<User> list = service.selectList(MapTools.custom().put("sUser_ID", "22").put("sUser_UserName", "33333").build());
		for (User user : list) {
			System.out.println(user.getsUser_UserName());
			System.out.println(user.getsUser_PassWord());
			System.out.println(user.getlUser_StatusFlag());
		}
	}
	
}
