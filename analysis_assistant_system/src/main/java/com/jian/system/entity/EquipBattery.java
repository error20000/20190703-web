package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_Battery")
public class EquipBattery extends Base<EquipBattery> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="编码", sort=0, length="255", isNull=1 )
	private String sBattery_NO;
	@Excel(name="种类", sort=0, length="64", isNull=1 )
	private String sBattery_Type;
	@Excel(name="工作电压（V）", sort=0, length="", isNull=1 )
	private float lBattery_Volt;
	@Excel(name="容量（W）", sort=0, length="", isNull=1 )
	private float lBattery_Watt;
	@Excel(name="连接方式", sort=0, length="255", isNull=1 )
	private String sBattery_Connect;



	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsBattery_NO() {
		return sBattery_NO;
	}
	public void setsBattery_NO(String sBattery_NO) {
		this.sBattery_NO = sBattery_NO;
	}
	public String getsBattery_Type() {
		return sBattery_Type;
	}
	public void setsBattery_Type(String sBattery_Type) {
		this.sBattery_Type = sBattery_Type;
	}
	public float getlBattery_Volt() {
		return lBattery_Volt;
	}
	public void setlBattery_Volt(float lBattery_Volt) {
		this.lBattery_Volt = lBattery_Volt;
	}
	public float getlBattery_Watt() {
		return lBattery_Watt;
	}
	public void setlBattery_Watt(float lBattery_Watt) {
		this.lBattery_Watt = lBattery_Watt;
	}
	public String getsBattery_Connect() {
		return sBattery_Connect;
	}
	public void setsBattery_Connect(String sBattery_Connect) {
		this.sBattery_Connect = sBattery_Connect;
	}
	
}
