package com.jian.system.entity;

import java.util.Date;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;

@Table("tBase_SystemLog")
public class SystemLog extends Base<SystemLog> {


	@PrimaryKey
	@Excel(name="ID", sort=0, length="32", isNull=0 )
	private String sSLog_ID;
	@Excel(name="日志类型", sort=0, length="64", isNull=1 )
	private String sSLog_Type;
	@Excel(name="日期", sort=0, length="", isNull=1 )
	private Date dSLog_CreateDate;
	@Excel(name="用户ID", sort=0, length="32", isNull=1 )
	private String sSLog_UserID;
	@Excel(name="用户昵称", sort=0, length="32", isNull=1 )
	private String sSLog_UserNick;
	@Excel(name="用户IP", sort=0, length="255", isNull=1 )
	private String sSLog_IP;
	@Excel(name="日志描述", sort=0, length="255", isNull=1 )
	private String sSLog_Describe;
	@Excel(name="请求地址", sort=0, length="255", isNull=1 )
	private String sSLog_Uri;
	@Excel(name="方法名", sort=0, length="255", isNull=1 )
	private String sSLog_Method;
	@Excel(name="方法耗时  ms", sort=0, length="10", isNull=1 )
	private int lSLog_TimeConsume;
	@Excel(name="请求参数", sort=0, length="255", isNull=1 )
	private String sSLog_Request;
	@Excel(name="响应参数", sort=0, length="255", isNull=1 )
	private String sSLog_Response;
	@Excel(name="异常信息", sort=0, length="255", isNull=1 )
	private String sSLog_Exception;
	@Excel(name="模块", sort=0, length="255", isNull=1 )
	private String sSLog_Module;
	

	public String getsSLog_ID() {
		return sSLog_ID;
	}
	public void setsSLog_ID(String sSLog_ID) {
		this.sSLog_ID = sSLog_ID;
	}
	public String getsSLog_Type() {
		return sSLog_Type;
	}
	public void setsSLog_Type(String sSLog_Type) {
		this.sSLog_Type = sSLog_Type;
	}
	public Date getdSLog_CreateDate() {
		return dSLog_CreateDate;
	}
	public void setdSLog_CreateDate(Date dSLog_CreateDate) {
		this.dSLog_CreateDate = dSLog_CreateDate;
	}
	public String getsSLog_UserID() {
		return sSLog_UserID;
	}
	public void setsSLog_UserID(String sSLog_UserID) {
		this.sSLog_UserID = sSLog_UserID;
	}
	public String getsSLog_UserNick() {
		return sSLog_UserNick;
	}
	public void setsSLog_UserNick(String sSLog_UserNick) {
		this.sSLog_UserNick = sSLog_UserNick;
	}
	public String getsSLog_IP() {
		return sSLog_IP;
	}
	public void setsSLog_IP(String sSLog_IP) {
		this.sSLog_IP = sSLog_IP;
	}
	public String getsSLog_Describe() {
		return sSLog_Describe;
	}
	public void setsSLog_Describe(String sSLog_Describe) {
		this.sSLog_Describe = sSLog_Describe;
	}
	public String getsSLog_Uri() {
		return sSLog_Uri;
	}
	public void setsSLog_Uri(String sSLog_Uri) {
		this.sSLog_Uri = sSLog_Uri;
	}
	public String getsSLog_Method() {
		return sSLog_Method;
	}
	public void setsSLog_Method(String sSLog_Method) {
		this.sSLog_Method = sSLog_Method;
	}
	public int getlSLog_TimeConsume() {
		return lSLog_TimeConsume;
	}
	public void setlSLog_TimeConsume(int lSLog_TimeConsume) {
		this.lSLog_TimeConsume = lSLog_TimeConsume;
	}
	public String getsSLog_Request() {
		return sSLog_Request;
	}
	public void setsSLog_Request(String sSLog_Request) {
		this.sSLog_Request = sSLog_Request;
	}
	public String getsSLog_Response() {
		return sSLog_Response;
	}
	public void setsSLog_Response(String sSLog_Response) {
		this.sSLog_Response = sSLog_Response;
	}
	public String getsSLog_Exception() {
		return sSLog_Exception;
	}
	public void setsSLog_Exception(String sSLog_Exception) {
		this.sSLog_Exception = sSLog_Exception;
	}
	public String getsSLog_Module() {
		return sSLog_Module;
	}
	public void setsSLog_Module(String sSLog_Module) {
		this.sSLog_Module = sSLog_Module;
	}
	
}
