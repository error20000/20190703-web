package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_EquipLife")
public class EquipLife extends Base<EquipLife> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sELife_ID;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	private Date dELife_CreateDate;
	@Excel(name="更新日期", sort=0, length="", isNull=1 )
	private Date dELife_UpdateDate;
	@Excel(name="器材分类", sort=0, length="64", isNull=1 )
	private String sELife_EquipType;
	@Excel(name="生产厂商", sort=0, length="64", isNull=1 )
	private String sELife_EquipManufacturer;
	@Excel(name="器材品牌", sort=0, length="255", isNull=1 )
	private String sELife_EquipMBrand;
	@Excel(name="器材航标站", sort=0, length="64", isNull=1 )
	private String sELife_AidStation;
	@Excel(name="平均寿命（秒）", sort=0, length="", isNull=1 )
	private long lELife_Time;
	@Excel(name="数量", sort=0, length="", isNull=1 )
	private long lELife_Num;
	@Excel(name="总寿命（秒）", sort=0, length="", isNull=1 )
	private long lELife_Total;
	

	
	public String getsELife_ID() {
		return sELife_ID;
	}
	public void setsELife_ID(String sELife_ID) {
		this.sELife_ID = sELife_ID;
	}
	public Date getdELife_CreateDate() {
		return dELife_CreateDate;
	}
	public void setdELife_CreateDate(Date dELife_CreateDate) {
		this.dELife_CreateDate = dELife_CreateDate;
	}
	public Date getdELife_UpdateDate() {
		return dELife_UpdateDate;
	}
	public void setdELife_UpdateDate(Date dELife_UpdateDate) {
		this.dELife_UpdateDate = dELife_UpdateDate;
	}
	public String getsELife_EquipType() {
		return sELife_EquipType;
	}
	public void setsELife_EquipType(String sELife_EquipType) {
		this.sELife_EquipType = sELife_EquipType;
	}
	public String getsELife_EquipManufacturer() {
		return sELife_EquipManufacturer;
	}
	public void setsELife_EquipManufacturer(String sELife_EquipManufacturer) {
		this.sELife_EquipManufacturer = sELife_EquipManufacturer;
	}
	public String getsELife_EquipMBrand() {
		return sELife_EquipMBrand;
	}
	public void setsELife_EquipMBrand(String sELife_EquipMBrand) {
		this.sELife_EquipMBrand = sELife_EquipMBrand;
	}
	public String getsELife_AidStation() {
		return sELife_AidStation;
	}
	public void setsELife_AidStation(String sELife_AidStation) {
		this.sELife_AidStation = sELife_AidStation;
	}
	public long getlELife_Time() {
		return lELife_Time;
	}
	public void setlELife_Time(long lELife_Time) {
		this.lELife_Time = lELife_Time;
	}
	public long getlELife_Num() {
		return lELife_Num;
	}
	public void setlELife_Num(long lELife_Num) {
		this.lELife_Num = lELife_Num;
	}
	public long getlELife_Total() {
		return lELife_Total;
	}
	public void setlELife_Total(long lELife_Total) {
		this.lELife_Total = lELife_Total;
	}

	
}
