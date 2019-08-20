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
		" from \"tBase_Aid\" a left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
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
    	" 		and b.\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select a.* ",
		" from \"tBase_Aid\" a left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
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
    	" 		and b.\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<Aid> selectPageByUser(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID,  @Param("start") int start, @Param("rows") int rows);

	@Select({
		"<script>",
		" select count(distinct a.\"sAid_ID\") ",
		" from \"tBase_Aid\" a left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
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
    	" 		and b.\"sUserAid_UserID\" = #{sUser_ID} ",	
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
		" from \"tBase_Aid\" a left join \"tBase_UserAid\" b on a.\"sAid_ID\" = b.\"sUserAid_AidID\" ",
		" where a.\"sAid_NO\" like concat(concat('%', #{keywords}), '%') ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and b.\"sUserAid_UserID\" = #{sUser_ID} ",	
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
		"   where a.\"sAidEquip_AidID\" = #{sAid_ID} " 
	})
	public List<Map<String, Object>> equip(String sAid_ID);
	


	@Select({
		" select ",
		"	a.*, ",
		"	d.\"sDict_Picture\" \"sAid_StatusIcon\", e.\"sDict_Picture\" \"sAid_TypeIcon\", ",
		"	f.\"sDict_Name\" \"sAid_StationName\", ",
		"	g.\"sDict_Picture\" \"sAid_IconUrl\" ",
		" from \"tBase_Aid\" a ",
		" 	left join \"tBase_AidMapIcon\" b on a.\"sAid_ID\" = b.\"sAidIcon_AidID\" and a.\"sAid_Status\" = b.\"sAidIcon_Status\" ",
		" 	left join \"tBase_AidTypeMapIcon\" c on a.\"sAid_Type\" = c.\"sAidTypeIcon_Type\" and a.\"sAid_Status\" = c.\"sAidTypeIcon_Status\" ",
		" 	left join \"tBase_Dict\" d on b.\"sAidIcon_StatusIcon\" = d.\"sDict_NO\"  and d.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" 	left join \"tBase_Dict\" e on c.\"sAidTypeIcon_StatusIcon\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" 	left join \"tBase_Dict\" f on a.\"sAid_Station\" = f.\"sDict_NO\" and f.\"sDict_DictTypeNO\" = 'AidStation' ",
		" 	left join \"tBase_Dict\" g on a.\"sAid_Icon\" = g.\"sDict_NO\" and g.\"sDict_DictTypeNO\" = 'AidIcon' ",
	})
	public List<Map<String, Object>> aidMap();
	
}
