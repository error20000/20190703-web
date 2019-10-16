package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_UserPosition")
public class UserPosition extends Base<UserPosition> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sUserPosition_ID;
	@Excel(name="用户ID", sort=0, length="32", isNull=1 )
	private String sUserPosition_UserID;
	@Excel(name="样式", sort=0, length="1000", isNull=1 )
	private String sUserPosition_Position;
	
	
	
	public String getsUserPosition_ID() {
		return sUserPosition_ID;
	}
	public void setsUserPosition_ID(String sUserPosition_ID) {
		this.sUserPosition_ID = sUserPosition_ID;
	}
	public String getsUserPosition_UserID() {
		return sUserPosition_UserID;
	}
	public void setsUserPosition_UserID(String sUserPosition_UserID) {
		this.sUserPosition_UserID = sUserPosition_UserID;
	}
	public String getsUserPosition_Position() {
		return sUserPosition_Position;
	}
	public void setsUserPosition_Position(String sUserPosition_Position) {
		this.sUserPosition_Position = sUserPosition_Position;
	}

}
