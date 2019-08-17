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
	@Excel(name="更新日期", sort=0, length="", isNull=1 )
	private Date dDict_UpdateDate;
	@Excel(name="更新人ID", sort=0, length="32", isNull=1 )
	private String sDict_UpdateUserID;
	@Excel(name="系统默认  0：否，1：是", sort=0, length="10", isNull=1 )
	private int lDict_SysFlag;
	@Excel(name="字典描述", sort=0, length="255", isNull=1 )
	private String sDict_Describe;
	@Excel(name="字典图片", sort=0, length="255", isNull=1 )
	private String sDict_Picture;
	@Excel(name="字典链接", sort=0, length="255", isNull=1 )
	private String sDict_Link;
	@Excel(name="字典颜色", sort=0, length="255", isNull=1 )
	private String sDict_Color;
	
	


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
	public Date getdDict_UpdateDate() {
		return dDict_UpdateDate;
	}
	public void setdDict_UpdateDate(Date dDict_UpdateDate) {
		this.dDict_UpdateDate = dDict_UpdateDate;
	}
	public String getsDict_UpdateUserID() {
		return sDict_UpdateUserID;
	}
	public void setsDict_UpdateUserID(String sDict_UpdateUserID) {
		this.sDict_UpdateUserID = sDict_UpdateUserID;
	}
	public int getlDict_SysFlag() {
		return lDict_SysFlag;
	}
	public void setlDict_SysFlag(int lDict_SysFlag) {
		this.lDict_SysFlag = lDict_SysFlag;
	}
	public String getsDict_Describe() {
		return sDict_Describe;
	}
	public void setsDict_Describe(String sDict_Describe) {
		this.sDict_Describe = sDict_Describe;
	}
	public String getsDict_Picture() {
		return sDict_Picture;
	}
	public void setsDict_Picture(String sDict_Picture) {
		this.sDict_Picture = sDict_Picture;
	}
	public String getsDict_Link() {
		return sDict_Link;
	}
	public void setsDict_Link(String sDict_Link) {
		this.sDict_Link = sDict_Link;
	}
	public String getsDict_Color() {
		return sDict_Color;
	}
	public void setsDict_Color(String sDict_Color) {
		this.sDict_Color = sDict_Color;
	}
	
	
}
