package com.jian.system.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.config.Config;
import com.jian.tools.core.HttpTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/weather")
@API(name="天气抓取")
public class WeatherController {
	
	@Autowired
	private Config config;

	@RequestMapping("/get")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询天气")
	public String get(HttpServletRequest req) {
				
		String url = config.weathUrl
				.replace("{lat}", config.weathLat)
				.replace("{lng}", config.weathLng)
				.replace("{dataTime}", new Date().getTime()+"");
		
		String res = HttpTools.getInstance().sendHttpGet(url);
		
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}


}
