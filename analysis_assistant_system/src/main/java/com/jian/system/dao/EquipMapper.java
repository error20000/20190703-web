package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.Equip;


@Mapper
public interface EquipMapper extends BaseMapper<Equip> {

	@Select({
		" select * from \"tBase_Equip\" where \"sEquip_NfcID\" is null or \"sEquip_NfcID\" = '' "
	})
	public List<Equip> unbind();
	
	@Select({
		" select count(*) from \"tBase_Equip\" ",
		" where ",
		" 	\"sEquip_StoreLv1\" = #{sStore_ID} or ",
		" 	\"sEquip_StoreLv2\" = #{sStore_ID} or ",
		"	\"sEquip_StoreLv3\" = #{sStore_ID} or ",
		"	\"sEquip_StoreLv4\" = #{sStore_ID} "
	})
	public int isStore(String sStore_ID);
	

	@Select({
		" select * from \"tBase_Equip\" where \"sEquip_NO\" like concat(concat('%', #{keywords}), '%') "
	})
	public List<Equip> search(String keywords);
	

	@Select({
		" select  ",
		"  a.* ",
		" from \"tBase_Equip\" a",
		" 	inner join \"tBase_Nfc\" b on a.\"sEquip_NfcID\" = b.\"sNfc_ID\" ",
		" where ",
		" 	b.\"sNfc_NO\" = #{sNfc_NO} "
	})
	public Equip nfc(String sNfc_NO);
	
	
	//TODO --------------------------------------------------------------------------------- 统计

	
	@Select({
		"<script>",
		" select ",
		"	a.\"sEquip_Type\", b.\"sDict_Name\", c.\"lStoreType_Lng\", c.\"lStoreType_Lat\", c.\"sStoreType_ID\", c.\"sStoreType_Name\" ",
		" from \"tBase_Equip\" a",
		" 	inner join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_StoreType\" c on a.\"sEquip_StoreLv1\" = c.\"sStoreType_ID\" ",
		" where a.\"sEquip_Status\" = '1' ",
    	" 	<if test=\" sEquip_Type != null \"> ",
    	" 		and a.\"sEquip_Type\" = #{sEquip_Type} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> statisUnused(@Param("sEquip_Type") String sEquip_Type);
	
	@Select({
		"<script>",
		" select ",
		"	a.\"sEquip_Type\", b.\"sDict_Name\", c.\"lAid_Lng\", c.\"lAid_Lat\", c.\"sAid_ID\", c.\"sAid_Name\" ",
		" from \"tBase_Equip\" a",
		" 	inner join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	inner join \"tBase_Aid\" c on a.\"sEquip_AidID\" = c.\"sAid_ID\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sEquip_Type != null \"> ",
    	" 		and a.\"sEquip_Type\" = #{sEquip_Type} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> statisUsed(@Param("sEquip_Type") String sEquip_Type);
	
	@Select({
		"<script>",
		" select ",
		"	a.\"sEquip_Type\", a.\"sEquip_Status\", e.\"sDict_Name\" \"sEquip_TypeName\", f.\"sDict_Name\" \"sEquip_StatusName\" ",
		" from \"tBase_Equip\" a",
		" 	inner join \"tBase_Dict\" e on a.\"sEquip_Type\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	inner join \"tBase_Dict\" f on a.\"sEquip_Status\" = f.\"sDict_NO\" and f.\"sDict_DictTypeNO\" = 'EquipStatus' ",
		" 	left join \"tBase_Aid\" c on a.\"sEquip_AidID\" = c.\"sAid_ID\" ",
		" 	left join \"tBase_StoreType\" d on a.\"sEquip_StoreLv1\" = d.\"sStoreType_ID\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sEquip_Type != null \"> ",
    	" 		and a.\"sEquip_Type\" = #{sEquip_Type} ",	
    	"   </if>", 
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and c.\"sAid_Station\" = #{sAid_Station} ",	
    	"   </if>", 
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and d.\"sStoreType_Station\" = #{sAid_Station} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> statisStatus(@Param("sEquip_Type") String sEquip_Type, @Param("sAid_Station") String sAid_Station);


	@Select({
		"<script>",
		" select ",
		"	a.\"sELog_Type\", a.\"sELog_EquipID\",  e.\"sDict_Name\" ",
		" from \"tBase_EquipLog\" a ",
		" 	inner join \"tBase_Equip\" b on a.\"sELog_EquipID\" = b.\"sEquip_ID\" ",
		" 	inner join \"tBase_Dict\" e on b.\"sEquip_Type\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" = 'EquipType' ",
		" where (a.\"sELog_Type\" = '1' or a.\"sELog_Type\" = '2') ",
    	" 	<if test=\" sEquip_StoreLv1 != null \"> ",
    	" 		and a.\"sELog_StoreLv1\" = #{sEquip_StoreLv1} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv2 != null \"> ",
    	" 		and a.\"sELog_StoreLv2\" = #{sEquip_StoreLv2} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv3 != null \"> ",
    	" 		and a.\"sELog_StoreLv3\" = #{sEquip_StoreLv3} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_StoreLv4 != null \"> ",
    	" 		and a.\"sELog_StoreLv4\" = #{sEquip_StoreLv4} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> inoutStore(@Param("sEquip_StoreLv1") String sEquip_StoreLv1, 
			@Param("sEquip_StoreLv2") String sEquip_StoreLv2, 
			@Param("sEquip_StoreLv3") String sEquip_StoreLv3, 
			@Param("sEquip_StoreLv4") String sEquip_StoreLv4);
	
	@Select({
		"select \"sEquip_MBrand\" from \"tBase_Equip\" group by \"sEquip_MBrand\" "
	})
	public List<Map<String, Object>> brandOption();

	@Select({
		"<script>",
		" select ",
		"	a.\"sEquip_Manufacturer\", a.\"sEquip_MBrand\",a.\"sEquip_MModel\", b.\"sAid_Station\",c.\"sStoreType_Station\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Aid\" b on a.\"sEquip_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_StoreType\" c on a.\"sEquip_StoreLv1\" = c.\"sStoreType_ID\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and b.\"sAid_Station\" = #{sAid_Station} ",	
    	" 		and c.\"sStoreType_Station\" = #{sAid_Station} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> brand(@Param("sAid_Station") String sAid_Station);

	@Select({
		"<script>",
		" select ",
		"	a.\"sEquip_Manufacturer\", a.\"sEquip_MBrand\",a.\"sEquip_MModel\", b.\"sAid_Station\",c.\"sStoreType_Station\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Aid\" b on a.\"sEquip_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_StoreType\" c on a.\"sEquip_StoreLv1\" = c.\"sStoreType_ID\" ",
		" where a.\"sEquip_Status\" = #{sEquip_Status} ",
    	" 	<if test=\" sAid_Station != null \"> ",
    	" 		and b.\"sAid_Station\" = #{sAid_Station} ",	
    	" 		and c.\"sStoreType_Station\" = #{sAid_Station} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> brandStatus(@Param("sEquip_Status") String sEquip_Status, @Param("sAid_Station") String sAid_Station);

	@Select({
		"<script>",
		" select ",
		"	a.\"dELog_CreateDate\", a.\"sELog_EquipID\",a.\"sELog_Type\",  ",
		"	b.\"sEquip_Type\",b.\"sEquip_Manufacturer\",b.\"sEquip_MBrand\",b.\"sEquip_MModel\", ",
		"	c.\"sDict_Name\" \"sEquip_TypeName\", ",
		"	e.\"sDict_Name\" \"sEquip_StationName\" ",
		" from \"tBase_EquipLog\" a ",
		" 	inner join \"tBase_Equip\" b on a.\"sELog_EquipID\" = b.\"sEquip_ID\" ",
		" 	left join \"tBase_Dict\" c on b.\"sEquip_Type\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_StoreType\" d on a.\"sELog_StoreLv1\" = d.\"sStoreType_ID\" ",
		" 	left join \"tBase_Dict\" e on d.\"sStoreType_Station\" = e.\"sDict_NO\" and e.\"sDict_DictTypeNO\" ='AidStation' ",
		" where (a.\"sELog_Type\" = '9' or a.\"sELog_Type\" = '8') ",
    	" 	<if test=\" sEquip_MBrand != null \"> ",
    	" 		and b.\"sEquip_MBrand\" = #{sEquip_MBrand} ",	
    	"   </if>", 
    	" 	<if test=\" sEquip_Type != null \"> ",
    	" 		and b.\"sEquip_Type\" = #{sEquip_Type} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> life(@Param("sEquip_MBrand") String sEquip_MBrand, @Param("sEquip_Type") String sEquip_Type);
}
