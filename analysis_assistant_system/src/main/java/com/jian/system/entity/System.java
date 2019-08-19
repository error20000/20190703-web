package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_System")
public class System extends Base<System> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sSys_ID;
	@Excel(name="地图地址", sort=0, length="255", isNull=1 )
	private String sSys_MapService;
	@Excel(name="默认经度", sort=0, length="", isNull=1 )
	private float lSys_MapLng;
	@Excel(name="默认纬度", sort=0, length="", isNull=1 )
	private float lSys_MapLat;
	@Excel(name="默认级别", sort=0, length="", isNull=1 )
	private int lSys_MapLevel;
	@Excel(name="图标宽度", sort=0, length="", isNull=1 )
	private int lSys_MapIconWidth;
	@Excel(name="图标高度", sort=0, length="", isNull=1 )
	private int lSys_MapIconHeight;
	
	
	
	public String getsSys_ID() {
		return sSys_ID;
	}
	public void setsSys_ID(String sSys_ID) {
		this.sSys_ID = sSys_ID;
	}
	public String getsSys_MapService() {
		return sSys_MapService;
	}
	public void setsSys_MapService(String sSys_MapService) {
		this.sSys_MapService = sSys_MapService;
	}
	public float getlSys_MapLng() {
		return lSys_MapLng;
	}
	public void setlSys_MapLng(float lSys_MapLng) {
		this.lSys_MapLng = lSys_MapLng;
	}
	public float getlSys_MapLat() {
		return lSys_MapLat;
	}
	public void setlSys_MapLat(float lSys_MapLat) {
		this.lSys_MapLat = lSys_MapLat;
	}
	public int getlSys_MapLevel() {
		return lSys_MapLevel;
	}
	public void setlSys_MapLevel(int lSys_MapLevel) {
		this.lSys_MapLevel = lSys_MapLevel;
	}
	public int getlSys_MapIconWidth() {
		return lSys_MapIconWidth;
	}
	public void setlSys_MapIconWidth(int lSys_MapIconWidth) {
		this.lSys_MapIconWidth = lSys_MapIconWidth;
	}
	public int getlSys_MapIconHeight() {
		return lSys_MapIconHeight;
	}
	public void setlSys_MapIconHeight(int lSys_MapIconHeight) {
		this.lSys_MapIconHeight = lSys_MapIconHeight;
	}
	
	
}
