package com.jian.system.controller;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jian.system.App;
import com.jian.tools.core.FileTools;

/**
 * docs 接口
 * 
 * @author liujian
 *
 */
@Controller
@RequestMapping(name="APIController", path={"/api/docs"})
public class APIController{

	@RequestMapping(path={"/mi"})
	public void mi(HttpServletRequest req, HttpServletResponse resp){
		
    	String basePath = App.rootPath + "docs/";
		basePath = basePath.endsWith("/") ? basePath : basePath + "/";
		
		String str = FileTools.fileReaderAll(new File(basePath + "mi.md"));
		
		PrintWriter out = null;
		try {
			resp.setContentType("text/html; charset=utf-8");
		      out = resp.getWriter();
		      out.write(str);
		      out.flush();
		      out.close();
		    } catch (Exception e) {
		      e.printStackTrace();
		    } 
	}
	
	@RequestMapping(path={"/ui"})
	public void ui(HttpServletRequest req, HttpServletResponse resp){

    	String basePath = App.rootPath + "docs/";
		basePath = basePath.endsWith("/") ? basePath : basePath + "/";
		
		String str = FileTools.fileReaderAll(new File(basePath + "ui.md"));
		
		PrintWriter out = null;
		try {
			resp.setContentType("text/html; charset=utf-8");
		      out = resp.getWriter();
		      out.write(str);
		      out.flush();
		      out.close();
		    } catch (Exception e) {
		      e.printStackTrace();
		    } 
	}
	
}
