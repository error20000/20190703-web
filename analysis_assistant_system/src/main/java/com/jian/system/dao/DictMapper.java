package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.Dict;


@Mapper
public interface DictMapper extends BaseMapper<Dict> {

	@Select({
		" select ",
		"	a.*, ",
		" 	b.\"sDictType_Name\" \"sDict_TypeName\",  ",
		" 	d.\"sUser_Nick\" \"sDict_UserName\",  ",
		" 	e.\"sUser_Nick\" \"sDict_UpdateUserName\"  ",
		" from \"tBase_Dict\" a ",
		" 	left join \"tBase_DictType\" b on a.\"sDict_DictTypeNO\" = b.\"sDictType_NO\" ",
		" 	left join \"tBase_User\" d on a.\"sDict_UserID\" = d.\"sUser_ID\" ",
		" 	left join \"tBase_User\" e on a.\"sDict_UpdateUserID\" = e.\"sUser_ID\" ",
	})
	public List<Map<String, Object>> export();
}
