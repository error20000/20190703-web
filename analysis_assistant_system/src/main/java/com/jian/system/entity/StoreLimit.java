package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_StoreLimit")
public class StoreLimit extends Base<StoreLimit> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sSLimit_ID;
	@Excel(name="仓库ID", sort=0, length="32", isNull=1 )
	private String sSLimit_StoreID;
	@Excel(name="器材种类", sort=0, length="64", isNull=1 )
	private String sSLimit_EquipType;
	@Excel(name="库存预警值", sort=0, length="", isNull=1 )
	private int lSLimit_Num;
	
	
	
	public String getsSLimit_ID() {
		return sSLimit_ID;
	}
	public void setsSLimit_ID(String sSLimit_ID) {
		this.sSLimit_ID = sSLimit_ID;
	}
	public String getsSLimit_StoreID() {
		return sSLimit_StoreID;
	}
	public void setsSLimit_StoreID(String sSLimit_StoreID) {
		this.sSLimit_StoreID = sSLimit_StoreID;
	}
	public String getsSLimit_EquipType() {
		return sSLimit_EquipType;
	}
	public void setsSLimit_EquipType(String sSLimit_EquipType) {
		this.sSLimit_EquipType = sSLimit_EquipType;
	}
	public int getlSLimit_Num() {
		return lSLimit_Num;
	}
	public void setlSLimit_Num(int lSLimit_Num) {
		this.lSLimit_Num = lSLimit_Num;
	}
	
	
}
