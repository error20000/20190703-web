package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_Radar")
public class EquipRadar extends Base<EquipRadar> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="编码", sort=0, length="64", isNull=1 )
	private String sRadar_NO;
	@Excel(name="波段", sort=0, length="64", isNull=1 )
	private String sRadar_Band;
	

	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsRadar_NO() {
		return sRadar_NO;
	}
	public void setsRadar_NO(String sRadar_NO) {
		this.sRadar_NO = sRadar_NO;
	}
	public String getsRadar_Band() {
		return sRadar_Band;
	}
	public void setsRadar_Band(String sRadar_Band) {
		this.sRadar_Band = sRadar_Band;
	}
	
}
