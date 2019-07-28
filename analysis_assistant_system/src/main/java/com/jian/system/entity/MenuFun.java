package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_MenuFun")
public class MenuFun extends Base<MenuFun> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sMFun_ID;
	@Excel(name="名称", sort=0, length="10", isNull=1 )
	private String sMFun_Name;
	@Excel(name="所属菜单Id", sort=0, length="32", isNull=1 )
	private String sMFun_MenuID;
	@Excel(name="接口Id 多个逗号分隔", sort=0, length="255", isNull=1 )
	private String sMFun_InterfaceID;
	@Excel(name="状态 0：禁用，1：启用", sort=0, length="10", isNull=1 )
	private int lMFun_StatusFlag;
	@Excel(name="功能描述", sort=0, length="255", isNull=1 )
	private String sMFun_Describe;
	
	
	public String getsMFun_ID() {
		return sMFun_ID;
	}
	public void setsMFun_ID(String sMFun_ID) {
		this.sMFun_ID = sMFun_ID;
	}
	public String getsMFun_Name() {
		return sMFun_Name;
	}
	public void setsMFun_Name(String sMFun_Name) {
		this.sMFun_Name = sMFun_Name;
	}
	public String getsMFun_MenuID() {
		return sMFun_MenuID;
	}
	public void setsMFun_MenuID(String sMFun_MenuID) {
		this.sMFun_MenuID = sMFun_MenuID;
	}
	public String getsMFun_InterfaceID() {
		return sMFun_InterfaceID;
	}
	public void setsMFun_InterfaceID(String sMFun_InterfaceID) {
		this.sMFun_InterfaceID = sMFun_InterfaceID;
	}
	public int getlMFun_StatusFlag() {
		return lMFun_StatusFlag;
	}
	public void setlMFun_StatusFlag(int lMFun_StatusFlag) {
		this.lMFun_StatusFlag = lMFun_StatusFlag;
	}
	public String getsMFun_Describe() {
		return sMFun_Describe;
	}
	public void setsMFun_Describe(String sMFun_Describe) {
		this.sMFun_Describe = sMFun_Describe;
	}
	
}
