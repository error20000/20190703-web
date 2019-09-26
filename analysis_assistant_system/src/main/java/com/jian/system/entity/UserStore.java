package com.jian.system.entity;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_UserStore")
public class UserStore extends Base<UserStore> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sUserStore_ID;
	@Excel(name="用户ID", sort=0, length="32", isNull=1 )
	private String sUserStore_UserID;
	@Excel(name="一级仓库ID", sort=0, length="32", isNull=1 )
	private String sUserStore_StoreLv1ID;
	@Excel(name="二级仓库ID", sort=0, length="32", isNull=1 )
	private String sUserStore_StoreLv2ID;
	@Excel(name="三级仓库ID", sort=0, length="32", isNull=1 )
	private String sUserStore_StoreLv3ID;
	@Excel(name="四级仓库ID", sort=0, length="32", isNull=1 )
	private String sUserStore_StoreLv4ID;
	
	
	public String getsUserStore_ID() {
		return sUserStore_ID;
	}
	public void setsUserStore_ID(String sUserStore_ID) {
		this.sUserStore_ID = sUserStore_ID;
	}
	public String getsUserStore_UserID() {
		return sUserStore_UserID;
	}
	public void setsUserStore_UserID(String sUserStore_UserID) {
		this.sUserStore_UserID = sUserStore_UserID;
	}
	public String getsUserStore_StoreLv1ID() {
		return sUserStore_StoreLv1ID;
	}
	public void setsUserStore_StoreLv1ID(String sUserStore_StoreLv1ID) {
		this.sUserStore_StoreLv1ID = sUserStore_StoreLv1ID;
	}
	public String getsUserStore_StoreLv2ID() {
		return sUserStore_StoreLv2ID;
	}
	public void setsUserStore_StoreLv2ID(String sUserStore_StoreLv2ID) {
		this.sUserStore_StoreLv2ID = sUserStore_StoreLv2ID;
	}
	public String getsUserStore_StoreLv3ID() {
		return sUserStore_StoreLv3ID;
	}
	public void setsUserStore_StoreLv3ID(String sUserStore_StoreLv3ID) {
		this.sUserStore_StoreLv3ID = sUserStore_StoreLv3ID;
	}
	public String getsUserStore_StoreLv4ID() {
		return sUserStore_StoreLv4ID;
	}
	public void setsUserStore_StoreLv4ID(String sUserStore_StoreLv4ID) {
		this.sUserStore_StoreLv4ID = sUserStore_StoreLv4ID;
	}
	
}
