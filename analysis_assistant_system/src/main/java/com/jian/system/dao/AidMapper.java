package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jian.system.entity.Aid;


@Mapper
public interface AidMapper extends BaseMapper<Aid> {

	@Select({
		" select * from \"tBase_Aid\" where \"sAid_NfcID\" is null or \"sAid_NfcID\" = '' "
	})
	public List<Aid> unbind();

	@Update({
		" update \"tBase_Aid\" set \"sAid_NfcID\" = '' "
	})
	public int rebind();
	
	
	@Select({
		" select * from \"tBase_Aid\" where \"sAid_ID\" not in (select \"sUserAid_AidID\" from \"tBase_UserAid\") "
	})
	public List<Aid> unuser();

	@Select({
		" select ",
		" a.\"sUser_ID\", a.\"sUser_UserName\", a.\"sUser_Nick\", a.\"sUser_ThirdID\" ",
		" from \"tBase_User\" a join \"tBase_UserAid\" b on a.\"sUser_ID\" = b.\"sUserAid_UserID\" ",
		" where b.\"sUserAid_AidID\" = #{sAid_ID}"
	})
	public List<Map<String, Object>> user(String sAid_ID);
}
