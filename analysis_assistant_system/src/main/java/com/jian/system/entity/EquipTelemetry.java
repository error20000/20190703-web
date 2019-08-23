package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_Telemetry")
public class EquipTelemetry extends Base<EquipTelemetry> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="遥控遥测方式", sort=0, length="64", isNull=0 )
	private String sTelemetry_Mode;
	@Excel(name="功率（W）", sort=0, length="", isNull=1 )
	private float lTelemetry_Watt;
	@Excel(name="遥控遥测编码", sort=0, length="255", isNull=0 )
	private String sTelemetry_NO;
	@Excel(name="电压（V）", sort=0, length="", isNull=1 )
	private float lTelemetry_Volt;
	@Excel(name="SIM(MMIS) 卡号", sort=0, length="255", isNull=0 )
	private String sTelemetry_SIM;


	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsTelemetry_Mode() {
		return sTelemetry_Mode;
	}
	public void setsTelemetry_Mode(String sTelemetry_Mode) {
		this.sTelemetry_Mode = sTelemetry_Mode;
	}
	public float getlTelemetry_Watt() {
		return lTelemetry_Watt;
	}
	public void setlTelemetry_Watt(float lTelemetry_Watt) {
		this.lTelemetry_Watt = lTelemetry_Watt;
	}
	public String getsTelemetry_NO() {
		return sTelemetry_NO;
	}
	public void setsTelemetry_NO(String sTelemetry_NO) {
		this.sTelemetry_NO = sTelemetry_NO;
	}
	public float getlTelemetry_Volt() {
		return lTelemetry_Volt;
	}
	public void setlTelemetry_Volt(float lTelemetry_Volt) {
		this.lTelemetry_Volt = lTelemetry_Volt;
	}
	public String getsTelemetry_SIM() {
		return sTelemetry_SIM;
	}
	public void setsTelemetry_SIM(String sTelemetry_SIM) {
		this.sTelemetry_SIM = sTelemetry_SIM;
	}
	
	
}
