package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_SolarEnergy")
public class EquipSolarEnergy extends Base<EquipSolarEnergy> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="编码", sort=0, length="255", isNull=1 )
	private String sSolar_NO;
	@Excel(name="种类", sort=0, length="64", isNull=1 )
	private String sSolar_Type;
	@Excel(name="额定电压（V）", sort=0, length="", isNull=1 )
	private float lSolar_Volt;
	@Excel(name="功率（W）", sort=0, length="", isNull=1 )
	private float lSolar_Watt;
	@Excel(name="连接方式", sort=0, length="255", isNull=1 )
	private String sSolar_Connect;
	

	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsSolar_NO() {
		return sSolar_NO;
	}
	public void setsSolar_NO(String sSolar_NO) {
		this.sSolar_NO = sSolar_NO;
	}
	public String getsSolar_Type() {
		return sSolar_Type;
	}
	public void setsSolar_Type(String sSolar_Type) {
		this.sSolar_Type = sSolar_Type;
	}
	public float getlSolar_Volt() {
		return lSolar_Volt;
	}
	public void setlSolar_Volt(float lSolar_Volt) {
		this.lSolar_Volt = lSolar_Volt;
	}
	public float getlSolar_Watt() {
		return lSolar_Watt;
	}
	public void setlSolar_Watt(float lSolar_Watt) {
		this.lSolar_Watt = lSolar_Watt;
	}
	public String getsSolar_Connect() {
		return sSolar_Connect;
	}
	public void setsSolar_Connect(String sSolar_Connect) {
		this.sSolar_Connect = sSolar_Connect;
	}
	
}
