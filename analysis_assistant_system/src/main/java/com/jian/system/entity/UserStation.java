package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_UserStation")
public class UserStation extends Base<UserStation> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sUserStation_ID;
	@Excel(name="用户ID", sort=0, length="32", isNull=1 )
	private String sUserStation_UserID;
	@Excel(name="航标站", sort=0, length="64", isNull=1 )
	private String sUserStation_Station;
	
	
	public String getsUserStation_ID() {
		return sUserStation_ID;
	}
	public void setsUserStation_ID(String sUserStation_ID) {
		this.sUserStation_ID = sUserStation_ID;
	}
	public String getsUserStation_UserID() {
		return sUserStation_UserID;
	}
	public void setsUserStation_UserID(String sUserStation_UserID) {
		this.sUserStation_UserID = sUserStation_UserID;
	}
	public String getsUserStation_Station() {
		return sUserStation_Station;
	}
	public void setsUserStation_Station(String sUserStation_Station) {
		this.sUserStation_Station = sUserStation_Station;
	}

}
