package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.EquipLife;
import com.jian.system.entity.Message;

@Mapper
public interface EquipLifeMapper extends BaseMapper<EquipLife> {

	
	@Select({
		" select  ",
		"  a.*, ",
		"  b.*, ",
		"  c.\"sDict_Name\" \"sEquip_TypeName\", ",
		"  d.\"sDict_Name\" \"sAid_StationName\" ",
		" from \"tBase_Equip\" a",
		" 	inner join \"tBase_Aid\" b on a.\"sEquip_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_Dict\" c on a.\"sEquip_Type\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'EquipType' ",
		" 	left join \"tBase_Dict\" d on b.\"sAid_Station\" = d.\"sDict_NO\" and d.\"sDict_DictTypeNO\" = 'AidStation' ",
		" where ",
		" 	a.\"sEquip_Status\" = #{sEquip_Status} "
	})
	public List<Map<String, Object>> checkLife(String sEquip_Status);
	
	
	@Select({
		" select ",
		"	* ",
		" from \"tBase_Message\" ",
		" where \"sMsg_Type\" = '5' ",
		" 	and \"dMsg_CreateDate\" >= to_date(#{startDate}, 'yyyy-MM-dd HH24:mi:ss') ",
		"	and \"dMsg_CreateDate\" <= to_date(#{endDate}, 'yyyy-MM-dd HH24:mi:ss') "
	})
	public List<Message> isCheckedLife(@Param("startDate") String startDate, @Param("endDate") String endDate);
	
}
