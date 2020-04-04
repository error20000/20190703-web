package com.jian.system.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.jian.system.dao.AidImgMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.AidImg;

@Service
public class AidImgService extends BaseService<AidImg, AidImgMapper> {

	
	@TargetDataSource
	public List<AidImg> list(Map<String, Object> condition) {
		return baseMapper.list(condition);
	}
	

}
