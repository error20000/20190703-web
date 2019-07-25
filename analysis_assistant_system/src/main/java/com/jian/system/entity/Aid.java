package com.jian.system.entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Aid")
public class Aid extends Base<Aid> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAid_ID;
	@Excel(name="航标名称", sort=0, length="64", isNull=1 )
	private String sAid_Name;
	@Excel(name="菜单航标编码", sort=0, length="64", isNull=1 )
	private String sAid_NO;
	@Excel(name="纬度", sort=0, length="", isNull=1 )
	private float lAid_Lat;
	@Excel(name="经度", sort=0, length="", isNull=1 )
	private float lAid_Lng;
	@Excel(name="归属航标站", sort=0, length="64", isNull=1 )
	private String sAid_Station;
	@Excel(name="航标种类", sort=0, length="64", isNull=1 )
	private String sAid_Type;
	@Excel(name="航标图标", sort=0, length="255", isNull=1 )
	private String sAid_Icon;
	@Excel(name="始建时间", sort=0, length="", isNull=1 )
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date dAid_BuildDate;
	@Excel(name="撤除时间", sort=0, length="", isNull=1 )
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date dAid_DelDate;
	@Excel(name="灯质明灭", sort=0, length="64", isNull=1 )
	private String sAid_Lighting;
	@Excel(name="航标设置", sort=0, length="64", isNull=1 )
	private String sAid_Mark;
	@Excel(name="NFC标签ID", sort=0, length="32", isNull=1 )
	private String sAid_NfcID;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date dAid_CreateDate;
	
	
	public String getsAid_ID() {
		return sAid_ID;
	}
	public void setsAid_ID(String sAid_ID) {
		this.sAid_ID = sAid_ID;
	}
	public String getsAid_Name() {
		return sAid_Name;
	}
	public void setsAid_Name(String sAid_Name) {
		this.sAid_Name = sAid_Name;
	}
	public String getsAid_NO() {
		return sAid_NO;
	}
	public void setsAid_NO(String sAid_NO) {
		this.sAid_NO = sAid_NO;
	}
	public float getlAid_Lat() {
		return lAid_Lat;
	}
	public void setlAid_Lat(float lAid_Lat) {
		this.lAid_Lat = lAid_Lat;
	}
	public float getlAid_Lng() {
		return lAid_Lng;
	}
	public void setlAid_Lng(float lAid_Lng) {
		this.lAid_Lng = lAid_Lng;
	}
	public String getsAid_Station() {
		return sAid_Station;
	}
	public void setsAid_Station(String sAid_Station) {
		this.sAid_Station = sAid_Station;
	}
	public String getsAid_Type() {
		return sAid_Type;
	}
	public void setsAid_Type(String sAid_Type) {
		this.sAid_Type = sAid_Type;
	}
	public String getsAid_Icon() {
		return sAid_Icon;
	}
	public void setsAid_Icon(String sAid_Icon) {
		this.sAid_Icon = sAid_Icon;
	}
	public Date getdAid_CreateDate() {
		return dAid_CreateDate;
	}
	public void setdAid_CreateDate(Date dAid_CreateDate) {
		this.dAid_CreateDate = dAid_CreateDate;
	}
	public Date getdAid_DelDate() {
		return dAid_DelDate;
	}
	public void setdAid_DelDate(Date dAid_DelDate) {
		this.dAid_DelDate = dAid_DelDate;
	}
	public String getsAid_Lighting() {
		return sAid_Lighting;
	}
	public void setsAid_Lighting(String sAid_Lighting) {
		this.sAid_Lighting = sAid_Lighting;
	}
	public String getsAid_Mark() {
		return sAid_Mark;
	}
	public void setsAid_Mark(String sAid_Mark) {
		this.sAid_Mark = sAid_Mark;
	}
	public String getsAid_NfcID() {
		return sAid_NfcID;
	}
	public void setsAid_NfcID(String sAid_NfcID) {
		this.sAid_NfcID = sAid_NfcID;
	}
	public Date getdAid_BuildDate() {
		return dAid_BuildDate;
	}
	public void setdAid_BuildDate(Date dAid_BuildDate) {
		this.dAid_BuildDate = dAid_BuildDate;
	}
	
}
