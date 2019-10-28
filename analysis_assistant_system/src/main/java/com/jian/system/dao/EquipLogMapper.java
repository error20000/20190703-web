package com.jian.system.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.EquipLog;

@Mapper
public interface EquipLogMapper extends BaseMapper<EquipLog> {

	@Select({
		" select * ",
		" from \"tBase_EquipLog\" ",
		" where \"dELog_CreateDate\" >= #{syncDate} ",
	})
	public List<EquipLog> syncDate(@Param("syncDate") Date syncDate);
	


	@Select({
		" select ",
		" a.*, ",
		" b.\"sAid_Name\" \"sELog_AidName\", ",
		" c.\"sStoreType_Name\" \"sELog_StoreLv1Name\", ",
		" d.\"sStore_Name\" \"sELog_StoreLv2Name\", ",
		" e.\"sStore_Name\" \"sELog_StoreLv3Name\", ",
		" f.\"sStore_Name\" \"sELog_StoreLv4Name\" ",
		" from \"tBase_EquipLog\" a",
		" 	left join \"tBase_Aid\" b on a.\"sELog_AidID\" = b.\"sAid_ID\" ",
		" 	left join \"tBase_StoreType\" c on a.\"sELog_StoreLv1\" = c.\"sStoreType_ID\" ",
		" 	left join \"tBase_Store\" d on a.\"sELog_StoreLv2\" = d.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" e on a.\"sELog_StoreLv3\" = e.\"sStore_ID\" ",
		" 	left join \"tBase_Store\" f on a.\"sELog_StoreLv4\" = f.\"sStore_ID\" ",
		" where a.\"sELog_EquipID\" = #{sEquip_ID} ",
	})
	public List<Map<String, Object>> history(@Param("sEquip_ID") String sEquip_ID);
	
}
