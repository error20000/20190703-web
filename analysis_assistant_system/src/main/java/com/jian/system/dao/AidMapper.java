package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
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

	@Select({
		"<script>",
		" select a.* ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
		" 	left join \"tBase_UserStation\" c on a.\"sAid_Station\" = c.\"sUserStation_Station\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( b.\"sUserAid_UserID\" = #{sUser_ID} or c.\"sUserStation_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select a.* ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
		" 	left join \"tBase_UserStation\" c on a.\"sAid_Station\" = c.\"sUserStation_Station\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( b.\"sUserAid_UserID\" = #{sUser_ID} or c.\"sUserStation_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<Aid> selectPageByUser(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID,  @Param("start") int start, @Param("rows") int rows);

	@Select({
		"<script>",
		" select count(distinct a.\"sAid_ID\") ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
		" 	left join \"tBase_UserStation\" c on a.\"sAid_Station\" = c.\"sUserStation_Station\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( b.\"sUserAid_UserID\" = #{sUser_ID} or c.\"sUserStation_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"</script>"
	})
	public long sizeByUser(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);
	

	@Select({
		" select ",
		" \"sAid_ID\", \"sAid_Name\", \"sAid_NO\" ",
		" from \"tBase_Aid\" ",
	})
	public List<Map<String, Object>> aidAll();
	

	@Select({
		"<script>",
		" select a.* ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
		" 	left join \"tBase_UserStation\" c on a.\"sAid_Station\" = c.\"sUserStation_Station\" ",
		" where a.\"sAid_NO\" like concat(concat('%', #{keywords}), '%') ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( b.\"sUserAid_UserID\" = #{sUser_ID} or c.\"sUserStation_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"</script>"
	})
	public List<Aid> search(@Param("keywords") String keywords, @Param("sUser_ID") String sUser_ID);
	

	/*@Select({ " select ",
			" a.*, b.* , b.\"sEquip_Name\" \"sAidEquip_EquipName\",  b.\"sEquip_NO\" \"sAidEquip_EquipNO\",  b.\"sEquip_Type\" \"sAidEquip_EquipType\", c.\"sDict_Name\" \"sAidEquip_EquipTypeName\" ",
			" from \"tBase_AidEquip\" a, \"tBase_Equip\" b, \"tBase_Dict\" c ", " where ",
			" 	a.\"sAidEquip_EquipID\" = b.\"sEquip_ID\" ", " 	and b.\"sEquip_Type\" = c.\"sDict_NO\" ",
			"   and a.\"sAidEquip_AidID\" = #{sAid_ID} " 
	})*/
	@Select({
		" select ",
		"	a.*, b.*, ",
		" 	b.\"sEquip_Name\" \"sAidEquip_EquipName\",  b.\"sEquip_NO\" \"sAidEquip_EquipNO\",  b.\"sEquip_Type\" \"sAidEquip_EquipType\", d.\"sDict_Name\" \"sAidEquip_EquipTypeName\" ",
		" from \"tBase_AidEquip\" a ",
		" 	left join \"tBase_Equip\" b on a.\"sAidEquip_EquipID\" = b.\"sEquip_ID\"  ",
		" 	left join \"tBase_Dict\" d on b.\"sEquip_Type\" = d.\"sDict_NO\"  and d.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" e on b.\"sEquip_Icon\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		"   where a.\"sAidEquip_AidID\" = #{sAid_ID} and b.\"sEquip_Status\" = '9' " //只显示使用中的器材
	})
	public List<Map<String, Object>> equip(@Param("sAid_ID") String sAid_ID);
	


	@Select({
		"<script>",
		" select ",
		"	a.*, ",
		"	d.\"sDict_Picture\" \"sAid_StatusIcon\", e.\"sDict_Picture\" \"sAid_TypeIcon\", ",
		"	f.\"sDict_Name\" \"sAid_StationName\", ",
		"	g.\"sDict_Picture\" \"sAid_IconUrl\", ",
		"	h.\"sDict_Name\" \"sAid_TypeName\" ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_AidMapIcon\" b on a.\"sAid_ID\" = b.\"sAidIcon_AidID\" and a.\"sAid_Status\" = b.\"sAidIcon_Status\" ",
		" 	left join \"tBase_AidTypeMapIcon\" c on a.\"sAid_Type\" = c.\"sAidTypeIcon_Type\" and a.\"sAid_Status\" = c.\"sAidTypeIcon_Status\" ",
		" 	left join \"tBase_Dict\" d on b.\"sAidIcon_StatusIcon\" = d.\"sDict_NO\"  and d.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" 	left join \"tBase_Dict\" e on c.\"sAidTypeIcon_StatusIcon\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" 	left join \"tBase_Dict\" f on a.\"sAid_Station\" = f.\"sDict_NO\" and f.\"sDict_DictTypeNO\" = 'AidStation' ",
		" 	left join \"tBase_Dict\" g on a.\"sAid_Icon\" = g.\"sDict_NO\" and g.\"sDict_DictTypeNO\" = 'AidIcon' ",
		" 	left join \"tBase_Dict\" h on a.\"sAid_Type\" = h.\"sDict_NO\" and h.\"sDict_DictTypeNO\" = 'AidType' ",
		"   left join ",
		"		(select * from ",
		"			(select o.*, row_number() over(partition by \"sUserAid_AidID\" order by \"sUserAid_ID\") r from \"tBase_UserAid\" o ) ",
		"		where ", 
    	" 			<if test=\" sUser_ID != null \"> ",
    	" 				\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   		</if>",
    	" 			<if test=\" sUser_ID == null \"> ",
    	" 				r = 1 ",	
    	"   		</if>",
		" 		) k on a.\"sAid_ID\" = k.\"sUserAid_AidID\" ",
		"   left join ",
		"		(select * from ",
		"			(select o1.*, row_number() over(partition by \"sUserStation_Station\" order by \"sUserStation_Station\") r from \"tBase_UserStation\" o1 ) ",
		"		where ", 
    	" 			<if test=\" sUser_ID != null \"> ",
    	" 				\"sUserStation_UserID\" = #{sUser_ID} ",	
    	"   		</if>",
    	" 			<if test=\" sUser_ID == null \"> ",
    	" 				r = 1 ",	
    	"   		</if>",
		" 		) k1 on a.\"sAid_Station\" = k1.\"sUserStation_Station\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( k.\"sUserAid_UserID\" = #{sUser_ID} or k1.\"sUserStation_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> aidMap(@Param("sUser_ID") String sUser_ID);

	@Select({
		"<script>",
		" select ",
		"	a.\"sAid_Type\", count(1) \"sAid_Num\", b.\"sDict_Name\" \"sAid_TypeName\" ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sAid_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'AidType' ",
		" where 1 = 1 ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and a.\"sAid_Station\" = #{sAid_Station} ",	
    	"   </if>",
		" group by a.\"sAid_Type\", b.\"sDict_Name\" ",
		"</script>" 
	})
	public List<Map<String, Object>> statis(@Param("sAid_Station") String sAid_Station);

	@Select({
		"<script>",
		" select ",
		"	a.*, b.\"sDict_Name\" \"sAid_TypeName\" ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sAid_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'AidType' ",
		" where 1 = 1 ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and a.\"sAid_Station\" = #{sAid_Station} ",	
    	"   </if>",
		"</script>" 
	})
	public List<Map<String, Object>> statisMap(@Param("sAid_Station") String sAid_Station);

	@Select({
		"<script>",
		" select ",
		"	a.*,",
		"	b.\"sDict_Name\" \"sAid_TypeName\", ",
		"	c.\"sDict_Name\" \"sAid_StatusName\" ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sAid_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'AidType' ",
		" 	left join \"tBase_Dict\" c on a.\"sAid_Status\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'AidStatus' ",
		" where 1 = 1 ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and a.\"sAid_Station\" = #{sAid_Station} ",	
    	"   </if>",
		"</script>" 
	})
	public List<Map<String, Object>> status(@Param("sAid_Station") String sAid_Station);
	
	@Select({
		"<script>",
		" select ",
		"	a.*, ",
		"	d.\"sDict_Picture\" \"sAid_StatusIcon\", e.\"sDict_Picture\" \"sAid_TypeIcon\", ",
		"	n.\"sDict_Name\" \"sAid_StatusName\", ",
		"	f.\"sDict_Name\" \"sAid_StationName\", ",
		"	g.\"sDict_Picture\" \"sAid_IconUrl\", ",
		"	g.\"sDict_Name\" \"sAid_IconName\", ",
		"	h.\"sDict_Name\" \"sAid_TypeName\", ",
		"	i.\"sDict_Name\" \"sAid_LightingName\", ",
		"	j.\"sDict_Name\" \"sAid_MarkName\", ",
		"	m.\"sNfc_NO\" \"sAid_NfcNO\" ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_AidMapIcon\" b on a.\"sAid_ID\" = b.\"sAidIcon_AidID\" and a.\"sAid_Status\" = b.\"sAidIcon_Status\" ",
		" 	left join \"tBase_AidTypeMapIcon\" c on a.\"sAid_Type\" = c.\"sAidTypeIcon_Type\" and a.\"sAid_Status\" = c.\"sAidTypeIcon_Status\" ",
		" 	left join \"tBase_Dict\" d on b.\"sAidIcon_StatusIcon\" = d.\"sDict_NO\"  and d.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" 	left join \"tBase_Dict\" e on c.\"sAidTypeIcon_StatusIcon\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" 	left join \"tBase_Dict\" f on a.\"sAid_Station\" = f.\"sDict_NO\" and f.\"sDict_DictTypeNO\" = 'AidStation' ",
		" 	left join \"tBase_Dict\" g on a.\"sAid_Icon\" = g.\"sDict_NO\" and g.\"sDict_DictTypeNO\" = 'AidIcon' ",
		" 	left join \"tBase_Dict\" h on a.\"sAid_Type\" = h.\"sDict_NO\" and h.\"sDict_DictTypeNO\" = 'AidType' ",
		" 	left join \"tBase_Dict\" i on a.\"sAid_Lighting\" = i.\"sDict_NO\" and i.\"sDict_DictTypeNO\" = 'AidLighting' ",
		" 	left join \"tBase_Dict\" j on a.\"sAid_Mark\" = j.\"sDict_NO\" and j.\"sDict_DictTypeNO\" = 'AidMark' ",
		" 	left join \"tBase_Dict\" n on a.\"sAid_Status\" = n.\"sDict_NO\" and n.\"sDict_DictTypeNO\" = 'AidStatus' ",
		"   left join \"tBase_Nfc\" m on a.\"sAid_NfcID\" = m.\"sNfc_ID\" ",
		"   left join ",
		"		(select * from ",
		"			(select o.*, row_number() over(partition by \"sUserAid_AidID\" order by \"sUserAid_ID\") r from \"tBase_UserAid\" o ) ",
		"		where ", 
    	" 			<if test=\" sUser_ID != null \"> ",
    	" 				\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   		</if>",
    	" 			<if test=\" sUser_ID == null \"> ",
    	" 				r = 1 ",	
    	"   		</if>",
		" 		) k on a.\"sAid_ID\" = k.\"sUserAid_AidID\" ",
		"   left join ",
		"		(select * from ",
		"			(select o1.*, row_number() over(partition by \"sUserStation_Station\" order by \"sUserStation_Station\") r from \"tBase_UserStation\" o1 ) ",
		"		where ", 
    	" 			<if test=\" sUser_ID != null \"> ",
    	" 				\"sUserStation_UserID\" = #{sUser_ID} ",	
    	"   		</if>",
    	" 			<if test=\" sUser_ID == null \"> ",
    	" 				r = 1 ",	
    	"   		</if>",
		" 		) k1 on a.\"sAid_Station\" = k1.\"sUserStation_Station\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( k.\"sUserAid_UserID\" = #{sUser_ID} or k1.\"sUserStation_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> export(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);
	
	@Select({  
		"<script>",
		" select a.* ",
		" from \"tBase_Aid\" a ",
		"   left join ",
		"		(select * from ",
		"			(select o.*, row_number() over(partition by \"sUserAid_AidID\" order by \"sUserAid_ID\") r from \"tBase_UserAid\" o ) ",
		"		where ", 
    	" 			<if test=\" sUser_ID != null \"> ",
    	" 				\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   		</if>",
    	" 			<if test=\" sUser_ID == null \"> ",
    	" 				r = 1 ",	
    	"   		</if>",
		" 		) k on a.\"sAid_ID\" = k.\"sUserAid_AidID\" ",
		"   left join ",
		"		(select * from ",
		"			(select o1.*, row_number() over(partition by \"sUserStation_Station\" order by \"sUserStation_Station\") r from \"tBase_UserStation\" o1 ) ",
		"		where ", 
    	" 			<if test=\" sUser_ID != null \"> ",
    	" 				\"sUserStation_UserID\" = #{sUser_ID} ",	
    	"   		</if>",
    	" 			<if test=\" sUser_ID == null \"> ",
    	" 				r = 1 ",	
    	"   		</if>",
		" 		) k1 on a.\"sAid_Station\" = k1.\"sUserStation_Station\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and ( k.\"sUserAid_UserID\" = #{sUser_ID} or k1.\"sUserStation_UserID\" = #{sUser_ID} ) ",
    	"   </if>",  
		"</script>"
	})
	public List<Aid> selectAllByUser(@Param("sUser_ID") String sUser_ID);
	
}
