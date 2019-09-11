package com.jian.system.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.EquipLog;

@Mapper
public interface EquipLogMapper extends BaseMapper<EquipLog> {

	@Select({
		" select * ",
		" from \"tBase_EquipLog\" ",
		" where \"dELog_CreateDate\" >= #{syncDate} ",
	})
	public List<EquipLog> syncDate(@Param("syncDate") Date syncDate);
	
}
