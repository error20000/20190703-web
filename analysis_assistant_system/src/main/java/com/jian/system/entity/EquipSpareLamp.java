package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_SpareLamp")
public class EquipSpareLamp extends Base<EquipSpareLamp> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="功率（W）", sort=0, length="", isNull=1 )
	private float lSLamp_Watt;


	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public float getlSLamp_Watt() {
		return lSLamp_Watt;
	}
	public void setlSLamp_Watt(float lSLamp_Watt) {
		this.lSLamp_Watt = lSLamp_Watt;
	}
	
	
}
