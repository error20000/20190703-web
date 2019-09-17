package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.App;

@Mapper
public interface AppMapper extends BaseMapper<App> {

	
	@Select({
		" select ",
		"	a.*, ",
		" 	d.\"sUser_Nick\" \"sApp_UserName\"  ",
		" from \"tBase_App\" a ",
		" 	left join \"tBase_User\" d on a.\"sApp_UserID\" = d.\"sUser_ID\" ",
	})
	public List<Map<String, Object>> export();
}
