package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_App")
public class App extends Base<App> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sApp_ID;
	@Excel(name="应用名称", sort=0, length="10", isNull=1 )
	private String sApp_Name;
	@Excel(name="应用编码", sort=0, length="32", isNull=1 )
	private String sApp_NO;
	@Excel(name="应用秘钥", sort=0, length="255", isNull=1 )
	private String sApp_SecretKey;
	@Excel(name="状态 0：禁用，1：启用", sort=0, length="10", isNull=1 )
	private int lApp_StatusFlag;
	@Excel(name="创建日期", sort=0, length="10", isNull=1 )
	private Date dApp_CreateDate;
	@Excel(name="创建人ID", sort=0, length="10", isNull=1 )
	private String sApp_UserID;
	
	
	public String getsApp_ID() {
		return sApp_ID;
	}
	public void setsApp_ID(String sApp_ID) {
		this.sApp_ID = sApp_ID;
	}
	public String getsApp_Name() {
		return sApp_Name;
	}
	public void setsApp_Name(String sApp_Name) {
		this.sApp_Name = sApp_Name;
	}
	public String getsApp_NO() {
		return sApp_NO;
	}
	public void setsApp_NO(String sApp_NO) {
		this.sApp_NO = sApp_NO;
	}
	public String getsApp_SecretKey() {
		return sApp_SecretKey;
	}
	public void setsApp_SecretKey(String sApp_SecretKey) {
		this.sApp_SecretKey = sApp_SecretKey;
	}
	public int getlApp_StatusFlag() {
		return lApp_StatusFlag;
	}
	public void setlApp_StatusFlag(int lApp_StatusFlag) {
		this.lApp_StatusFlag = lApp_StatusFlag;
	}
	public Date getdApp_CreateDate() {
		return dApp_CreateDate;
	}
	public void setdApp_CreateDate(Date dApp_CreateDate) {
		this.dApp_CreateDate = dApp_CreateDate;
	}
	public String getsApp_UserID() {
		return sApp_UserID;
	}
	public void setsApp_UserID(String sApp_UserID) {
		this.sApp_UserID = sApp_UserID;
	}

}
