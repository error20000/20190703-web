package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_ViceLamp")
public class EquipViceLamp extends Base<EquipViceLamp> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="功率（W）", sort=0, length="", isNull=1 )
	private float lVLamp_Watt;


	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public float getlVLamp_Watt() {
		return lVLamp_Watt;
	}
	public void setlVLamp_Watt(float lVLamp_Watt) {
		this.lVLamp_Watt = lVLamp_Watt;
	}
	
	
}
