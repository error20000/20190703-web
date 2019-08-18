package com.jian.system.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.Message;

@Mapper
public interface MessageMapper extends BaseMapper<Message> {

	
	@Select({
		"<script>",
		" select rownum, t.* ",
		" from ",
		"	(",
		" select * ",
		" from \"tBase_Message\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>",
    	"   order by \"dMsg_CreateDate\" desc",
		"	) t ",
		"	 where rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select rownum, t1.* ",
		" from ",
		"	(",
		" select * ",
		" from \"tBase_Message\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>",
    	"   order by \"dMsg_CreateDate\" desc",
		"	) t1 ",
		"	 where rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<Message> selectPageByUser(@Param("map") Map<String, Object> condition, 
			@Param("startDate") Date startDate, @Param("endDate") Date endDate,
			@Param("sUser_ID") String sUser_ID,  @Param("start") int start, @Param("rows") int rows);

	@Select({
		"<script>",
		" select count(*) ",
		" from \"tBase_Message\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>",
		"</script>"
	})
	public long sizeByUser(@Param("map") Map<String, Object> condition, 
			@Param("startDate") Date startDate, @Param("endDate") Date endDate,
			@Param("sUser_ID") String sUser_ID);
	


	@Select({
		"<script>",
		" select * ",
		" from \"tBase_Message\" ",
		" where ",
		"	( ",
		"		\"sMsg_Title\" like concat(concat('%', #{keywords}), '%') ",
		"		or \"sMsg_Describe\" like concat(concat('%', #{keywords}), '%') ",
		"	) ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and b.\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Message> search(@Param("keywords") String keywords, @Param("sUser_ID") String sUser_ID);
	
	@Select({
		"<script>",
		" select ",
		"	a.*, b.\"sAid_Name\" \"sMsg_AidName\", c.\"sEquip_Name\" \"sMsg_EquipName\", ",
		"	d.\"sUser_Nick\" \"sMsg_UserName\", e.\"sUser_Nick\" \"sMsg_ToUserName\", e.\"sUser_Nick\" \"sMsg_FromUserName\" ",
		" from \"tBase_Message\" a ",
		" 	left join \"tBase_Aid\" b on a.\"sMsg_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_Equip\" c on a.\"sMsg_EquipID\" = c.\"sEquip_ID\" ",
		" 	left join \"tBase_User\" d on a.\"sMsg_UserID\" = d.\"sUser_ID\" ",
		" 	left join \"tBase_User\" e on a.\"sMsg_ToUserID\" = d.\"sUser_ID\" ",
		" 	left join \"tBase_User\" f on a.\"sMsg_FromUserID\" = d.\"sUser_ID\" ",
		" where ",
		" 	a.\"sMsg_ID\" = #{sMsg_ID} ",	
		" 	<if test=\" sUser_ID != null \"> ",
		" 		and a.\"sMsg_ToUserID\" = #{sUser_ID} ",	
		"   </if>", 
		"</script>"
	})
	public Map<String, Object> view(@Param("sMsg_ID") String sMsg_ID, @Param("sUser_ID") String sUser_ID);
	
	
}
