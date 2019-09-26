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
	


	@Select({
		"<script>",
		" select  ",
		"  a.* ",
		" from \"tBase_Equip\" a",
		" 	left join \"tBase_UserStore\" b on a.\"sEquip_StoreLv1\" = b.\"sUserStore_StoreLv1ID\" ",
		" 		and a.\"sEquip_StoreLv2\" = b.\"sUserStore_StoreLv2ID\" ",
		" 		and a.\"sEquip_StoreLv3\" = b.\"sUserStore_StoreLv3ID\" ",
		" 		and a.\"sEquip_StoreLv4\" = b.\"sUserStore_StoreLv4ID\" ",
		" where ",
		" 	a.\"sEquip_Type\" = #{sEquip_Type} and a.\"sEquip_Status\" = '1' ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	"		and b.\"sUserStore_UserID\"= #{sUser_ID}",
    	"   </if>",
		"</script>"
	})
	public List<Equip> selectByType(@Param("sEquip_Type") String sEquip_Type, @Param("sUser_ID") String sUser_ID);
	
	@Select({
		"<script>",
		" select ",
		" 	a.*, ",
		" 	b.\"sDict_Name\" \"sEquip_TypeName\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\"  and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" c on a.\"sEquip_Icon\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select ",
		" 	a.*, ",
		" 	b.\"sDict_Name\" \"sEquip_TypeName\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\"  and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" c on a.\"sEquip_Icon\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<Map<String, Object>> selectPageByCustom(@Param("map") Map<String, Object> condition, @Param("start") int start, @Param("rows") int rows);
	
	
	@Select({
		"<script>",
		" select count(*) ",
		" from \"tBase_Equip\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>",
		"</script>"
	})
	public long sizeByCustom(@Param("map") Map<String, Object> condition);

	@Select({
		"<script>",
		" select ",
		" 	a.*, ",
		" 	b.\"sDict_Name\" \"sEquip_TypeName\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\"  and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" c on a.\"sEquip_Icon\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		" 	left join \"tBase_AidEquip\" e on a.\"sEquip_ID\" = e.\"sAidEquip_EquipID\" ",
		" 	left join \"tBase_UserAid\" f on f.\"sUserAid_AidID\" = e.\"sAidEquip_AidID\" ",
		" 	left join \"tBase_UserStore\" e on a.\"sEquip_StoreLv1\" = e.\"sUserStore_StoreLv1ID\" ",
		" 		and a.\"sEquip_StoreLv2\" = e.\"sUserStore_StoreLv2ID\" ",
		" 		and a.\"sEquip_StoreLv3\" = e.\"sUserStore_StoreLv3ID\" ",
		" 		and a.\"sEquip_StoreLv4\" = e.\"sUserStore_StoreLv4ID\" ",
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
    	" 		and ( f.\"sUserAid_UserID\" = #{sUser_ID} or e.\"sUserStore_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select ",
		" 	a.*, ",
		" 	b.\"sDict_Name\" \"sEquip_TypeName\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\"  and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" c on a.\"sEquip_Icon\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		" 	left join \"tBase_AidEquip\" e on a.\"sEquip_ID\" = e.\"sAidEquip_EquipID\" ",
		" 	left join \"tBase_UserAid\" f on f.\"sUserAid_AidID\" = e.\"sAidEquip_AidID\" ",
		" 	left join \"tBase_UserStore\" e on a.\"sEquip_StoreLv1\" = e.\"sUserStore_StoreLv1ID\" ",
		" 		and a.\"sEquip_StoreLv2\" = e.\"sUserStore_StoreLv2ID\" ",
		" 		and a.\"sEquip_StoreLv3\" = e.\"sUserStore_StoreLv3ID\" ",
		" 		and a.\"sEquip_StoreLv4\" = e.\"sUserStore_StoreLv4ID\" ",
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
    	" 		and ( f.\"sUserAid_UserID\" = #{sUser_ID} or e.\"sUserStore_UserID\" = #{sUser_ID} ) ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<Map<String, Object>> selectPageByUser(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID,  @Param("start") int start, @Param("rows") int rows);

	@Select({
		"<script>",
		" select ",
		" 	count(*) ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sEquip_Type\" = b.\"sDict_NO\"  and b.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" c on a.\"sEquip_Icon\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		" 	left join \"tBase_AidEquip\" e on a.\"sEquip_ID\" = e.\"sAidEquip_EquipID\" ",
		" 	left join \"tBase_UserAid\" f on f.\"sUserAid_AidID\" = e.\"sAidEquip_AidID\" ",
		" 	left join \"tBase_UserStore\" e on a.\"sEquip_StoreLv1\" = e.\"sUserStore_StoreLv1ID\" ",
		" 		and a.\"sEquip_StoreLv2\" = e.\"sUserStore_StoreLv2ID\" ",
		" 		and a.\"sEquip_StoreLv3\" = e.\"sUserStore_StoreLv3ID\" ",
		" 		and a.\"sEquip_StoreLv4\" = e.\"sUserStore_StoreLv4ID\" ",
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
    	" 		and ( f.\"sUserAid_UserID\" = #{sUser_ID} or e.\"sUserStore_UserID\" = #{sUser_ID} ) ",		
    	"   </if>", 
		"</script>"
	})
	public long sizeByUser(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);

	
	@Select({
		"<script>",
		" select ",
		"	a.*, ",
		"	b.\"sStoreType_Name\" \"sEquip_StoreLv1Name\", ",
		"	c.\"sStore_Name\" \"sEquip_StoreLv2Name\", ",
		"	d.\"sStore_Name\" \"sEquip_StoreLv3Name\", ",
		"	e.\"sStore_Name\" \"sEquip_StoreLv4Name\", ",
		"	f.\"sNfc_NO\" \"sEquip_NfcNO\", ",
		"	g.\"sAid_Name\" \"sEquip_AidName\", ",
		"	h.\"sDict_Name\" \"sEquip_TypeName\", ",
		"	i.\"sDict_Name\" \"sEquip_StatusName\", ",
		"	j.\"sDict_Name\" \"sEquip_IconName\", ",
		"	n.\"sDict_Name\" \"sEquip_ManufacturerName\", ",
		"	p.*, ",
		"	q.*, ",
		"	s.*, ",
		"	t.*, ",
		"	u.*, ",
		"	v.*, ",
		"	w.*, ",
		"	x.*, ",
		"	p1.\"sDict_Name\" \"sAis_MMSIXName\", ",
		"	q1.\"sDict_Name\" \"sBattery_TypeName\", ",
		"	s1.\"sDict_Name\" \"sLamp_TypeName\", ",
		"	s2.\"sDict_Name\" \"sLamp_LensName\", ",
		"	s3.\"sDict_Name\" \"sLamp_TelemetryName\", ",
		"	t1.\"sDict_Name\" \"sRadar_NOName\", ",
		"	t2.\"sDict_Name\" \"sRadar_BandName\", ",
		"	u1.\"sDict_Name\" \"sSolar_TypeName\", ",
		"	w1.\"sDict_Name\" \"sTelemetry_ModeName\" ",
		" from \"tBase_Equip\" a ",
		" 	left join \"tBase_StoreType\" b on a.\"sEquip_StoreLv1\" = b.\"sStoreType_ID\" ",
		" 	left join \"tBase_Store\" c on a.\"sEquip_StoreLv2\" = c.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" d on a.\"sEquip_StoreLv3\" = d.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" e on a.\"sEquip_StoreLv4\" = e.\"sStore_ID\" ",
		" 	left join \"tBase_Nfc\" f on a.\"sEquip_NfcID\" = f.\"sNfc_ID\" ",
		" 	left join \"tBase_Aid\" g on a.\"sEquip_AidID\" = g.\"sAid_ID\" ",
		" 	left join \"tBase_Dict\" h on a.\"sEquip_Type\" = h.\"sDict_NO\" and h.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" i on a.\"sEquip_Status\" = i.\"sDict_NO\" and i.\"sDict_DictTypeNO\" = 'EquipStatus' ",
		" 	left join \"tBase_Dict\" j on a.\"sEquip_Icon\" = j.\"sDict_NO\" and j.\"sDict_DictTypeNO\" = 'EquipIcon' ",
		" 	left join \"tBase_Dict\" n on a.\"sEquip_Manufacturer\" = n.\"sDict_NO\" and n.\"sDict_DictTypeNO\" = 'EquipManufacturer' ",
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
		" 		) k on a.\"sEquip_AidID\" = k.\"sUserAid_AidID\" ",

		" 	left join \"tEquip_Ais\" p on a.\"sEquip_ID\" = p.\"sEquip_ID\" ",
		" 	left join \"tEquip_Battery\" q on a.\"sEquip_ID\" = q.\"sEquip_ID\" ",
		" 	left join \"tEquip_Lamp\" s on a.\"sEquip_ID\" = s.\"sEquip_ID\" ",
		" 	left join \"tEquip_Radar\" t on a.\"sEquip_ID\" = t.\"sEquip_ID\" ",
		" 	left join \"tEquip_SolarEnergy\" u on a.\"sEquip_ID\" = u.\"sEquip_ID\" ",
		" 	left join \"tEquip_SpareLamp\" v on a.\"sEquip_ID\" = v.\"sEquip_ID\" ",
		" 	left join \"tEquip_Telemetry\" w on a.\"sEquip_ID\" = w.\"sEquip_ID\" ",
		" 	left join \"tEquip_ViceLamp\" x on a.\"sEquip_ID\" = x.\"sEquip_ID\" ",
		" 	left join \"tBase_Dict\" p1 on p.\"sAis_MMSIX\" = p1.\"sDict_NO\" and p1.\"sDict_DictTypeNO\" = 'EquipAisMMSIX' ",
		" 	left join \"tBase_Dict\" q1 on q.\"sBattery_Type\" = q1.\"sDict_NO\" and q1.\"sDict_DictTypeNO\" = 'EquipBatteryType' ",
		" 	left join \"tBase_Dict\" s1 on s.\"sLamp_Type\" = s1.\"sDict_NO\" and s1.\"sDict_DictTypeNO\" = 'EquipLampType' ",
		" 	left join \"tBase_Dict\" s2 on s.\"sLamp_Lens\" = s2.\"sDict_NO\" and s2.\"sDict_DictTypeNO\" = 'EquipLampLens' ",
		" 	left join \"tBase_Dict\" s3 on s.\"sLamp_Telemetry\" = s3.\"sDict_NO\" and s3.\"sDict_DictTypeNO\" = 'EquipLampTelemetry' ",
		" 	left join \"tBase_Dict\" t1 on t.\"sRadar_NO\" = t1.\"sDict_NO\" and t1.\"sDict_DictTypeNO\" = 'EquipRadarNO' ",
		" 	left join \"tBase_Dict\" t2 on t.\"sRadar_Band\" = t2.\"sDict_NO\" and t2.\"sDict_DictTypeNO\" = 'EquipRadarBand' ",
		" 	left join \"tBase_Dict\" u1 on u.\"sSolar_Type\" = u1.\"sDict_NO\" and u1.\"sDict_DictTypeNO\" = 'EquipSolarEnergyType' ",
		" 	left join \"tBase_Dict\" w1 on w.\"sTelemetry_Mode\" = w1.\"sDict_NO\" and w1.\"sDict_DictTypeNO\" = 'EquipTelemetryMode' ",
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
    	" 		and k.\"sUserAid_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> export(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);
	
	
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
