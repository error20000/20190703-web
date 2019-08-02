package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Nfc")
public class Nfc extends Base<Nfc> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sNfc_ID;
	@Excel(name="名称", sort=0, length="64", isNull=1 )
	private String sNfc_Name;
	@Excel(name="编码", sort=0, length="64", isNull=1 )
	private String sNfc_NO;
	@Excel(name="状态 0：未使用，1：已使用", sort=0, length="", isNull=1 )
	private int lNfc_StatusFlag;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	private Date dNfc_CreateDate;


	
	public String getsNfc_ID() {
		return sNfc_ID;
	}
	public void setsNfc_ID(String sNfc_ID) {
		this.sNfc_ID = sNfc_ID;
	}
	public String getsNfc_Name() {
		return sNfc_Name;
	}
	public void setsNfc_Name(String sNfc_Name) {
		this.sNfc_Name = sNfc_Name;
	}
	public String getsNfc_NO() {
		return sNfc_NO;
	}
	public void setsNfc_NO(String sNfc_NO) {
		this.sNfc_NO = sNfc_NO;
	}
	public int getlNfc_StatusFlag() {
		return lNfc_StatusFlag;
	}
	public void setlNfc_StatusFlag(int lNfc_StatusFlag) {
		this.lNfc_StatusFlag = lNfc_StatusFlag;
	}
	public Date getdNfc_CreateDate() {
		return dNfc_CreateDate;
	}
	public void setdNfc_CreateDate(Date dNfc_CreateDate) {
		this.dNfc_CreateDate = dNfc_CreateDate;
	}
	
}
