package com.jian.system.listener;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jian.system.service.StoreService;
import com.jian.tools.core.DateTools;

@WebListener
@Component
public class StoreListener implements ServletContextListener {
	
	
	private static boolean timerStart = false;
	private static Timer timer = null;
	private static long runTime = 24 * 3600 * 1000;
	
	private static StoreService storeService;
	//private static StoreLogService storeLogService;
	
	@Autowired
	public StoreListener(StoreService storeService/*, StoreLogService storeLogService*/){
		StoreListener.storeService = storeService;
		//StoreListener.storeLogService = storeLogService;
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("------------------------StoreListener start------------------------------");
		init();
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		destroy();
	}
	

	private void init(){
		process();
	}
	
	private void destroy(){
		timerStart = false;
		if(timer != null){
			timer.cancel();
			timer = null;
		}
		System.out.println(DateTools.formatDate()+"	StoreListener 关闭 ......");
	}
	
	private void process(){
		if(!timerStart){
			System.out.println(DateTools.formatDate()+"	StoreListener start...");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String str = sdf.format(new Date()) + " 22:00:00";
			Date date = DateTools.formatDateStr(str);
			System.out.println(date);
			timer = new Timer(true); 
			timer.schedule(new TimerTask() {
				
				@Override
				public void run() {
					try {
						updateInfo();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}, date, runTime);
			timerStart = true;
		}
	}
	
	private void updateInfo(){
	}

	
}
