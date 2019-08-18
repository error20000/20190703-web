package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Message")
public class Message extends Base<Message> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sMsg_ID;
	@Excel(name="消息类型", sort=0, length="64", isNull=1 )
	private String sMsg_Type;
	@Excel(name="消息日期", sort=0, length="", isNull=1 )
	private Date dMsg_CreateDate;
	@Excel(name="接收消息人员ID", sort=0, length="32", isNull=1 )
	private String sMsg_ToUserID;
	@Excel(name="器材ID", sort=0, length="32", isNull=1 )
	private String sMsg_EquipID;
	@Excel(name="消息描述", sort=0, length="255", isNull=1 )
	private String sMsg_Describe;
	@Excel(name="消息备注", sort=0, length="255", isNull=1 )
	private String sMsg_Remarks;
	@Excel(name="消息更新日期", sort=0, length="", isNull=1 )
	private Date dMsg_UpdateDate;
	@Excel(name="操作员ID", sort=0, length="32", isNull=1 )
	private String sMsg_UserID;
	@Excel(name="航标ID", sort=0, length="32", isNull=1 )
	private String sMsg_AidID;
	@Excel(name="操作员IP", sort=0, length="255", isNull=1 )
	private String sMsg_IP;
	@Excel(name="产生消息人员ID", sort=0, length="32", isNull=1 )
	private String sMsg_FromUserID;
	@Excel(name="消息自定义标签", sort=0, length="64", isNull=1 )
	private String sMsg_Label;
	@Excel(name="消息重要级别", sort=0, length="", isNull=1 )
	private int lMsg_Level = Integer.MAX_VALUE;
	@Excel(name="消息状态", sort=0, length="64", isNull=1 )
	private String sMsg_Status;
	@Excel(name="消息标题", sort=0, length="32", isNull=1 )
	private String sMsg_Title;
	
	

	public String getsMsg_ID() {
		return sMsg_ID;
	}
	public void setsMsg_ID(String sMsg_ID) {
		this.sMsg_ID = sMsg_ID;
	}
	public String getsMsg_Type() {
		return sMsg_Type;
	}
	public void setsMsg_Type(String sMsg_Type) {
		this.sMsg_Type = sMsg_Type;
	}
	public Date getdMsg_CreateDate() {
		return dMsg_CreateDate;
	}
	public void setdMsg_CreateDate(Date dMsg_CreateDate) {
		this.dMsg_CreateDate = dMsg_CreateDate;
	}
	public String getsMsg_ToUserID() {
		return sMsg_ToUserID;
	}
	public void setsMsg_ToUserID(String sMsg_ToUserID) {
		this.sMsg_ToUserID = sMsg_ToUserID;
	}
	public String getsMsg_EquipID() {
		return sMsg_EquipID;
	}
	public void setsMsg_EquipID(String sMsg_EquipID) {
		this.sMsg_EquipID = sMsg_EquipID;
	}
	public String getsMsg_Describe() {
		return sMsg_Describe;
	}
	public void setsMsg_Describe(String sMsg_Describe) {
		this.sMsg_Describe = sMsg_Describe;
	}
	public String getsMsg_Remarks() {
		return sMsg_Remarks;
	}
	public void setsMsg_Remarks(String sMsg_Remarks) {
		this.sMsg_Remarks = sMsg_Remarks;
	}
	public Date getdMsg_UpdateDate() {
		return dMsg_UpdateDate;
	}
	public void setdMsg_UpdateDate(Date dMsg_UpdateDate) {
		this.dMsg_UpdateDate = dMsg_UpdateDate;
	}
	public String getsMsg_UserID() {
		return sMsg_UserID;
	}
	public void setsMsg_UserID(String sMsg_UserID) {
		this.sMsg_UserID = sMsg_UserID;
	}
	public String getsMsg_AidID() {
		return sMsg_AidID;
	}
	public void setsMsg_AidID(String sMsg_AidID) {
		this.sMsg_AidID = sMsg_AidID;
	}
	public String getsMsg_IP() {
		return sMsg_IP;
	}
	public void setsMsg_IP(String sMsg_IP) {
		this.sMsg_IP = sMsg_IP;
	}
	public String getsMsg_FromUserID() {
		return sMsg_FromUserID;
	}
	public void setsMsg_FromUserID(String sMsg_FromUserID) {
		this.sMsg_FromUserID = sMsg_FromUserID;
	}
	public String getsMsg_Label() {
		return sMsg_Label;
	}
	public void setsMsg_Label(String sMsg_Label) {
		this.sMsg_Label = sMsg_Label;
	}
	public int getlMsg_Level() {
		return lMsg_Level;
	}
	public void setlMsg_Level(int lMsg_Level) {
		this.lMsg_Level = lMsg_Level;
	}
	public String getsMsg_Title() {
		return sMsg_Title;
	}
	public void setsMsg_Title(String sMsg_Title) {
		this.sMsg_Title = sMsg_Title;
	}
	public String getsMsg_Status() {
		return sMsg_Status;
	}
	public void setsMsg_Status(String sMsg_Status) {
		this.sMsg_Status = sMsg_Status;
	}
	
}
