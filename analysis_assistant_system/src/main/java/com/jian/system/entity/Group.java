package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Group")
public class Group extends Base<Group> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sGroup_ID;
	@Excel(name="用户组名称", sort=0, length="10", isNull=1 )
	private String sGroup_Name;
	
	
	public String getsGroup_ID() {
		return sGroup_ID;
	}
	public void setsGroup_ID(String sGroup_ID) {
		this.sGroup_ID = sGroup_ID;
	}
	public String getsGroup_Name() {
		return sGroup_Name;
	}
	public void setsGroup_Name(String sGroup_Name) {
		this.sGroup_Name = sGroup_Name;
	}
	
}
