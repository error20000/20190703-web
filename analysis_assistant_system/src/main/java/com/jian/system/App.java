package com.jian.system;

import javax.servlet.MultipartConfigElement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Import;

import com.jian.system.config.Config;
import com.jian.system.datasource.DynamicDataSourceRegister;

@SpringBootApplication(scanBasePackages="com.jian")
@EnableAutoConfiguration
@Import({DynamicDataSourceRegister.class})
public class App {
	
	public static String rootPath = "";
	public static ApplicationContext applicationContext = null;
	public static String[] scanBasePackages = {};
	
	@Autowired
	private Config config;

	public static void main(String[] args) throws Exception {
		//项目目录
		rootPath = App.class.getResource("/").getPath().replace("/target/classes/", "/");
    	System.out.println(rootPath);
		//扫描范围
    	if(App.class.isAnnotationPresent(SpringBootApplication.class)){
    		SpringBootApplication sba = App.class.getAnnotation(SpringBootApplication.class);
    		scanBasePackages = sba.scanBasePackages();
    	}
    	System.out.println(scanBasePackages);
		//启动
        applicationContext = SpringApplication.run(App.class, args);
    }

	@Bean
    MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        factory.setLocation(config.upload_temp_path);
        System.out.println("upload_temp_path: " + config.upload_temp_path);
        return factory.createMultipartConfig();
    }
}
