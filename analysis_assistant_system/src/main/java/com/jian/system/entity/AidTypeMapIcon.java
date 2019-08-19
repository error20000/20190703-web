package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_AidTypeMapIcon")
public class AidTypeMapIcon extends Base<AidTypeMapIcon> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAidTypeIcon_ID;
	@Excel(name="种类状态", sort=0, length="64", isNull=1 )
	private String sAidTypeIcon_Status;
	@Excel(name="状态图标", sort=0, length="64", isNull=1 )
	private String sAidTypeIcon_StatusIcon;
	@Excel(name="种类编码", sort=0, length="64", isNull=1 )
	private String sAidTypeIcon_Type;

	
	public String getsAidTypeIcon_ID() {
		return sAidTypeIcon_ID;
	}
	public void setsAidTypeIcon_ID(String sAidTypeIcon_ID) {
		this.sAidTypeIcon_ID = sAidTypeIcon_ID;
	}
	public String getsAidTypeIcon_Status() {
		return sAidTypeIcon_Status;
	}
	public void setsAidTypeIcon_Status(String sAidTypeIcon_Status) {
		this.sAidTypeIcon_Status = sAidTypeIcon_Status;
	}
	public String getsAidTypeIcon_StatusIcon() {
		return sAidTypeIcon_StatusIcon;
	}
	public void setsAidTypeIcon_StatusIcon(String sAidTypeIcon_StatusIcon) {
		this.sAidTypeIcon_StatusIcon = sAidTypeIcon_StatusIcon;
	}
	public String getsAidTypeIcon_Type() {
		return sAidTypeIcon_Type;
	}
	public void setsAidTypeIcon_Type(String sAidTypeIcon_Type) {
		this.sAidTypeIcon_Type = sAidTypeIcon_Type;
	}
	
	
}
