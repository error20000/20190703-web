package com.jian.system.utils;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;

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
	private RedisTemplate<String, Object> jedis;
	
	public RedisCache(){
		System.out.println("=====================RedisCache start===========================");
		System.out.println(jedis);
	}
	
	
	protected void initSetCacheObj(CacheObject obj) {
		if(jedis != null){
			long s = obj.getTimeOut() - obj.getMillis();
			jedis.opsForValue().set(obj.getKey(), JsonTools.toJsonString(obj), s, TimeUnit.MILLISECONDS);
		}else{
			objMap.put(obj.getKey(), obj);
		}
	}
	
	protected CacheObject initGetCacheObj(String key) {
		if(jedis != null){
			CacheObject obj = null;
			String value = (String) jedis.opsForValue().get(key);
			if(!Tools.isNullOrEmpty(value)){
				obj = JsonTools.jsonToObj(value, CacheObject.class);
			}
			return obj;
		}else{
			return objMap.get(key);
		}
	}
	
	protected void initClearCacheObj(String key) {
		if(jedis != null){
			jedis.delete(key);
		}else{
			objMap.remove(key);
		}
	}
	
	
}
