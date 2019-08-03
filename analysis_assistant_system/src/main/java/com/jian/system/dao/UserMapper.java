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
}
