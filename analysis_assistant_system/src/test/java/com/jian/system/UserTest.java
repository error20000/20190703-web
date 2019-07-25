package com.jian.system;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	public void insert() {
		User user = new User();
		user.setsUser_ID("3333333");
		user.setsUser_UserName("3333333");
		user.setsUser_PassWord("3333333");
		user.setlUser_StatusFlag(1);
		int res = service.insert(user, null);
		System.out.println(res);
	}

	@Test
	public void batchInsert() {
		List<User> list = new ArrayList<User>();
		User user = new User();
		user.setsUser_ID("444442");
		user.setsUser_UserName("444442");
		user.setsUser_PassWord("444442");
		user.setlUser_StatusFlag(1);
		list.add(user);
		user = new User();
		user.setsUser_ID("555552");
		user.setsUser_UserName("555552");
		user.setsUser_PassWord("555552");
		user.setlUser_StatusFlag(1);
		list.add(user);
		int res = service.batchInsert(list, null);
		System.out.println(res);
	}
	
	@Test
	public void delete() {
		int res = service.delete(MapTools.custom().put("sUser_UserName", "3333333").build(), null);
		System.out.println(res);
	}

	@Test
	public void update() {
		User user = new User();
		user.setsUser_ID("3333333");
		user.setsUser_UserName("333333344");
		user.setsUser_PassWord("333333344");
		user.setlUser_StatusFlag(0);
		int res = service.update(user, null);
		System.out.println(res);
	}
	
	@Test
	public void update2() {
		User user = new User();
		user.setsUser_ID("3333333");
		user.setsUser_UserName("333333344");
		user.setsUser_PassWord("333333344");
		user.setlUser_StatusFlag(0);
		int res = service.update(MapTools.custom().put("sUser_ID", "333333344").build(), MapTools.custom().put("sUser_UserName", "333333344").build(), null);
		System.out.println(res);
	}
	
	@Test
	public void selectOne() {
		User user = service.selectOne(MapTools.custom().put("sUser_UserName", "33333").build());

		System.out.println(user.getsUser_UserName());
		System.out.println(user.getsUser_PassWord());
		System.out.println(user.getlUser_StatusFlag());
	}
	
	@Test
	public void selectOneMap() {
		List<String> columns = new ArrayList<String>();
		columns.add("sUser_UserName");
		Map<String, Object> user = service.selectOneMap(columns, MapTools.custom().put("sUser_UserName", "33333").build());

		System.out.println(user.get("sUser_UserName"));
	}
	
	@Test
	public void selectAll() {
		List<User> list = service.selectAll();
		for (User user : list) {
			System.out.println(user.getsUser_UserName());
			System.out.println(user.getsUser_PassWord());
			System.out.println(user.getlUser_StatusFlag());
		}
	}
	
	@Test
	public void selectList() {
		List<User> list = service.selectList(MapTools.custom().put("sUser_UserName", "33333").build());
		for (User user : list) {
			System.out.println(user.getsUser_UserName());
			System.out.println(user.getsUser_PassWord());
			System.out.println(user.getlUser_StatusFlag());
		}
	}
	
	@Test
	public void selectList2() {
		List<User> list = service.selectList(null);
		for (User user : list) {
			System.out.println(user.getsUser_UserName());
			System.out.println(user.getsUser_PassWord());
			System.out.println(user.getlUser_StatusFlag());
		}
	}
	
	@Test
	public void selectListMap() {
		List<String> columns = new ArrayList<String>();
		columns.add("sUser_UserName");
		List<Map<String, Object>> list = service.selectListMap(columns, MapTools.custom().put("sUser_UserName", "33333").build());
		for (Map<String, Object> user : list) {
			System.out.println(user.get("sUser_UserName"));
		}
	}
	
	@Test
	public void size() {
		long list = service.size(MapTools.custom().put("sUser_UserName", "33333").build());
		System.out.println("size --> " + list);
	}
	
	@Test
	public void sizeAll() {
		long list = service.sizeAll();
		System.out.println("size all --> " + list);
	}

	@Test
	public void selectPage() {
		List<User> list = service.selectPage(MapTools.custom().put("sUser_UserName", "33333").build(), 0, 10);
		for (User user : list) {
			System.out.println(user.getsUser_UserName());
			System.out.println(user.getsUser_PassWord());
			System.out.println(user.getlUser_StatusFlag());
		}
	}
}
