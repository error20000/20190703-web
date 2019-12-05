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
	
	//上传临时路劲
	@Value("${upload_temp_path}")
	public String upload_temp_path;
	
	
	public String superGroupId = "1"; //超管组
	public String managerGroupId = "2"; //管理组
	public String defualtUserName = "admin"; //默认用户
	
	public int maxLoginCount = 5; //登录密码错误次数限制
	public int maxLoginTime = 1 * 60 * 1000; //登录密码错误时长限制  单位毫秒
	
	public int expireTime = 2 * 3600 * 1000; //登录有效期
	
	public String tokenSecretKey = "123456700"; //token密钥
	

	public String pwdReg = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$"; //密码正则表达式
	public String pwdRegStr = "（密码至少包含 数字和英文，长度6-20）"; //密码格式提示
	
	//public String weathUrl = "http://123.57.38.38:8091/?action=single&lat=29.730078774781184&lng=122.14201354980071&productName={productName}&overlayName={overlayName}"; //天气抓取
	//public String weathUrl = "http://htzx.yunh.xyz:8080/enavis/windy/getWeatherData/{lng}/{lat}/{productName}/{overlayName}/{dataTime}";
	public String weathUrl = "http://htzx.yunh.xyz:8080/enavis/windy/getAllTypeWeatherData/{lng}/{lat}/{dataTime}";
	public String weathLng = "122.14201354980071";
	public String weathLat = "29.730078774781184";
}
