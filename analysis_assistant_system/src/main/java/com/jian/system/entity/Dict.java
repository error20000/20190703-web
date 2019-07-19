package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Dict")
public class Dict extends Base<Dict> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sDict_ID;
	@Excel(name="字典编码", sort=0, length="64", isNull=1 )
	private String sDict_NO;
	@Excel(name="字典分类名称", sort=0, length="32", isNull=1 )
	private String sDict_Name;
	@Excel(name="创建日期", sort=0, length="", isNull=1 )
	private Date dDict_CreateDate;
	@Excel(name="创建人ID", sort=0, length="32", isNull=1 )
	private String sDict_UserID;
	@Excel(name="字典分类编码", sort=0, length="64", isNull=1 )
	private String sDict_DictTypeNO;
	
	
	public String getsDict_ID() {
		return sDict_ID;
	}
	public void setsDict_ID(String sDict_ID) {
		this.sDict_ID = sDict_ID;
	}
	public String getsDict_NO() {
		return sDict_NO;
	}
	public void setsDict_NO(String sDict_NO) {
		this.sDict_NO = sDict_NO;
	}
	public String getsDict_Name() {
		return sDict_Name;
	}
	public void setsDict_Name(String sDict_Name) {
		this.sDict_Name = sDict_Name;
	}
	public Date getdDict_CreateDate() {
		return dDict_CreateDate;
	}
	public void setdDict_CreateDate(Date dDict_CreateDate) {
		this.dDict_CreateDate = dDict_CreateDate;
	}
	public String getsDict_UserID() {
		return sDict_UserID;
	}
	public void setsDict_UserID(String sDict_UserID) {
		this.sDict_UserID = sDict_UserID;
	}
	public String getsDict_DictTypeNO() {
		return sDict_DictTypeNO;
	}
	public void setsDict_DictTypeNO(String sDict_DictTypeNO) {
		this.sDict_DictTypeNO = sDict_DictTypeNO;
	}
	
	
}
