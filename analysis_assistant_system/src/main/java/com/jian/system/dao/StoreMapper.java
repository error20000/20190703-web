package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.config.Constant;
import com.jian.system.entity.Message;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreLog;

@Mapper
public interface StoreMapper extends BaseMapper<Store> {
	
	@Select({
		"<script>",
		" select ",
		"	a.*, b.\"sDict_Name\" \"sSLog_EquipTypeName\" ",
		" from \"tBase_StoreLog\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sSLog_EquipType\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" where 1 = 1 ",
    	" 	<if test=\" sEquip_Type != null \"> ",
    	" 		and a.\"sSLog_EquipType\" = #{sEquip_Type} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv1 != null \"> ",
    	" 		and a.\"sSLog_StoreLv1\" = #{sEquip_StoreLv1} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv2 != null \"> ",
    	" 		and a.\"sSLog_StoreLv2\" = #{sEquip_StoreLv2} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv3 != null \"> ",
    	" 		and a.\"sSLog_StoreLv3\" = #{sEquip_StoreLv3} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv4 != null \"> ",
    	" 		and a.\"sSLog_StoreLv4\" = #{sEquip_StoreLv4} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> time(@Param("sEquip_Type") String sEquip_Type,
			@Param("sEquip_StoreLv1") String sEquip_StoreLv1, 
			@Param("sEquip_StoreLv2") String sEquip_StoreLv2, 
			@Param("sEquip_StoreLv3") String sEquip_StoreLv3, 
			@Param("sEquip_StoreLv4") String sEquip_StoreLv4);
	
	@Select({
		"<script>",
		" select ",
		"	a.*,  ",
		"	b.\"sDict_Name\" \"sSLog_EquipTypeName\",  ",
		"	c.\"sStoreType_Name\" \"sSLog_StoreLv1Name\" ",
		" from \"tBase_StoreLog\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sSLog_EquipType\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_StoreType\" c on a.\"sSLog_StoreLv1\" = c.\"sStoreType_ID\"  ",
		" where 1 = 1 ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and c.\"sStoreType_Station\" = #{sAid_Station} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> time2(@Param("sAid_Station") String sAid_Station);
	
	@Select({
		"<script>",
		" select ",
		"	a.*,  ",
		"	c.\"sStoreType_Name\" \"sELog_StoreLv1Name\" ",
		" from \"tBase_EquipLog\" a ",
		" 	left join \"tBase_StoreType\" c on a.\"sELog_StoreLv1\" = c.\"sStoreType_ID\"  ",
		" where 1 = 1 and (a.\"sELog_Type\" = '1' or a.\"sELog_Type\" = '2') ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and c.\"sStoreType_Station\" = #{sAid_Station} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> inout(@Param("sAid_Station") String sAid_Station);
	
	
	@Select({
		"<script>",
		" select ",
		"	distinct a.* ",
		" from \"tBase_Store\" a ",
		"   left join \"tBase_UserStore\" k on (",
		"		a.\"sStore_ID\" = k.\"sUserStore_StoreLv2ID\" or  a.\"sStore_ID\" = k.\"sUserStore_StoreLv3ID\" or a.\"sStore_ID\" = k.\"sUserStore_StoreLv4ID\" ",
		"	) ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",
    	" 	<if test=\" map == null \"> ",
    	"   	1 = 1 ",
    	"   </if>",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and k.\"sUserStore_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Store> selectListByUser(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);
	
	
	@Select({
		" select ",
		"	* ",
		" from \"tBase_StoreLog\" ",
		" where \"dSLog_CreateDate\" >= to_date(#{startDate}, 'yyyy-MM-dd HH24:mi:ss') ",
		"	and \"dSLog_CreateDate\" <= to_date(#{endDate}, 'yyyy-MM-dd HH24:mi:ss') "
	})
	public List<StoreLog> isCheckedEquipType(@Param("startDate") String startDate, @Param("endDate") String endDate);
	
	@Select({
		" select ",
		"	a.\"sEquip_StoreLv1\", a.\"sEquip_StoreLv2\", a.\"sEquip_StoreLv3\", a.\"sEquip_StoreLv4\", a.\"sEquip_Type\", count(1) \"sEquip_Num\" , b.\"sDict_Name\" \"sEquip_TypeName\" ",
		" from \"tBase_Equip\" a ",
		"   left join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" where a.\"sEquip_Status\" = '"+Constant.EquipStatus_1+"' and ( a.\"sEquip_StoreLv1\" is not null or a.\"sEquip_StoreLv1\" != '' ) ",
    	" group by a.\"sEquip_StoreLv1\", a.\"sEquip_StoreLv2\", a.\"sEquip_StoreLv3\", a.\"sEquip_StoreLv4\", a.\"sEquip_Type\", b.\"sDict_Name\" "
	})
	public List<Map<String, Object>> checkEquipType();
	
	@Select({
		" select ",
		"	* ",
		" from \"tBase_Message\" ",
		" where \"sMsg_Type\" = '1' ",
		" 	and \"dMsg_CreateDate\" >= to_date(#{startDate}, 'yyyy-MM-dd HH24:mi:ss') ",
		"	and \"dMsg_CreateDate\" <= to_date(#{endDate}, 'yyyy-MM-dd HH24:mi:ss') "
	})
	public List<Message> isCheckedStore(@Param("startDate") String startDate, @Param("endDate") String endDate);
	
	@Select({
		" select ",
		"	\"sEquip_StoreLv1\", \"sEquip_StoreLv2\", \"sEquip_StoreLv3\", \"sEquip_StoreLv4\", count(1) \"sEquip_Num\" ",
		" from \"tBase_Equip\" ",
		" where \"sEquip_Status\" = '"+Constant.EquipStatus_1+"' and ( \"sEquip_StoreLv1\" is not null or \"sEquip_StoreLv1\" != '' ) ",
    	" group by \"sEquip_StoreLv1\", \"sEquip_StoreLv2\", \"sEquip_StoreLv3\", \"sEquip_StoreLv4\" "
	})
	public List<Map<String, Object>> checkStore();

	
	@Select({
		" <script> ",
		" select ",
		"	a.*, ",
		"	b.\"sDict_Name\" \"sStoreType_MapIconName\", ",
		"	b.\"sDict_Picture\" \"sStoreType_MapIconPic\", ",
		"	f.\"sDict_Name\" \"sStoreType_StationName\", ",
		" 	c.\"sStore_Name\" \"sStoreType_Lv2\",  ",
		" 	c.\"lStore_Limit\" \"sStoreType_Limit2\",  ",
		" 	d.\"sStore_Name\" \"sStoreType_Lv3\",  ",
		" 	d.\"lStore_Limit\" \"sStoreType_Limit3\",  ",
		" 	e.\"sStore_Name\" \"sStoreType_Lv4\",  ",
		" 	e.\"lStore_Limit\" \"sStoreType_Limit4\"  ",
		" from \"tBase_StoreType\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sStoreType_MapIcon\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'StoreMapIcon' ",
		" 	left join \"tBase_Dict\" f on a.\"sStoreType_Station\" = f.\"sDict_NO\" and f.\"sDict_DictTypeNO\" = 'AidStation' ",
		" 	left join \"tBase_Store\" c on c.\"sStore_Parent\" = a.\"sStoreType_ID\" ",
		" 	left join \"tBase_Store\" d on d.\"sStore_Parent\" = c.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" e on e.\"sStore_Parent\" = d.\"sStore_ID\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",
    	" 	<if test=\" map == null \"> ",
    	"   	1 = 1 ",
    	"   </if>",
		" </script> "
	})
	public List<Map<String, Object>> export(@Param("map") Map<String, Object> condition);

}
