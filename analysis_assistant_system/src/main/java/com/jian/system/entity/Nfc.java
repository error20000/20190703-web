package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_Nfc")
public class Nfc extends Base<Nfc> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sNfc_ID;
	@Excel(name="名称", sort=0, length="64", isNull=1 )
	private String sNfc_Name;
	@Excel(name="编码", sort=0, length="64", isNull=1 )
	private String sNfc_NO;
	
	
	public String getsNfc_ID() {
		return sNfc_ID;
	}
	public void setsNfc_ID(String sNfc_ID) {
		this.sNfc_ID = sNfc_ID;
	}
	public String getsNfc_Name() {
		return sNfc_Name;
	}
	public void setsNfc_Name(String sNfc_Name) {
		this.sNfc_Name = sNfc_Name;
	}
	public String getsNfc_NO() {
		return sNfc_NO;
	}
	public void setsNfc_NO(String sNfc_NO) {
		this.sNfc_NO = sNfc_NO;
	}
	
}
