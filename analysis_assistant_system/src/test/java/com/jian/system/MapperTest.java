package com.jian.system;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.jian.system.entity.Aid;
import com.jian.system.entity.User;
import com.jian.system.service.AidService;

@RunWith(SpringRunner.class)   
@SpringBootTest(classes={App.class})
public class MapperTest {
    
	@Autowired
	private AidService service;
	
	@Test
	public void test0(){
		List<Aid> res = service.selectAll();
		System.out.println("------test0------"+res.size());
	}

	@Test
	public void test1(){
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sAid_Name", "1");
		condition.put("sAid_Station", "test2");
		User user = new User();
		user.setsUser_ID("606138587578105856");
		List<Aid> res = service.selectPage(condition, user, 0, 10);
		System.out.println("------test1------"+res.size());
	}

	@Test
	public void test2(){
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sAid_Name", "1");
		condition.put("sAid_Station", "test2");
		User user = new User();
		user.setsUser_ID("606138587578105856");
		long res = service.size(condition, user);
		System.out.println("------test2------"+res);
	}
}
