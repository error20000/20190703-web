package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Store")
public class Store extends Base<Store> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sStore_ID;
	@Excel(name="仓库名称", sort=0, length="64", isNull=1 )
	private String sStore_Name;
	@Excel(name="一级仓库", sort=0, length="32", isNull=1 )
	private String sStore_Level1;
	@Excel(name="二级仓库", sort=0, length="32", isNull=1 )
	private String sStore_Level2;
	@Excel(name="三级仓库", sort=0, length="32", isNull=1 )
	private String sStore_Level3;
	public String getsStore_ID() {
		return sStore_ID;
	}
	public void setsStore_ID(String sStore_ID) {
		this.sStore_ID = sStore_ID;
	}
	public String getsStore_Name() {
		return sStore_Name;
	}
	public void setsStore_Name(String sStore_Name) {
		this.sStore_Name = sStore_Name;
	}
	public String getsStore_Level1() {
		return sStore_Level1;
	}
	public void setsStore_Level1(String sStore_Level1) {
		this.sStore_Level1 = sStore_Level1;
	}
	public String getsStore_Level2() {
		return sStore_Level2;
	}
	public void setsStore_Level2(String sStore_Level2) {
		this.sStore_Level2 = sStore_Level2;
	}
	public String getsStore_Level3() {
		return sStore_Level3;
	}
	public void setsStore_Level3(String sStore_Level3) {
		this.sStore_Level3 = sStore_Level3;
	}
	
}
