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

	@Excel(name="库存盘点模式", sort=0, length="", isNull=1 )
	private int lSys_StoreMode;
	@Excel(name="库存盘点模式值", sort=0, length="", isNull=1 )
	private int lSys_StoreValue;
	@Excel(name="库存不足是否通知管理员 0：否，1：是	", sort=0, length="", isNull=1 )
	private int lSys_StoreMsg;

	@Excel(name="器材寿命盘点模式", sort=0, length="", isNull=1 )
	private int lSys_EquipMode;
	@Excel(name="器材寿命盘点模式值", sort=0, length="", isNull=1 )
	private int lSys_EquipValue;
	@Excel(name="寿命不足是否通知管理员 0：否，1：是", sort=0, length="", isNull=1 )
	private int lSys_EquipMsg;
	@Excel(name="不足平均寿命的百分之几", sort=0, length="", isNull=1 )
	private int lSys_EquipRate;

	
	
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
	public int getlSys_StoreMode() {
		return lSys_StoreMode;
	}
	public void setlSys_StoreMode(int lSys_StoreMode) {
		this.lSys_StoreMode = lSys_StoreMode;
	}
	public int getlSys_StoreValue() {
		return lSys_StoreValue;
	}
	public void setlSys_StoreValue(int lSys_StoreValue) {
		this.lSys_StoreValue = lSys_StoreValue;
	}
	public int getlSys_StoreMsg() {
		return lSys_StoreMsg;
	}
	public void setlSys_StoreMsg(int lSys_StoreMsg) {
		this.lSys_StoreMsg = lSys_StoreMsg;
	}
	public int getlSys_EquipMode() {
		return lSys_EquipMode;
	}
	public void setlSys_EquipMode(int lSys_EquipMode) {
		this.lSys_EquipMode = lSys_EquipMode;
	}
	public int getlSys_EquipValue() {
		return lSys_EquipValue;
	}
	public void setlSys_EquipValue(int lSys_EquipValue) {
		this.lSys_EquipValue = lSys_EquipValue;
	}
	public int getlSys_EquipMsg() {
		return lSys_EquipMsg;
	}
	public void setlSys_EquipMsg(int lSys_EquipMsg) {
		this.lSys_EquipMsg = lSys_EquipMsg;
	}
	public int getlSys_EquipRate() {
		return lSys_EquipRate;
	}
	public void setlSys_EquipRate(int lSys_EquipRate) {
		this.lSys_EquipRate = lSys_EquipRate;
	}
	
	
}
