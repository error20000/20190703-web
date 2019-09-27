package com.jian.system.listener;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jian.system.config.Constant;
import com.jian.system.entity.Message;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreLog;
import com.jian.system.entity.StoreType;
import com.jian.system.entity.User;
import com.jian.system.service.MessageService;
import com.jian.system.service.StoreLogService;
import com.jian.system.service.StoreService;
import com.jian.system.service.StoreTypeService;
import com.jian.system.service.UserService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.DateTools;
import com.jian.tools.core.Tools;

@WebListener
@Component
public class StoreListener implements ServletContextListener {
	
	
	private static boolean timerStart = false;
	private static Timer timer = null;
	private static long runTime = 24 * 3600 * 1000;
	private static Timer msgTimer = null;
	private static long msgRunTime = 24 * 3600 * 1000;
	
	@Autowired
	private StoreService storeService;
	@Autowired
	private StoreTypeService storeTypeService;
	@Autowired
	private StoreLogService storeLogService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private UserService userService;
	
	/*@Autowired
	public StoreListener(StoreService storeService, StoreLogService storeLogService){
		StoreListener.storeService = storeService;
		StoreListener.storeLogService = storeLogService;
	}*/

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
		if(msgTimer != null){
			msgTimer.cancel();
			msgTimer = null;
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
			//库存盘点
			timer = new Timer(true); 
			timer.schedule(new TimerTask() {
				
				@Override
				public void run() {
					try {
						checkInfo();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}, date, runTime);
			//库存提醒
			msgTimer = new Timer(true); 
			msgTimer.schedule(new TimerTask() {
				
				@Override
				public void run() {
					try {
						msgInfo();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}, date, msgRunTime);
			timerStart = true;
		}
	}
	
	private void checkInfo(){
		//盘点库存
		List<Map<String, Object>> list = storeService.checkEquipType();
		List<StoreLog> res = new ArrayList<>();
		StoreLog node = null;
		for (int i = 0; i < list.size(); i++) {
			Map<String, Object> temp = list.get(i);
			node = new StoreLog();
			node.setsSLog_ID(Utils.newSnowflakeIdStr());
			node.setdSLog_CreateDate(new Date());
			node.setsSLog_StoreLv1(temp.get("sEquip_StoreLv1") == null ? "" : temp.get("sEquip_StoreLv1") + "" );
			node.setsSLog_StoreLv2(temp.get("sEquip_StoreLv2") == null ? "" : temp.get("sEquip_StoreLv2") + "" );
			node.setsSLog_StoreLv3(temp.get("sEquip_StoreLv3") == null ? "" : temp.get("sEquip_StoreLv3") + "" );
			node.setsSLog_StoreLv4(temp.get("sEquip_StoreLv4") == null ? "" : temp.get("sEquip_StoreLv4") + "" );
			node.setsSLog_EquipType(temp.get("sEquip_Type") == null ? "" : temp.get("sEquip_Type") +"" );
			node.setdSLog_EquipNum(Tools.parseInt(String.valueOf(temp.get("sEquip_Num"))) );
			res.add(node);
		}
		storeLogService.batchInsert(res, null);
	}

	private void msgInfo(){
		List<Map<String, Object>> list = storeService.checkStore();
		
		List<User> userAll = userService.selectAll();
		List<StoreType> storeTypeAll = storeTypeService.selectAll();
		List<Store> storeAll = storeService.selectAll();
		Map<String, Integer> tempLimit = new HashMap<String, Integer>();
		for (StoreType stype : storeTypeAll) {
			tempLimit.put(stype.getsStoreType_ID(), stype.getlStoreType_Limit());
		}
		for (Store store : storeAll) {
			tempLimit.put(store.getsStore_ID(), store.getlStore_Limit());
		}
		List<Message> res = new ArrayList<>();
		Message node = null;
		for (int i = 0; i < list.size(); i++) {
			Map<String, Object> temp = list.get(i);
			//库存不足
			Integer limit = null;
			if(limit == null || limit == 0) {
				limit = tempLimit.get(temp.get("sEquip_StoreLv4") == null ? "" : temp.get("sEquip_StoreLv4") + "");
			}
			if(limit == null || limit == 0) {
				limit = tempLimit.get(temp.get("sEquip_StoreLv3") == null ? "" : temp.get("sEquip_StoreLv3") + "");
			}
			if(limit == null || limit == 0) {
				limit = tempLimit.get(temp.get("sEquip_StoreLv2") == null ? "" : temp.get("sEquip_StoreLv2") + "");
			}
			if(limit == null || limit == 0) {
				limit = tempLimit.get(temp.get("sEquip_StoreLv1") == null ? "" : temp.get("sEquip_StoreLv1") + "");
			}
			Integer count = Tools.parseInt(String.valueOf(temp.get("sEquip_Num")));
			if(limit != null && limit != 0 && limit >= count ) {
				//给所有人，发送消息
				for (User user : userAll) {
					node = new Message();
					node.setsMsg_ID(Utils.newSnowflakeIdStr());
					node.setdMsg_CreateDate(new Date());
					node.setlMsg_Level(1);
					node.setsMsg_Status(Constant.MsgStatus_1);
					node.setsMsg_Type(Constant.MsgType_1);
					node.setsMsg_Title(Constant.MsgType_1_Msg);
					node.setsMsg_StoreLv1(temp.get("sEquip_StoreLv1") == null ? "" : temp.get("sEquip_StoreLv1") + "" );
					node.setsMsg_StoreLv2(temp.get("sEquip_StoreLv2") == null ? "" : temp.get("sEquip_StoreLv2") + "" );
					node.setsMsg_StoreLv3(temp.get("sEquip_StoreLv3") == null ? "" : temp.get("sEquip_StoreLv3") + "" );
					node.setsMsg_StoreLv4(temp.get("sEquip_StoreLv4") == null ? "" : temp.get("sEquip_StoreLv4") + "" );
					node.setdMsg_StoreNum(count);
					node.setsMsg_ToUserID(user.getsUser_ID());
					res.add(node);
				}
			}
		}
		messageService.batchInsert(res, null);
	}
}
