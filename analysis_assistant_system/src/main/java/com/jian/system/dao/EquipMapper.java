package com.jian.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
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
	
}
