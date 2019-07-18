package com.jian.system;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.jian.system.entity.User;
import com.jian.system.service.UserService;

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
	}

	@Test
	public void insert() {
		int res = service.insert("22", "33333", "44444444");
		System.out.println(res);
	}
	
}
