package com.jian.system.utils;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.jian.tools.core.JsonTools;
import com.jian.tools.core.Tools;
import com.jian.tools.core.cache.CacheObject;

@Service
public class RedisCache {
	
	private static Map<String, CacheObject> objMap = new ConcurrentHashMap<String, CacheObject>();
	
	@Autowired
	private RedisTemplate<String, Object> redisTemplate;
	
	
	@PostConstruct
	public void test() {
		System.out.println("=====================RedisCache start===========================");
		System.out.println(redisTemplate);
	}
	
	
	protected void initSetCacheObj(CacheObject obj) {
		if(redisTemplate != null){
			long s = obj.getTimeOut() - obj.getMillis();
			redisTemplate.opsForValue().set(obj.getKey(), JsonTools.toJsonString(obj), s, TimeUnit.MILLISECONDS);
		}else{
			objMap.put(obj.getKey(), obj);
		}
	}
	
	protected CacheObject initGetCacheObj(String key) {
		if(redisTemplate != null){
			CacheObject obj = null;
			String value = (String) redisTemplate.opsForValue().get(key);
			if(!Tools.isNullOrEmpty(value)){
				obj = JsonTools.jsonToObj(value, CacheObject.class);
			}
			return obj;
		}else{
			return objMap.get(key);
		}
	}
	
	protected void initClearCacheObj(String key) {
		if(redisTemplate != null){
			redisTemplate.delete(key);
		}else{
			objMap.remove(key);
		}
	}
	
	
}
