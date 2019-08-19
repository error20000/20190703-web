package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_AidMapIcon")
public class AidMapIcon extends Base<AidMapIcon> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAidIcon_ID;
	@Excel(name="航标状态", sort=0, length="64", isNull=1 )
	private String sAidIcon_Status;
	@Excel(name="状态图标", sort=0, length="64", isNull=1 )
	private String sAidIcon_StatusIcon;
	@Excel(name="航标ID", sort=0, length="32", isNull=1 )
	private String sAidIcon_AidID;
	

	
	public String getsAidIcon_ID() {
		return sAidIcon_ID;
	}
	public void setsAidIcon_ID(String sAidIcon_ID) {
		this.sAidIcon_ID = sAidIcon_ID;
	}
	public String getsAidIcon_Status() {
		return sAidIcon_Status;
	}
	public void setsAidIcon_Status(String sAidIcon_Status) {
		this.sAidIcon_Status = sAidIcon_Status;
	}
	public String getsAidIcon_StatusIcon() {
		return sAidIcon_StatusIcon;
	}
	public void setsAidIcon_StatusIcon(String sAidIcon_StatusIcon) {
		this.sAidIcon_StatusIcon = sAidIcon_StatusIcon;
	}
	public String getsAidIcon_AidID() {
		return sAidIcon_AidID;
	}
	public void setsAidIcon_AidID(String sAidIcon_AidID) {
		this.sAidIcon_AidID = sAidIcon_AidID;
	}

	
}
