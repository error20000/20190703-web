package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_UserAid")
public class UserAid extends Base<UserAid> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sUserAid_ID;
	@Excel(name="用户ID", sort=0, length="32", isNull=1 )
	private String sUserAid_UserID;
	@Excel(name="航标ID", sort=0, length="32", isNull=1 )
	private String sUserAid_AidID;
	
	
	public String getsUserAid_ID() {
		return sUserAid_ID;
	}
	public void setsUserAid_ID(String sUserAid_ID) {
		this.sUserAid_ID = sUserAid_ID;
	}
	public String getsUserAid_UserID() {
		return sUserAid_UserID;
	}
	public void setsUserAid_UserID(String sUserAid_UserID) {
		this.sUserAid_UserID = sUserAid_UserID;
	}
	public String getsUserAid_AidID() {
		return sUserAid_AidID;
	}
	public void setsUserAid_AidID(String sUserAid_AidID) {
		this.sUserAid_AidID = sUserAid_AidID;
	}

}
