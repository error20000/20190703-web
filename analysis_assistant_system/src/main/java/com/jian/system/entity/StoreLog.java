package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_StoreLog")
public class StoreLog extends Base<StoreLog> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sSLog_ID;
	@Excel(name="日期", sort=0, length="", isNull=1 )
	private Date dSLog_CreateDate;
	@Excel(name="一级仓库", sort=0, length="32", isNull=1 )
	private String sSLog_StoreLv1;
	@Excel(name="二级仓库", sort=0, length="32", isNull=1 )
	private String sSLog_StoreLv2;
	@Excel(name="三级仓库", sort=0, length="32", isNull=1 )
	private String sSLog_StoreLv3;
	@Excel(name="四级仓库", sort=0, length="32", isNull=1 )
	private String sSLog_StoreLv4;
	@Excel(name="器材分类", sort=0, length="64", isNull=1 )
	private String sSLog_EquipType;
	@Excel(name="器材数量", sort=0, length="", isNull=1 )
	private int dSLog_EquipNum;
	
	
	
	public String getsSLog_ID() {
		return sSLog_ID;
	}
	public void setsSLog_ID(String sSLog_ID) {
		this.sSLog_ID = sSLog_ID;
	}
	public Date getdSLog_CreateDate() {
		return dSLog_CreateDate;
	}
	public void setdSLog_CreateDate(Date dSLog_CreateDate) {
		this.dSLog_CreateDate = dSLog_CreateDate;
	}
	public String getsSLog_StoreLv1() {
		return sSLog_StoreLv1;
	}
	public void setsSLog_StoreLv1(String sSLog_StoreLv1) {
		this.sSLog_StoreLv1 = sSLog_StoreLv1;
	}
	public String getsSLog_StoreLv2() {
		return sSLog_StoreLv2;
	}
	public void setsSLog_StoreLv2(String sSLog_StoreLv2) {
		this.sSLog_StoreLv2 = sSLog_StoreLv2;
	}
	public String getsSLog_StoreLv3() {
		return sSLog_StoreLv3;
	}
	public void setsSLog_StoreLv3(String sSLog_StoreLv3) {
		this.sSLog_StoreLv3 = sSLog_StoreLv3;
	}
	public String getsSLog_StoreLv4() {
		return sSLog_StoreLv4;
	}
	public void setsSLog_StoreLv4(String sSLog_StoreLv4) {
		this.sSLog_StoreLv4 = sSLog_StoreLv4;
	}
	public String getsSLog_EquipType() {
		return sSLog_EquipType;
	}
	public void setsSLog_EquipType(String sSLog_EquipType) {
		this.sSLog_EquipType = sSLog_EquipType;
	}
	public int getdSLog_EquipNum() {
		return dSLog_EquipNum;
	}
	public void setdSLog_EquipNum(int dSLog_EquipNum) {
		this.dSLog_EquipNum = dSLog_EquipNum;
	}
	
	
}
