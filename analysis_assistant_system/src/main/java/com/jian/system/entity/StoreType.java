package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_StoreType")
public class StoreType extends Base<StoreType> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sStoreType_ID;
	@Excel(name="仓库名称", sort=0, length="64", isNull=1 )
	private String sStoreType_Name;
	@Excel(name="仓库地址", sort=0, length="255", isNull=1 )
	private String sStoreType_Address;
	@Excel(name="纬度", sort=0, length="", isNull=1 )
	private float lStoreType_Lat;
	@Excel(name="经度", sort=0, length="", isNull=1 )
	private float lStoreType_Lng;
	@Excel(name="归属航标站", sort=0, length="64", isNull=1 )
	private String sStoreType_Station;
	@Excel(name="库存预警值", sort=0, length="10", isNull=1 )
	private int lStoreType_Limit;
	@Excel(name="地图图标", sort=0, length="64", isNull=1 )
	private String sStoreType_MapIcon;
	

	@Excel(name="纬度（度", sort=0, length="", isNull=1 )
	private float lStoreType_LatDu;
	@Excel(name="纬度（分）", sort=0, length="", isNull=1 )
	private float lStoreType_LatFen;
	@Excel(name="纬度（秒）", sort=0, length="", isNull=1 )
	private float lStoreType_LatMiao;
	@Excel(name="经度（度", sort=0, length="", isNull=1 )
	private float lStoreType_LngDu;
	@Excel(name="经度（分）", sort=0, length="", isNull=1 )
	private float lStoreType_LngFen;
	@Excel(name="经度（秒）", sort=0, length="", isNull=1 )
	private float lStoreType_LngMiao;
	
	
	
	public String getsStoreType_ID() {
		return sStoreType_ID;
	}
	public void setsStoreType_ID(String sStoreType_ID) {
		this.sStoreType_ID = sStoreType_ID;
	}
	public String getsStoreType_Name() {
		return sStoreType_Name;
	}
	public void setsStoreType_Name(String sStoreType_Name) {
		this.sStoreType_Name = sStoreType_Name;
	}
	public String getsStoreType_Address() {
		return sStoreType_Address;
	}
	public void setsStoreType_Address(String sStoreType_Address) {
		this.sStoreType_Address = sStoreType_Address;
	}
	public float getlStoreType_Lat() {
		return lStoreType_Lat;
	}
	public void setlStoreType_Lat(float lStoreType_Lat) {
		this.lStoreType_Lat = lStoreType_Lat;
	}
	public float getlStoreType_Lng() {
		return lStoreType_Lng;
	}
	public void setlStoreType_Lng(float lStoreType_Lng) {
		this.lStoreType_Lng = lStoreType_Lng;
	}
	public String getsStoreType_Station() {
		return sStoreType_Station;
	}
	public void setsStoreType_Station(String sStoreType_Station) {
		this.sStoreType_Station = sStoreType_Station;
	}
	public int getlStoreType_Limit() {
		return lStoreType_Limit;
	}
	public void setlStoreType_Limit(int lStoreType_Limit) {
		this.lStoreType_Limit = lStoreType_Limit;
	}
	public String getsStoreType_MapIcon() {
		return sStoreType_MapIcon;
	}
	public void setsStoreType_MapIcon(String sStoreType_MapIcon) {
		this.sStoreType_MapIcon = sStoreType_MapIcon;
	}
	public float getlStoreType_LatDu() {
		return lStoreType_LatDu;
	}
	public void setlStoreType_LatDu(float lStoreType_LatDu) {
		this.lStoreType_LatDu = lStoreType_LatDu;
	}
	public float getlStoreType_LatFen() {
		return lStoreType_LatFen;
	}
	public void setlStoreType_LatFen(float lStoreType_LatFen) {
		this.lStoreType_LatFen = lStoreType_LatFen;
	}
	public float getlStoreType_LatMiao() {
		return lStoreType_LatMiao;
	}
	public void setlStoreType_LatMiao(float lStoreType_LatMiao) {
		this.lStoreType_LatMiao = lStoreType_LatMiao;
	}
	public float getlStoreType_LngDu() {
		return lStoreType_LngDu;
	}
	public void setlStoreType_LngDu(float lStoreType_LngDu) {
		this.lStoreType_LngDu = lStoreType_LngDu;
	}
	public float getlStoreType_LngFen() {
		return lStoreType_LngFen;
	}
	public void setlStoreType_LngFen(float lStoreType_LngFen) {
		this.lStoreType_LngFen = lStoreType_LngFen;
	}
	public float getlStoreType_LngMiao() {
		return lStoreType_LngMiao;
	}
	public void setlStoreType_LngMiao(float lStoreType_LngMiao) {
		this.lStoreType_LngMiao = lStoreType_LngMiao;
	}
	
}
