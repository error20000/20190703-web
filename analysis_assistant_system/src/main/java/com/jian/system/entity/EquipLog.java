package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_EquipLog")
public class EquipLog extends Base<EquipLog> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sELog_ID;
	@Excel(name="日志类型", sort=0, length="64", isNull=1 )
	private String sELog_Type;
	@Excel(name="日期", sort=0, length="", isNull=1 )
	private Date dELog_CreateDate;
	@Excel(name="操作员ID", sort=0, length="32", isNull=1 )
	private String sELog_UserID;
	@Excel(name="器材ID", sort=0, length="32", isNull=1 )
	private String sELog_EquipID;
	@Excel(name="日志描述", sort=0, length="255", isNull=1 )
	private String sELog_Describe;
	@Excel(name="日志备注", sort=0, length="255", isNull=1 )
	private String sELog_Remarks;
	@Excel(name="操作员IP", sort=0, length="255", isNull=1 )
	private String sELog_IP;
	
	
	
	public String getsELog_ID() {
		return sELog_ID;
	}
	public void setsELog_ID(String sELog_ID) {
		this.sELog_ID = sELog_ID;
	}
	public String getsELog_Type() {
		return sELog_Type;
	}
	public void setsELog_Type(String sELog_Type) {
		this.sELog_Type = sELog_Type;
	}
	public Date getdELog_CreateDate() {
		return dELog_CreateDate;
	}
	public void setdELog_CreateDate(Date dELog_CreateDate) {
		this.dELog_CreateDate = dELog_CreateDate;
	}
	public String getsELog_UserID() {
		return sELog_UserID;
	}
	public void setsELog_UserID(String sELog_UserID) {
		this.sELog_UserID = sELog_UserID;
	}
	public String getsELog_EquipID() {
		return sELog_EquipID;
	}
	public void setsELog_EquipID(String sELog_EquipID) {
		this.sELog_EquipID = sELog_EquipID;
	}
	public String getsELog_Describe() {
		return sELog_Describe;
	}
	public void setsELog_Describe(String sELog_Describe) {
		this.sELog_Describe = sELog_Describe;
	}
	public String getsELog_Remarks() {
		return sELog_Remarks;
	}
	public void setsELog_Remarks(String sELog_Remarks) {
		this.sELog_Remarks = sELog_Remarks;
	}
	public String getsELog_IP() {
		return sELog_IP;
	}
	public void setsELog_IP(String sELog_IP) {
		this.sELog_IP = sELog_IP;
	}
	
}
