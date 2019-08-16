package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_AidEquip")
public class AidEquip extends Base<AidEquip> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAidEquip_ID;
	@Excel(name="航标ID", sort=0, length="32", isNull=1 )
	private String sAidEquip_AidID;
	@Excel(name="器材ID", sort=0, length="32", isNull=1 )
	private String sAidEquip_EquipID;
	@Excel(name="绑定时间", sort=0, length="", isNull=1 )
	private Date dAidEquip_CreateDate;

	
	public String getsAidEquip_ID() {
		return sAidEquip_ID;
	}
	public void setsAidEquip_ID(String sAidEquip_ID) {
		this.sAidEquip_ID = sAidEquip_ID;
	}
	public String getsAidEquip_AidID() {
		return sAidEquip_AidID;
	}
	public void setsAidEquip_AidID(String sAidEquip_AidID) {
		this.sAidEquip_AidID = sAidEquip_AidID;
	}
	public String getsAidEquip_EquipID() {
		return sAidEquip_EquipID;
	}
	public void setsAidEquip_EquipID(String sAidEquip_EquipID) {
		this.sAidEquip_EquipID = sAidEquip_EquipID;
	}
	public Date getdAidEquip_CreateDate() {
		return dAidEquip_CreateDate;
	}
	public void setdAidEquip_CreateDate(Date dAidEquip_CreateDate) {
		this.dAidEquip_CreateDate = dAidEquip_CreateDate;
	}
	
	
}
