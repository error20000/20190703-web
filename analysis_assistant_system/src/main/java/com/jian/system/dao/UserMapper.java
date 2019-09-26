package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.User;


@Mapper
public interface UserMapper extends BaseMapper<User> {


	@Select({
		" select ",
		" a.\"sAid_ID\", a.\"sAid_Name\", a.\"sAid_NO\" ",
		" from \"tBase_Aid\" a join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
		" where b.\"sUserAid_UserID\" = #{sUser_ID}"
	})
	public List<Map<String, Object>> aid(String sUser_ID);
	
	@Select({
		" select ",
		" \"sAid_ID\", \"sAid_Name\", \"sAid_NO\" ",
		" from \"tBase_Aid\" ",
	})
	public List<Map<String, Object>> aidAll();
	
	@Select({
		" select ",
		" a.* ",
		" from \"tBase_UserStore\" a  ",
		" where a.\"sUserStore_UserID\" = #{sUser_ID}"
	})
	public List<Map<String, Object>> store(String sUser_ID);
	
	@Select({
		" select ",
		"	a.*, ",
		" 	d.\"sUser_Nick\" \"sUser_UserName\",  ",
		" 	b.\"sGroup_Name\" \"sUser_GroupName\"  ",
		" from \"tBase_User\" a ",
		" 	left join \"tBase_Group\" b on a.\"sUser_GroupID\" = b.\"sGroup_ID\" ",
		" 	left join \"tBase_User\" d on a.\"sUser_UserID\" = d.\"sUser_ID\" ",
	})
	public List<Map<String, Object>> export();
}
