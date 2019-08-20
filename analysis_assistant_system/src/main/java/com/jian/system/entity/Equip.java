package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Equip")
public class Equip extends Base<Equip> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sEquip_ID;
	@Excel(name="器材编码", sort=0, length="64", isNull=1 )
	private String sEquip_NO;
	@Excel(name="器材名称", sort=0, length="64", isNull=1 )
	private String sEquip_Name;
	@Excel(name="一级仓库", sort=0, length="32", isNull=1 )
	private String sEquip_StoreLv1;
	@Excel(name="二级仓库", sort=0, length="32", isNull=1 )
	private String sEquip_StoreLv2;
	@Excel(name="三级仓库", sort=0, length="32", isNull=1 )
	private String sEquip_StoreLv3;
	@Excel(name="四级仓库", sort=0, length="32", isNull=1 )
	private String sEquip_StoreLv4;
	@Excel(name="器材类型", sort=0, length="64", isNull=1 )
	private String sEquip_Type;
	@Excel(name="器材状态", sort=0, length="64", isNull=1 )
	private String sEquip_Status;
	@Excel(name="NFC标签ID", sort=0, length="32", isNull=1 )
	private String sEquip_NfcID;
	@Excel(name="航标ID", sort=0, length="32", isNull=1 )
	private String sEquip_AidID;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	private Date dEquip_CreateDate;
	@Excel(name="器材Icon", sort=0, length="64", isNull=1 )
	private String sEquip_Icon;
	@Excel(name="生产厂家", sort=0, length="64", isNull=1 )
	private String sEquip_Manufacturer;
	@Excel(name="厂方型号", sort=0, length="64", isNull=1 )
	private String sEquip_MModel;
	@Excel(name="到货日期", sort=0, length="", isNull=1 )
	private Date dEquip_ArrivalDate;
	@Excel(name="使用日期", sort=0, length="", isNull=1 )
	private Date dEquip_UseDate;
	
	

	
	public String getsEquip_ID() {
		return sEquip_ID;
	}
	public void setsEquip_ID(String sEquip_ID) {
		this.sEquip_ID = sEquip_ID;
	}
	public String getsEquip_Name() {
		return sEquip_Name;
	}
	public void setsEquip_Name(String sEquip_Name) {
		this.sEquip_Name = sEquip_Name;
	}
	public String getsEquip_StoreLv1() {
		return sEquip_StoreLv1;
	}
	public void setsEquip_StoreLv1(String sEquip_StoreLv1) {
		this.sEquip_StoreLv1 = sEquip_StoreLv1;
	}
	public String getsEquip_StoreLv2() {
		return sEquip_StoreLv2;
	}
	public void setsEquip_StoreLv2(String sEquip_StoreLv2) {
		this.sEquip_StoreLv2 = sEquip_StoreLv2;
	}
	public String getsEquip_StoreLv3() {
		return sEquip_StoreLv3;
	}
	public void setsEquip_StoreLv3(String sEquip_StoreLv3) {
		this.sEquip_StoreLv3 = sEquip_StoreLv3;
	}
	public String getsEquip_StoreLv4() {
		return sEquip_StoreLv4;
	}
	public void setsEquip_StoreLv4(String sEquip_StoreLv4) {
		this.sEquip_StoreLv4 = sEquip_StoreLv4;
	}
	public String getsEquip_Type() {
		return sEquip_Type;
	}
	public void setsEquip_Type(String sEquip_Type) {
		this.sEquip_Type = sEquip_Type;
	}
	public String getsEquip_NfcID() {
		return sEquip_NfcID;
	}
	public void setsEquip_NfcID(String sEquip_NfcID) {
		this.sEquip_NfcID = sEquip_NfcID;
	}
	public String getsEquip_AidID() {
		return sEquip_AidID;
	}
	public void setsEquip_AidID(String sEquip_AidID) {
		this.sEquip_AidID = sEquip_AidID;
	}
	public Date getdEquip_CreateDate() {
		return dEquip_CreateDate;
	}
	public void setdEquip_CreateDate(Date dEquip_CreateDate) {
		this.dEquip_CreateDate = dEquip_CreateDate;
	}
	public String getsEquip_NO() {
		return sEquip_NO;
	}
	public void setsEquip_NO(String sEquip_NO) {
		this.sEquip_NO = sEquip_NO;
	}
	public String getsEquip_Status() {
		return sEquip_Status;
	}
	public void setsEquip_Status(String sEquip_Status) {
		this.sEquip_Status = sEquip_Status;
	}
	public String getsEquip_Icon() {
		return sEquip_Icon;
	}
	public void setsEquip_Icon(String sEquip_Icon) {
		this.sEquip_Icon = sEquip_Icon;
	}
	public String getsEquip_Manufacturer() {
		return sEquip_Manufacturer;
	}
	public void setsEquip_Manufacturer(String sEquip_Manufacturer) {
		this.sEquip_Manufacturer = sEquip_Manufacturer;
	}
	public String getsEquip_MModel() {
		return sEquip_MModel;
	}
	public void setsEquip_MModel(String sEquip_MModel) {
		this.sEquip_MModel = sEquip_MModel;
	}
	public Date getdEquip_ArrivalDate() {
		return dEquip_ArrivalDate;
	}
	public void setdEquip_ArrivalDate(Date dEquip_ArrivalDate) {
		this.dEquip_ArrivalDate = dEquip_ArrivalDate;
	}
	public Date getdEquip_UseDate() {
		return dEquip_UseDate;
	}
	public void setdEquip_UseDate(Date dEquip_UseDate) {
		this.dEquip_UseDate = dEquip_UseDate;
	}
	
}
