package com.jian.system.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Config {
	
	
	//自动填充主键
	@Value("${auto_fill_primary_key}")
	public String autoFillPrimaryKey; //自动填充主键
	
	//日期自动填充配置
	@Value("${auto_fill_date_for_add}")
	public String autoFillDateForAdd; //新增日期类型自动填充
	@Value("${auto_fill_date_for_modify}")
	public String autoFillDateForModify; //修改日期类型自动填充
	
	//静态资源
	@Value("${out_static_path}")
	public String out_static_path; //文件上传地址
	@Value("${logs_path}")
	public String logs_path; //日志地址
	
	//登录session
	@Value("${login_session_key}")
	public String login_session_key="login_user";
	
	
	public String superGroupId = "1"; //超管组
	public String managerGroupId = "2"; //管理组
	public String defualtUserName = "admin"; //默认用户
	
	public int maxLoginCount = 5; //登录密码错误次数限制
	public int maxLoginTime = 1 * 60 * 1000; //登录密码错误时长限制  单位毫秒
	
	public int expireTime = 2 * 3600 * 1000; //登录有效期
	
	public String tokenSecretKey = "123456700"; //token密钥
	
}
