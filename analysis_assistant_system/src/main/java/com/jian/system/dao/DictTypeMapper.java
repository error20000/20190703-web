package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.DictType;


@Mapper
public interface DictTypeMapper extends BaseMapper<DictType> {


	@Select({
		" select ",
		"	a.*, ",
		" 	d.\"sUser_Nick\" \"sDictType_UserName\",  ",
		" 	e.\"sUser_Nick\" \"sDictType_UpdateUserName\"  ",
		" from \"tBase_DictType\" a ",
		" 	left join \"tBase_User\" d on a.\"sDictType_UserID\" = d.\"sUser_ID\" ",
		" 	left join \"tBase_User\" e on a.\"sDictType_UpdateUserID\" = e.\"sUser_ID\" ",
	})
	public List<Map<String, Object>> export();
	
}
