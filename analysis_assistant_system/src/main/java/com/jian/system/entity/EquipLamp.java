package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tEquip_Lamp")
public class EquipLamp extends Base<EquipLamp> {


	@PrimaryKey
	@Excel(name="器材ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="编码", sort=0, length="255", isNull=1 )
	private String sLamp_NO;
	@Excel(name="品牌", sort=0, length="64", isNull=1 )
	private String sLamp_Brand;
	@Excel(name="类型", sort=0, length="64", isNull=1 )
	private String sLamp_Type;
	@Excel(name="输入电压（V）", sort=0, length="", isNull=1 )
	private float lLamp_InputVolt;
	@Excel(name="功率（W）", sort=0, length="", isNull=1 )
	private float lLamp_Watt;
	@Excel(name="透镜形状", sort=0, length="64", isNull=1 )
	private String sLamp_Lens;
	@Excel(name="遥测遥控接口 0：否，1：是", sort=0, length="", isNull=1 )
	private int lLamp_TelemetryFlag;
	@Excel(name="遥测接口类型", sort=0, length="255", isNull=1 )
	private String sLamp_Telemetry;
	

	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsLamp_NO() {
		return sLamp_NO;
	}
	public void setsLamp_NO(String sLamp_NO) {
		this.sLamp_NO = sLamp_NO;
	}
	public String getsLamp_Brand() {
		return sLamp_Brand;
	}
	public void setsLamp_Brand(String sLamp_Brand) {
		this.sLamp_Brand = sLamp_Brand;
	}
	public String getsLamp_Type() {
		return sLamp_Type;
	}
	public void setsLamp_Type(String sLamp_Type) {
		this.sLamp_Type = sLamp_Type;
	}
	public float getlLamp_InputVolt() {
		return lLamp_InputVolt;
	}
	public void setlLamp_InputVolt(float lLamp_InputVolt) {
		this.lLamp_InputVolt = lLamp_InputVolt;
	}
	public float getlLamp_Watt() {
		return lLamp_Watt;
	}
	public void setlLamp_Watt(float lLamp_Watt) {
		this.lLamp_Watt = lLamp_Watt;
	}
	public String getsLamp_Lens() {
		return sLamp_Lens;
	}
	public void setsLamp_Lens(String sLamp_Lens) {
		this.sLamp_Lens = sLamp_Lens;
	}
	public int getlLamp_TelemetryFlag() {
		return lLamp_TelemetryFlag;
	}
	public void setlLamp_TelemetryFlag(int lLamp_TelemetryFlag) {
		this.lLamp_TelemetryFlag = lLamp_TelemetryFlag;
	}
	public String getsLamp_Telemetry() {
		return sLamp_Telemetry;
	}
	public void setsLamp_Telemetry(String sLamp_Telemetry) {
		this.sLamp_Telemetry = sLamp_Telemetry;
	}
	
}
