package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_UserMenu")
public class UserMenu extends Base<UserMenu> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sUserMenu_ID;
	@Excel(name="用户ID", sort=0, length="32", isNull=1 )
	private String sUserMenu_UserID;
	@Excel(name="菜单ID", sort=0, length="32", isNull=1 )
	private String sUserMenu_MenuID;
	@Excel(name="菜单功能ID 多个逗号分隔", sort=0, length="255", isNull=1 )
	private String sUserMenu_MenuFunID;
	
	
	public String getsUserMenu_ID() {
		return sUserMenu_ID;
	}
	public void setsUserMenu_ID(String sUserMenu_ID) {
		this.sUserMenu_ID = sUserMenu_ID;
	}
	public String getsUserMenu_UserID() {
		return sUserMenu_UserID;
	}
	public void setsUserMenu_UserID(String sUserMenu_UserID) {
		this.sUserMenu_UserID = sUserMenu_UserID;
	}
	public String getsUserMenu_MenuID() {
		return sUserMenu_MenuID;
	}
	public void setsUserMenu_MenuID(String sUserMenu_MenuID) {
		this.sUserMenu_MenuID = sUserMenu_MenuID;
	}
	public String getsUserMenu_MenuFunID() {
		return sUserMenu_MenuFunID;
	}
	public void setsUserMenu_MenuFunID(String sUserMenu_MenuFunID) {
		this.sUserMenu_MenuFunID = sUserMenu_MenuFunID;
	}

}
