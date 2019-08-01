package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_MenuInterface")
public class MenuIfs extends Base<MenuIfs> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sInterface_ID;
	@Excel(name="接口名称", sort=0, length="10", isNull=1 )
	private String sInterface_Name;
	@Excel(name="接口地址", sort=0, length="32", isNull=1 )
	private String sInterface_Url;
	@Excel(name="接口所属菜单  多个逗号分隔", sort=0, length="255", isNull=1 )
	private String sInterface_MenuID;
	@Excel(name="状态 0：禁用，1：启用", sort=0, length="10", isNull=1 )
	private int lInterface_StatusFlag;
	@Excel(name="接口所属菜单按钮  多个逗号分隔", sort=0, length="255", isNull=1 )
	private String sInterface_MFunID;
	
	
	
	public String getsInterface_ID() {
		return sInterface_ID;
	}
	public void setsInterface_ID(String sInterface_ID) {
		this.sInterface_ID = sInterface_ID;
	}
	public String getsInterface_Name() {
		return sInterface_Name;
	}
	public void setsInterface_Name(String sInterface_Name) {
		this.sInterface_Name = sInterface_Name;
	}
	public String getsInterface_Url() {
		return sInterface_Url;
	}
	public void setsInterface_Url(String sInterface_Url) {
		this.sInterface_Url = sInterface_Url;
	}
	public String getsInterface_MenuID() {
		return sInterface_MenuID;
	}
	public void setsInterface_MenuID(String sInterface_MenuID) {
		this.sInterface_MenuID = sInterface_MenuID;
	}
	public int getlInterface_StatusFlag() {
		return lInterface_StatusFlag;
	}
	public void setlInterface_StatusFlag(int lInterface_StatusFlag) {
		this.lInterface_StatusFlag = lInterface_StatusFlag;
	}
	public String getsInterface_MFunID() {
		return sInterface_MFunID;
	}
	public void setsInterface_MFunID(String sInterface_MFunID) {
		this.sInterface_MFunID = sInterface_MFunID;
	}
	
}
