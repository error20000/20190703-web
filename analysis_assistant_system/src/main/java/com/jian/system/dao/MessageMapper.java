package com.jian.system.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.config.Constant;
import com.jian.system.entity.Message;

@Mapper
public interface MessageMapper extends BaseMapper<Message> {

	
	@Select({
		"<script>",
		" select * ",
		" from ( ",
		" select rownum, t.* ",
		" from (",
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
    	//" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
		" 		and ( \"sMsg_ToUserID\" = #{sUser_ID} or \"sMsg_FromUserID\" = #{sUser_ID} or \"sMsg_UserID\" = #{sUser_ID} ) ",
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>",
    	"   order by \"dMsg_CreateDate\" desc",
		"	) t )",
		"	 where rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select * ",
		" from ( ",
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
    	//" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
		" 		and ( \"sMsg_ToUserID\" = #{sUser_ID} or \"sMsg_FromUserID\" = #{sUser_ID} or \"sMsg_UserID\" = #{sUser_ID} ) ",
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dMsg_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>",
    	"   order by \"dMsg_CreateDate\" desc",
		"	) t1 )",
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
    	//" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
		" 		and ( \"sMsg_ToUserID\" = #{sUser_ID} or \"sMsg_FromUserID\" = #{sUser_ID} or \"sMsg_UserID\" = #{sUser_ID} ) ",
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
		" select distinct a.* ",
		" from \"tBase_Message\" a ",
		" 	left join \"tBase_Aid\" b ON a.\"sMsg_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_StoreType\" c ON a.\"sMsg_StoreLv1\" = c.\"sStoreType_ID\" ",
		" 	left join \"tBase_Store\" d ON a.\"sMsg_StoreLv2\" = d.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" e ON a.\"sMsg_StoreLv3\" = e.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" f ON a.\"sMsg_StoreLv4\" = f.\"sStore_ID\" ",
		" where ",
		"	( ",
		"		a.\"sMsg_Title\" like concat(concat('%', #{keywords}), '%') ",
		"		or b.\"sAid_Name\" like concat(concat('%', #{keywords}), '%') ",
		"		or c.\"sStoreType_Name\" like concat(concat('%', #{keywords}), '%') ",
		"		or d.\"sStore_Name\" like concat(concat('%', #{keywords}), '%') ",
		"		or e.\"sStore_Name\" like concat(concat('%', #{keywords}), '%') ",
		"		or f.\"sStore_Name\" like concat(concat('%', #{keywords}), '%') ",
		"	) ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	//" 		and a.\"sMsg_ToUserID\" = #{sUser_ID} ",	
		" 		and ( a.\"sMsg_ToUserID\" = #{sUser_ID} or a.\"sMsg_FromUserID\" = #{sUser_ID} or a.\"sMsg_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"</script>"
	})
	public List<Message> search(@Param("keywords") String keywords, @Param("sUser_ID") String sUser_ID);
	
	@Select({
		"<script>",
		" select ",
		"	a.*, ",
		"	b.\"sAid_Name\" \"sMsg_AidName\", ",
		"	c.\"sEquip_Name\" \"sMsg_EquipName\", ",
		"	d.\"sUser_Nick\" \"sMsg_UserName\", ",
		"	e.\"sUser_Nick\" \"sMsg_ToUserName\", ",
		"	f.\"sUser_Nick\" \"sMsg_FromUserName\", ",
		"	g.\"sStoreType_Name\" \"sMsg_StoreLv1Name\", ",
		"	h.\"sStore_Name\" \"sMsg_StoreLv2Name\", ",
		"	i.\"sStore_Name\" \"sMsg_StoreLv3Name\", ",
		"	j.\"sStore_Name\" \"sMsg_StoreLv4Name\", ",
		"	m.\"sDict_Name\" \"sMsg_TypeName\", ",
		"	n.\"sDict_Name\" \"sMsg_LabelName\", ",
		"	o.\"sDict_Name\" \"sMsg_StatusName\", ",
		"	p.\"sDict_Name\" \"sMsg_ReasonName\", ",
		"	q.\"sDict_Name\" \"sMsg_SourceName\" ",
		" from \"tBase_Message\" a ",
		" 	left join \"tBase_Aid\" b ON a.\"sMsg_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_Equip\" c ON a.\"sMsg_EquipID\" = c.\"sEquip_ID\" ",
		" 	left join \"tBase_User\" d on a.\"sMsg_UserID\" = d.\"sUser_ID\" ",
		" 	left join \"tBase_User\" e on a.\"sMsg_ToUserID\" = e.\"sUser_ID\" ",
		" 	left join \"tBase_User\" f on a.\"sMsg_FromUserID\" = f.\"sUser_ID\" ",
		" 	left join \"tBase_StoreType\" g ON a.\"sMsg_StoreLv1\" = g.\"sStoreType_ID\" ",
		" 	left join \"tBase_Store\" h ON a.\"sMsg_StoreLv2\" = h.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" i ON a.\"sMsg_StoreLv3\" = i.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" j ON a.\"sMsg_StoreLv4\" = j.\"sStore_ID\" ",
		" 	left join \"tBase_Dict\" m ON a.\"sMsg_Type\" = m.\"sDict_NO\" and m.\"sDict_DictTypeNO\" = 'MsgType' ",
		" 	left join \"tBase_Dict\" n ON a.\"sMsg_Label\" = n.\"sDict_NO\" and n.\"sDict_DictTypeNO\" = 'MsgLabel' ",
		" 	left join \"tBase_Dict\" o ON a.\"sMsg_Status\" = o.\"sDict_NO\" and o.\"sDict_DictTypeNO\" = 'MsgStatus' ",
		" 	left join \"tBase_Dict\" p ON a.\"sMsg_Reason\" = p.\"sDict_NO\" and p.\"sDict_DictTypeNO\" = 'MsgReason' ",
		" 	left join \"tBase_Dict\" q ON a.\"sMsg_Source\" = q.\"sDict_NO\" and q.\"sDict_DictTypeNO\" = 'MsgSource' ",
		" where ",
		" 	a.\"sMsg_ID\" = #{sMsg_ID} ",	
		" 	<if test=\" sUser_ID != null \"> ",
    	//" 		and a.\"sMsg_ToUserID\" = #{sUser_ID} ",	
		" 		and ( a.\"sMsg_ToUserID\" = #{sUser_ID} or a.\"sMsg_FromUserID\" = #{sUser_ID} or a.\"sMsg_UserID\" = #{sUser_ID} ) ",	
		"   </if>", 
		"</script>"
	})
	public Map<String, Object> view(@Param("sMsg_ID") String sMsg_ID, @Param("sUser_ID") String sUser_ID);
	
	@Select({
		"<script>",
		" select count(*) ",
		" from \"tBase_Message\" ",
		" where \"sMsg_Status\" = " + Constant.MsgStatus_1,
    	" 		and \"sMsg_ToUserID\" = #{sUser_ID} ",	
		"</script>"
	})
	public int unReadNum(@Param("sUser_ID") String sUser_ID);
	
}
