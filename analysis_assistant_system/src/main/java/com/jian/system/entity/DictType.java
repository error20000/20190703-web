package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_DictType")
public class DictType extends Base<DictType> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sDictType_ID;
	@Excel(name="字典分类编码", sort=0, length="64", isNull=1 )
	private String sDictType_NO;
	@Excel(name="字典分类名称", sort=0, length="64", isNull=1 )
	private String sDictType_Name;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	private Date dDictType_CreateDate;
	@Excel(name="创建人ID", sort=0, length="32", isNull=1 )
	private String sDictType_UserID;
	
	
	public String getsDictType_ID() {
		return sDictType_ID;
	}
	public void setsDictType_ID(String sDictType_ID) {
		this.sDictType_ID = sDictType_ID;
	}
	public String getsDictType_NO() {
		return sDictType_NO;
	}
	public void setsDictType_NO(String sDictType_NO) {
		this.sDictType_NO = sDictType_NO;
	}
	public String getsDictType_Name() {
		return sDictType_Name;
	}
	public void setsDictType_Name(String sDictType_Name) {
		this.sDictType_Name = sDictType_Name;
	}
	public Date getdDictType_CreateDate() {
		return dDictType_CreateDate;
	}
	public void setdDictType_CreateDate(Date dDictType_CreateDate) {
		this.dDictType_CreateDate = dDictType_CreateDate;
	}
	public String getsDictType_UserID() {
		return sDictType_UserID;
	}
	public void setsDictType_UserID(String sDictType_UserID) {
		this.sDictType_UserID = sDictType_UserID;
	}
	
	
}
