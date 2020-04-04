package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_AidImg")
public class AidImg extends Base<AidImg> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAidImg_ID;
	@Excel(name="航标状态", sort=0, length="255", isNull=1 )
	private String sAidImg_Url;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	private Date dAidImg_CreateDate;
	@Excel(name="航标ID", sort=0, length="32", isNull=1 )
	private String sAidImg_AidID;
	
	
	
	public String getsAidImg_ID() {
		return sAidImg_ID;
	}
	public void setsAidImg_ID(String sAidImg_ID) {
		this.sAidImg_ID = sAidImg_ID;
	}
	public String getsAidImg_Url() {
		return sAidImg_Url;
	}
	public void setsAidImg_Url(String sAidImg_Url) {
		this.sAidImg_Url = sAidImg_Url;
	}
	public Date getdAidImg_CreateDate() {
		return dAidImg_CreateDate;
	}
	public void setdAidImg_CreateDate(Date dAidImg_CreateDate) {
		this.dAidImg_CreateDate = dAidImg_CreateDate;
	}
	public String getsAidImg_AidID() {
		return sAidImg_AidID;
	}
	public void setsAidImg_AidID(String sAidImg_AidID) {
		this.sAidImg_AidID = sAidImg_AidID;
	}

	
}
