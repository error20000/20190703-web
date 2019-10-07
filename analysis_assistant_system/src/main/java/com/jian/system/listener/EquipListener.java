package com.jian.system.listener;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.stream.Collectors;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jian.system.config.Config;
import com.jian.system.config.Constant;
import com.jian.system.entity.EquipLife;
import com.jian.system.entity.Message;
import com.jian.system.entity.User;
import com.jian.system.entity.UserAid;
import com.jian.system.entity.UserStation;
import com.jian.system.service.EquipLifeService;
import com.jian.system.service.MessageService;
import com.jian.system.service.SystemService;
import com.jian.system.service.UserAidService;
import com.jian.system.service.UserService;
import com.jian.system.service.UserStationService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.DateTools;
import com.jian.tools.core.MapTools;

@WebListener
@Component
public class EquipListener implements ServletContextListener {
	
	
	private static boolean timerStart = false;
	private static Timer timer = null;
	private static long runTime = 24 * 3600 * 1000;
	private static Timer msgTimer = null;
	private static long msgRunTime = 24 * 3600 * 1000;
	private com.jian.system.entity.System system;
	
	@Autowired
	private EquipLifeService equipLifeService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private UserAidService userAidService;
	@Autowired
	private UserStationService userStationService;
	@Autowired
	private UserService userService;
	@Autowired
	private Config config;
	@Autowired
	private SystemService systemService;
	

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("------------------------EquipListener start------------------------------");
		init();
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		destroy();
	}

	public void update() {
		destroy();
		init();
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
		System.out.println(DateTools.formatDate()+"	EquipListener 关闭 ......");
	}
	
	private void process(){
		if(!timerStart){
			System.out.println(DateTools.formatDate()+"	EquipListener start...");
			
			system = systemService.selectOne(null);
			
			if(system == null) {
				return;
			}

			if(system.getlSys_EquipMode() == 1) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				String str = sdf.format(new Date()) + " "+(system.getlSys_EquipValue() < 10 ? "0"+system.getlSys_EquipValue() : system.getlSys_EquipValue())+":00:00";
				Date date = DateTools.formatDateStr(str);
				System.out.println(new Date() + " 每天"+system.getlSys_EquipValue()+"点，器材寿命盘点一次");
				System.out.println(date);
				//器材盘点
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
				//器材寿命提醒
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
			}else if(system.getlSys_EquipMode() == 2) {
				System.out.println(new Date() + " 每隔"+system.getlSys_EquipValue()+"小时，器材寿命盘点一次");
				long time = system.getlSys_EquipValue() * 3600 * 1000;
				//器材盘点
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
				}, time, time);
				//器材寿命提醒
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
				}, time, time);
			}
			timerStart = true;
		}
	}
	
	private void checkInfo(){
		//已统计的寿命
		List<EquipLife> old = equipLifeService.selectAll();
		//统计寿命
		List<Map<String, Object>> list = equipLifeService.checkLife();
		Map<String, Long> count = new HashMap<>();
		Map<String, Long> total = new HashMap<>();
		List<EquipLife> res = new ArrayList<>();
		EquipLife node = null;
		for (int i = 0; i < list.size(); i++) {
			Map<String, Object> temp = list.get(i);
			
			if(temp.get("dEquip_UseDate") == null) {
				continue;
			}
			if(temp.get("dEquip_DumpDate") == null) {
				continue;
			}
			Date dumpDate = (Date)temp.get("dEquip_DumpDate");
			Date useDate = (Date)temp.get("dEquip_UseDate");
			if(dumpDate.getTime() < useDate.getTime()) {
				continue;
			}
			
			String key = "";
			key += (temp.get("sAid_Station") == null ? "" : temp.get("sAid_Station")) + "_";
			key += (temp.get("sEquip_Type") == null ? "" : temp.get("sEquip_Type")) + "_";
			key += (temp.get("sEquip_Manufacturer") == null ? "" : temp.get("sEquip_Manufacturer")) + "_";
			key += (temp.get("sEquip_MBrand") == null ? "" : temp.get("sEquip_MBrand")) + "_";
			
			Long tempCount = count.get(key);
			Long tempTotal = total.get(key);
			if(tempCount == null) {
				tempCount = 0L;
				node = new EquipLife();
				node.setsELife_ID(Utils.newSnowflakeIdStr());
				node.setsELife_AidStation(temp.get("sAid_Station") == null ? "" : temp.get("sAid_Station") + "");
				node.setsELife_EquipType(temp.get("sEquip_Type") == null ? "" : temp.get("sEquip_Type") + "");
				node.setsELife_EquipManufacturer(temp.get("sEquip_Manufacturer") == null ? "" : temp.get("sEquip_Manufacturer") + "");
				node.setsELife_EquipMBrand(temp.get("sEquip_MBrand") == null ? "" : temp.get("sEquip_MBrand") + "");
				Date date = new Date();
				node.setdELife_CreateDate(date);
				node.setdELife_UpdateDate(date);
				res.add(node);
			}
			if(tempTotal == null) {
				tempTotal = 0L;
			}
			tempCount = tempCount + 1;
			tempTotal = tempTotal + (dumpDate.getTime() - useDate.getTime()) / 1000;
			
			count.put(key, tempCount);
			total.put(key, tempTotal);
		}
		
		//组装数据
		List<EquipLife> addList = new ArrayList<>();
		List<EquipLife> updateList = new ArrayList<>();
		for (EquipLife equipLife : res) {
			String key = "";
			key += (equipLife.getsELife_AidStation() == null ? "" : equipLife.getsELife_AidStation()) + "_";
			key += (equipLife.getsELife_EquipType() == null ? "" : equipLife.getsELife_EquipType()) + "_";
			key += (equipLife.getsELife_EquipManufacturer() == null ? "" : equipLife.getsELife_EquipManufacturer()) + "_";
			key += (equipLife.getsELife_EquipMBrand() == null ? "" : equipLife.getsELife_EquipMBrand()) + "_";
			
			equipLife.setlELife_Num(count.get(key));
			equipLife.setlELife_Total(total.get(key));
			equipLife.setlELife_Time(equipLife.getlELife_Total() / equipLife.getlELife_Num());
			
			boolean add = true;
			boolean update = true;
			for (EquipLife equipLife2 : old) {
				String key2 = "";
				key2 += (equipLife2.getsELife_AidStation() == null ? "" : equipLife2.getsELife_AidStation()) + "_";
				key2 += (equipLife2.getsELife_EquipType() == null ? "" : equipLife2.getsELife_EquipType()) + "_";
				key2 += (equipLife2.getsELife_EquipManufacturer() == null ? "" : equipLife2.getsELife_EquipManufacturer()) + "_";
				key2 += (equipLife2.getsELife_EquipMBrand() == null ? "" : equipLife2.getsELife_EquipMBrand()) + "_";
				
				if(key.equals(key2)) {
					add = false;
					equipLife.setsELife_ID(equipLife2.getsELife_ID());
					equipLife.setdELife_CreateDate(equipLife2.getdELife_CreateDate());
					//寿命没有变化可以不用更新
					if(equipLife.getlELife_Num() == equipLife2.getlELife_Num()
							&& equipLife.getlELife_Total() == equipLife2.getlELife_Total()) {
						update = false;
					}
					break;
				}
			}
			
			if(add) {
				addList.add(equipLife);
			}else if(update){
				updateList.add(equipLife);
			}
		}
		//更新数据
		equipLifeService.batchInsert(addList, null);
		for (EquipLife equipLife : updateList) {
			equipLifeService.update(equipLife, null);
		}
	}

	private void msgInfo(){
		//查询已发提醒
		Date date = new Date();
		String startDate = DateTools.formatDate(date, "yyyy-MM-dd 00:00:00");
		String endDate = DateTools.formatDate(date, "yyyy-MM-dd 23:59:59");
		List<Message> old = equipLifeService.isCheckedLife(startDate, endDate);

		//寿命提醒
		List<EquipLife> lifes = equipLifeService.selectAll();
		List<Map<String, Object>> list = equipLifeService.checkUsed();
		
		Map<String, List<UserAid>> cacheUserAid = new HashMap<>();
		Map<String, List<UserStation>> cacheUserStation = new HashMap<>();
		Map<String, List<User>> cacheUser = new HashMap<>();
		
		List<Message> res = new ArrayList<>();
		Message node = null;
		
		for (int i = 0; i < list.size(); i++) {
			Map<String, Object> temp = list.get(i);
			
			if(temp.get("dEquip_UseDate") == null) {
				continue;
			}
			Date useDate = (Date)temp.get("dEquip_UseDate");
			Date curDate = new Date();
			if(curDate.getTime() < curDate.getTime()) {
				continue;
			}

			String sAid_StationName = String.valueOf(temp.get("sAid_StationName"));
			String sAid_Name = String.valueOf(temp.get("sAid_Name"));
			String sAid_NO = String.valueOf(temp.get("sAid_NO"));
			String sEquip_ID = String.valueOf(temp.get("sEquip_ID"));
			String sEquip_NO = String.valueOf(temp.get("sEquip_NO"));
			String sEquip_TypeName = String.valueOf(temp.get("sEquip_TypeName"));
			
			String key = "";
			key += (temp.get("sAid_Station") == null ? "" : temp.get("sAid_Station")) + "_";
			key += (temp.get("sEquip_Type") == null ? "" : temp.get("sEquip_Type")) + "_";
			key += (temp.get("sEquip_Manufacturer") == null ? "" : temp.get("sEquip_Manufacturer")) + "_";
			key += (temp.get("sEquip_MBrand") == null ? "" : temp.get("sEquip_MBrand")) + "_";
			
			for (EquipLife equipLife2 : lifes) {
				String key2 = "";
				key2 += (equipLife2.getsELife_AidStation() == null ? "" : equipLife2.getsELife_AidStation()) + "_";
				key2 += (equipLife2.getsELife_EquipType() == null ? "" : equipLife2.getsELife_EquipType()) + "_";
				key2 += (equipLife2.getsELife_EquipManufacturer() == null ? "" : equipLife2.getsELife_EquipManufacturer()) + "_";
				key2 += (equipLife2.getsELife_EquipMBrand() == null ? "" : equipLife2.getsELife_EquipMBrand()) + "_";
				
				if(key.equals(key2)) {
					if((curDate.getTime() - useDate.getTime()) / 1000 >= equipLife2.getlELife_Time() * system.getlSys_EquipRate() / 100) {
						//是否已提醒
						if(old != null && old.size() > 0) {
							List<Message> tempList = old.stream()
									.filter(e -> e.getsMsg_EquipID().equals(sEquip_ID))
									.collect(Collectors.toList());
							if(tempList.size() != 0) {
								continue;
							}
						}
						//器材寿命提醒
						String aidId = String.valueOf(temp.get("sEquip_AidID"));
						String station = equipLife2.getsELife_AidStation();
						List<UserAid> userAids = cacheUserAid.get(aidId);
						if(userAids == null) {
							userAids = userAidService.selectList(MapTools.custom().put("sUserAid_AidID", aidId).build());
						}
						List<UserStation> userStations = cacheUserStation.get(station);
						if(userStations == null) {
							userStations = userStationService.selectList(MapTools.custom().put("sUserStation_Station", station).build());
						}
						List<User> userManager = cacheUser.get(config.managerGroupId);
						if(userManager == null) {
							userManager = userService.selectList(MapTools.custom().put("sUser_GroupID", config.managerGroupId).build());
						}
						List<User> userSuper = cacheUser.get(config.superGroupId);
						if(userSuper == null) {
							userSuper = userService.selectList(MapTools.custom().put("sUser_GroupID", config.superGroupId).build());
						}
						List<String> userIds = new ArrayList<>();
						userIds.addAll(userAids.stream()
								.map(e -> e.getsUserAid_UserID())
								.collect(Collectors.toList()));
						userIds.addAll(userStations.stream()
								.map(e -> e.getsUserStation_UserID())
								.collect(Collectors.toList()));
						if(system.getlSys_EquipMsg() == 1) {  //是否通知管理员
							userIds.addAll(userManager.stream()
									.map(e -> e.getsUser_ID())
									.collect(Collectors.toList()));
							userIds.addAll(userSuper.stream()
									.map(e -> e.getsUser_ID())
									.collect(Collectors.toList()));
						}
						userIds = userIds.stream()
								.distinct()
								.collect(Collectors.toList());
						for (String uid : userIds) {
							node = new Message();
							node.setsMsg_ID(Utils.newSnowflakeIdStr());
							node.setdMsg_CreateDate(new Date());
							node.setlMsg_Level(1);
							node.setsMsg_Status(Constant.MsgStatus_1);
							node.setsMsg_Type(Constant.MsgType_5);
							node.setsMsg_Title(Constant.MsgType_5_Msg);
							node.setsMsg_EquipID(sEquip_ID);
							String desc = sAid_StationName + ": "+sAid_Name+"（"+sAid_NO+"），"+sEquip_TypeName+"（"+sEquip_NO+"）使用寿命不足，请注意更换。";
							node.setsMsg_Describe(desc);
							node.setsMsg_ToUserID(uid);
							res.add(node);
						}
					
					}
					break;
				}
			}
		}
		
		if(res.size() == 0) {
			System.out.println("已提醒过器材寿命不足。。。");
		}
		messageService.batchInsert(res, null);
	}
	
}
