package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Menu")
public class Menu extends Base<Menu> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sMenu_ID;
	@Excel(name="用户组名称", sort=0, length="10", isNull=1 )
	private String sMenu_Name;
	@Excel(name="父级菜单Id", sort=0, length="32", isNull=1 )
	private String sMenu_Parent;
	@Excel(name="菜单地址", sort=0, length="255", isNull=1 )
	private String sMenu_Url;
	@Excel(name="菜单Icon", sort=0, length="255", isNull=1 )
	private String sMenu_Icon;
	@Excel(name="状态 0：禁用，1：启用", sort=0, length="10", isNull=1 )
	private int lMenu_StatusFlag;
	
	
	public String getsMenu_ID() {
		return sMenu_ID;
	}
	public void setsMenu_ID(String sMenu_ID) {
		this.sMenu_ID = sMenu_ID;
	}
	public String getsMenu_Name() {
		return sMenu_Name;
	}
	public void setsMenu_Name(String sMenu_Name) {
		this.sMenu_Name = sMenu_Name;
	}
	public String getsMenu_Parent() {
		return sMenu_Parent;
	}
	public void setsMenu_Parent(String sMenu_Parent) {
		this.sMenu_Parent = sMenu_Parent;
	}
	public String getsMenu_Url() {
		return sMenu_Url;
	}
	public void setsMenu_Url(String sMenu_Url) {
		this.sMenu_Url = sMenu_Url;
	}
	public String getsMenu_Icon() {
		return sMenu_Icon;
	}
	public void setsMenu_Icon(String sMenu_Icon) {
		this.sMenu_Icon = sMenu_Icon;
	}
	public int getlMenu_StatusFlag() {
		return lMenu_StatusFlag;
	}
	public void setlMenu_StatusFlag(int lMenu_StatusFlag) {
		this.lMenu_StatusFlag = lMenu_StatusFlag;
	}
	
}
