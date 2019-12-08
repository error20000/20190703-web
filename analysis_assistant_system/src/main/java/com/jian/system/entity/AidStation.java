package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_AidStation")
public class AidStation extends Base<AidStation> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sAidStation_ID;
	@Excel(name="航标站经度", sort=0, length="", isNull=1 )
	private float lAidStation_MapLat;
	@Excel(name="航标站纬度", sort=0, length="", isNull=1 )
	private float lAidStation_MapLng;
	@Excel(name="航标站默认级别", sort=0, length="", isNull=1 )
	private int lAidStation_MapLevel;
	@Excel(name="航标站", sort=0, length="64", isNull=1 )
	private String sAidStation_Station;
	
	
	public String getsAidStation_ID() {
		return sAidStation_ID;
	}
	public void setsAidStation_ID(String sAidStation_ID) {
		this.sAidStation_ID = sAidStation_ID;
	}
	public float getlAidStation_MapLat() {
		return lAidStation_MapLat;
	}
	public void setlAidStation_MapLat(float lAidStation_MapLat) {
		this.lAidStation_MapLat = lAidStation_MapLat;
	}
	public float getlAidStation_MapLng() {
		return lAidStation_MapLng;
	}
	public void setlAidStation_MapLng(float lAidStation_MapLng) {
		this.lAidStation_MapLng = lAidStation_MapLng;
	}
	public int getlAidStation_MapLevel() {
		return lAidStation_MapLevel;
	}
	public void setlAidStation_MapLevel(int lAidStation_MapLevel) {
		this.lAidStation_MapLevel = lAidStation_MapLevel;
	}
	public String getsAidStation_Station() {
		return sAidStation_Station;
	}
	public void setsAidStation_Station(String sAidStation_Station) {
		this.sAidStation_Station = sAidStation_Station;
	}
	
}
