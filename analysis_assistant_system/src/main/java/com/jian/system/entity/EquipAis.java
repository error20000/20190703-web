package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_Ais")
public class EquipAis extends Base<EquipAis> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="MMSIX号", sort=0, length="64", isNull=1 )
	private String sAis_MMSIX;

	

	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsAis_MMSIX() {
		return sAis_MMSIX;
	}
	public void setsAis_MMSIX(String sAis_MMSIX) {
		this.sAis_MMSIX = sAis_MMSIX;
	}
	
}
