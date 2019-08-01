package com.jian.system.config;

import org.springframework.stereotype.Component;

@Component
public class RedisConfig {
	
	public String userAuthCacheKey = "user:auth:cache:key:";
	
}
