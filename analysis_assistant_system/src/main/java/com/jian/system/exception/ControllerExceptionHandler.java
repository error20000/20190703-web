package com.jian.system.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;

@ResponseBody
@Order(-1)
@ControllerAdvice(annotations = { RestController.class, Controller.class, RequestMapping.class, PostMapping.class,
		GetMapping.class })
public class ControllerExceptionHandler {

	private static final Logger log = LoggerFactory.getLogger(ControllerExceptionHandler.class);

	@ExceptionHandler({ ServiceException.class })
	public String ServiceValidHandler(HttpServletRequest request, HttpServletResponse response, ServiceException e) {
		log.error(e.getMessage());
		return ResultTools.custom(e.getTips()).put(ResultKey.DATA, e.getMessage()).toJSONString();
	}

	@ExceptionHandler({ Exception.class })
	public String GlobalException(HttpServletRequest request, HttpServletResponse response, Exception e) {
		log.error(e.getMessage());
		return ResultTools.custom(Tips.ERROR0).toJSONString();
	}

}
