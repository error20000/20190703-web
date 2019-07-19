package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_GroupMenu")
public class GroupMenu extends Base<GroupMenu> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sGroupMenu_ID;
	@Excel(name="用户组ID", sort=0, length="32", isNull=1 )
	private String sGroupMenu_GroupID;
	@Excel(name="菜单ID", sort=0, length="32", isNull=1 )
	private String sGroupMenu_MenuID;
	
	
	public String getsGroupMenu_ID() {
		return sGroupMenu_ID;
	}
	public void setsGroupMenu_ID(String sGroupMenu_ID) {
		this.sGroupMenu_ID = sGroupMenu_ID;
	}
	public String getsGroupMenu_GroupID() {
		return sGroupMenu_GroupID;
	}
	public void setsGroupMenu_GroupID(String sGroupMenu_GroupID) {
		this.sGroupMenu_GroupID = sGroupMenu_GroupID;
	}
	public String getsGroupMenu_MenuID() {
		return sGroupMenu_MenuID;
	}
	public void setsGroupMenu_MenuID(String sGroupMenu_MenuID) {
		this.sGroupMenu_MenuID = sGroupMenu_MenuID;
	}
	
}
