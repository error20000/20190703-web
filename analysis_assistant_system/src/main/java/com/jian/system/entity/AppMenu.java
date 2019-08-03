package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_AppMenu")
public class AppMenu extends Base<AppMenu> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAppMenu_ID;
	@Excel(name="应用ID", sort=0, length="32", isNull=1 )
	private String sAppMenu_AppID;
	@Excel(name="菜单ID", sort=0, length="32", isNull=1 )
	private String sAppMenu_MenuID;
	@Excel(name="菜单功能ID 多个逗号分隔", sort=0, length="255", isNull=1 )
	private String sAppMenu_MenuFunID;
	
	
	
	public String getsAppMenu_ID() {
		return sAppMenu_ID;
	}
	public void setsAppMenu_ID(String sAppMenu_ID) {
		this.sAppMenu_ID = sAppMenu_ID;
	}
	public String getsAppMenu_AppID() {
		return sAppMenu_AppID;
	}
	public void setsAppMenu_AppID(String sAppMenu_AppID) {
		this.sAppMenu_AppID = sAppMenu_AppID;
	}
	public String getsAppMenu_MenuID() {
		return sAppMenu_MenuID;
	}
	public void setsAppMenu_MenuID(String sAppMenu_MenuID) {
		this.sAppMenu_MenuID = sAppMenu_MenuID;
	}
	public String getsAppMenu_MenuFunID() {
		return sAppMenu_MenuFunID;
	}
	public void setsAppMenu_MenuFunID(String sAppMenu_MenuFunID) {
		this.sAppMenu_MenuFunID = sAppMenu_MenuFunID;
	}
	
}
