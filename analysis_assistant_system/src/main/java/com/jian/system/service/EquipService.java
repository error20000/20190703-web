package com.jian.system.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.jian.system.config.Constant;
import com.jian.system.dao.EquipMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.Aid;
import com.jian.system.entity.AidEquip;
import com.jian.system.entity.Equip;
import com.jian.system.entity.EquipAis;
import com.jian.system.entity.EquipBattery;
import com.jian.system.entity.EquipLamp;
import com.jian.system.entity.EquipLog;
import com.jian.system.entity.EquipRadar;
import com.jian.system.entity.EquipSolarEnergy;
import com.jian.system.entity.EquipSpareLamp;
import com.jian.system.entity.EquipTelemetry;
import com.jian.system.entity.EquipViceLamp;
import com.jian.system.entity.Message;
import com.jian.system.entity.User;
import com.jian.system.entity.UserAid;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class EquipService extends BaseService<Equip, EquipMapper> {

	@Autowired
	private NfcService nfcService;
	@Autowired
	private EquipLogService logService;
	@Autowired
	private AidEquipService aidEquipService;
	@Autowired
	private AidService aidService;
	@Autowired
	private MessageService messageService;
	@Autowired
	private UserAidService userAidService;
	@Autowired
	private EquipAisService aisService;
	@Autowired
	private EquipBatteryService batteryService;
	@Autowired
	private EquipLampService lampService;
	@Autowired
	private EquipRadarService radarService;
	@Autowired
	private EquipSolarEnergyService solarEnergyService;
	@Autowired
	private EquipSpareLampService spareLampService;
	@Autowired
	private EquipTelemetryService telemetryService;
	@Autowired
	private EquipViceLampService viceLampService;
	
	
	@Transactional
	@TargetDataSource
	public int insert(Equip obj, User user, String ip) {
		if(obj == null) {
			return 0;
		}
		obj.setsEquip_ID(Utils.newSnowflakeIdStr());
		obj.setdEquip_CreateDate(new Date());
		obj.setsEquip_Status(Constant.EquipStatus_0); //空闲
		if(!Tools.isNullOrEmpty(obj.getsEquip_StoreLv1())) {
			obj.setsEquip_Status(Constant.EquipStatus_1); // 入库    dict (EquipStatus)
			if(obj.getdEquip_StoreDate() == null) {
				obj.setdEquip_StoreDate(new Date()); //第一次入库时间
			}
			//器材仓库不为空，入库操作
			EquipLog log = new EquipLog();
			log.setsELog_ID(Utils.newSnowflakeIdStr());
			log.setdELog_CreateDate(new Date());
			log.setsELog_EquipID(obj.getsEquip_ID());
			log.setsELog_IP(ip);
			log.setsELog_StoreLv1(obj.getsEquip_StoreLv1());
			log.setsELog_StoreLv2(obj.getsEquip_StoreLv2());
			log.setsELog_StoreLv3(obj.getsEquip_StoreLv3());
			log.setsELog_StoreLv4(obj.getsEquip_StoreLv4());
			if(user != null) {
				log.setsELog_UserID(user.getsUser_ID());
			}
			log.setsELog_Type(Constant.EquipLogType_1); // 仓库待用    dict (EquipLogType)
			log.setsELog_Describe("器材入库");
			log.setsELog_Remarks("");
			logService.insert(log, user);
		}
		//保存详情
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		switch (obj.getsEquip_Type()) {
		case Constant.EquipType_AIS:
			EquipAis ais = new EquipAis();
			ais.setsEquip_ID(obj.getsEquip_ID());
			ais.setsAis_MMSIX(request.getParameter("sAis_MMSIX"));
			aisService.insert(ais, user);
			break;
		case Constant.EquipType_Battery:
			EquipBattery battery = new EquipBattery();
			battery.setsEquip_ID(obj.getsEquip_ID());
			battery.setsBattery_NO(request.getParameter("sBattery_NO"));
			battery.setsBattery_Type(request.getParameter("sBattery_Type"));
			battery.setsBattery_Connect(request.getParameter("sBattery_Connect"));
			battery.setlBattery_Volt(Float.parseFloat(request.getParameter("lBattery_Volt")));
			battery.setlBattery_Watt(Float.parseFloat(request.getParameter("lBattery_Watt")));
			batteryService.insert(battery, user);
			break;
		case Constant.EquipType_Lamp:
			EquipLamp lamp = new EquipLamp();
			lamp.setsEquip_ID(obj.getsEquip_ID());
			lamp.setsLamp_NO(request.getParameter("sLamp_NO"));
			lamp.setsLamp_Type(request.getParameter("sLamp_Type"));
			lamp.setsLamp_Telemetry(request.getParameter("sLamp_Telemetry"));
			lamp.setsLamp_Brand(request.getParameter("sLamp_Brand"));
			lamp.setsLamp_Lens(request.getParameter("sLamp_Lens"));
			lamp.setlLamp_TelemetryFlag(Integer.parseInt(request.getParameter("lLamp_TelemetryFlag")));
			lamp.setlLamp_InputVolt(Float.parseFloat(request.getParameter("lLamp_InputVolt")));
			lamp.setlLamp_Watt(Float.parseFloat(request.getParameter("lLamp_Watt")));
			lampService.insert(lamp, user);
			break;
		case Constant.EquipType_Radar:
			EquipRadar radar = new EquipRadar();
			radar.setsEquip_ID(obj.getsEquip_ID());
			radar.setsRadar_NO(request.getParameter("sRadar_NO"));
			radar.setsRadar_Band(request.getParameter("sRadar_Band"));
			radarService.insert(radar, user);
			break;
		case Constant.EquipType_SolarEnergy:
			EquipSolarEnergy solar = new EquipSolarEnergy();
			solar.setsEquip_ID(obj.getsEquip_ID());
			solar.setsSolar_NO(request.getParameter("sSolar_NO"));
			solar.setsSolar_Type(request.getParameter("sSolar_Type"));
			solar.setsSolar_Connect(request.getParameter("sSolar_Connect"));
			solar.setlSolar_Volt(Float.parseFloat(request.getParameter("lSolar_Volt")));
			solar.setlSolar_Watt(Float.parseFloat(request.getParameter("lSolar_Watt")));
			solarEnergyService.insert(solar, user);
			break;
		case Constant.EquipType_SpareLamp:
			EquipSpareLamp spare = new EquipSpareLamp();
			spare.setsEquip_ID(obj.getsEquip_ID());
			spare.setlSLamp_Watt(Float.parseFloat(request.getParameter("lSLamp_Watt")));
			spareLampService.insert(spare, user);
			break;
		case Constant.EquipType_Telemetry:
			EquipTelemetry telemetry = new EquipTelemetry();
			telemetry.setsEquip_ID(obj.getsEquip_ID());
			telemetry.setsTelemetry_NO(request.getParameter("sTelemetry_NO"));
			telemetry.setsTelemetry_Mode(request.getParameter("sTelemetry_Mode"));
			telemetry.setsTelemetry_SIM(request.getParameter("sTelemetry_SIM"));
			telemetry.setlTelemetry_Volt(Float.parseFloat(request.getParameter("lTelemetry_Volt")));
			telemetry.setlTelemetry_Watt(Float.parseFloat(request.getParameter("lTelemetry_Watt")));
			telemetryService.insert(telemetry, user);
			break;
		case Constant.EquipType_ViceLamp:
			EquipViceLamp vice = new EquipViceLamp();
			vice.setsEquip_ID(obj.getsEquip_ID());
			vice.setlVLamp_Watt(Float.parseFloat(request.getParameter("lVLamp_Watt")));
			viceLampService.insert(vice, user);
			break;

		default:
			break;
		}
		
		String tableName =  getTableName();
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}
	
	@TargetDataSource
	public int update(Equip obj, User user, String ip) {
		List<String> pkeys = getPrimaryKeys();
		Map<String, Object> value = Tools.parseObjectToMap(obj);
		Map<String, Object> condition = new HashMap<String, Object>();
		for (String string : pkeys) {
			condition.put(string, value.get(string));
			value.remove(string);
		}
		condition = condition.isEmpty() ? null : condition;
		value = value.isEmpty() ? null : value;
		return update(value, condition, user, ip);
	}

	@TargetDataSource
	public int update(Map<String, Object> value, Map<String, Object> condition, User user, String ip) {

		String tableName =  getTableName();
		condition = condition.isEmpty() ? null : condition;
		
		Equip old = selectOne(condition);
		if(old == null) {
			return 0;
		}
		
		if(Tools.isNullOrEmpty(old.getsEquip_StoreLv1())
				&& !"".equals(value.get("sEquip_StoreLv1"))) {
			//器材仓库不为空，入库操作
			value.put("sEquip_Status", Constant.EquipStatus_1); // 入库
			if(old.getdEquip_StoreDate() == null) {
				value.put("dEquip_StoreDate", new Date()); //第一次入库时间
			}
			//日志
			EquipLog log = new EquipLog();
			log.setsELog_ID(Utils.newSnowflakeIdStr());
			log.setdELog_CreateDate(new Date());
			log.setsELog_EquipID(old.getsEquip_ID());
			log.setsELog_IP(ip);
			log.setsELog_StoreLv1(String.valueOf(value.get("sEquip_StoreLv1")) );
			log.setsELog_StoreLv2(String.valueOf(value.get("sEquip_StoreLv2")) );
			log.setsELog_StoreLv3(String.valueOf(value.get("sEquip_StoreLv3")) );
			log.setsELog_StoreLv4(String.valueOf(value.get("sEquip_StoreLv4")) );
			if(user != null) {
				log.setsELog_UserID(user.getsUser_ID());
			}
			log.setsELog_Type(Constant.EquipLogType_1); // 仓库待用    dict (EquipLogType)
			log.setsELog_Describe("器材入库");
			log.setsELog_Remarks("");
			logService.insert(log, user);
		}

		//更新详情
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		switch (old.getsEquip_Type()) {
		case Constant.EquipType_AIS:
			EquipAis ais = new EquipAis();
			ais.setsEquip_ID(old.getsEquip_ID());
			ais.setsAis_MMSIX(request.getParameter("sAis_MMSIX"));
			aisService.update(ais, user);
			break;
		case Constant.EquipType_Battery:
			EquipBattery battery = new EquipBattery();
			battery.setsEquip_ID(old.getsEquip_ID());
			battery.setsBattery_NO(request.getParameter("sBattery_NO"));
			battery.setsBattery_Type(request.getParameter("sBattery_Type"));
			battery.setsBattery_Connect(request.getParameter("sBattery_Connect"));
			battery.setlBattery_Volt(Float.parseFloat(request.getParameter("lBattery_Volt")));
			battery.setlBattery_Watt(Float.parseFloat(request.getParameter("lBattery_Watt")));
			batteryService.update(battery, user);
			break;
		case Constant.EquipType_Lamp:
			EquipLamp lamp = new EquipLamp();
			lamp.setsEquip_ID(old.getsEquip_ID());
			lamp.setsLamp_NO(request.getParameter("sLamp_NO"));
			lamp.setsLamp_Type(request.getParameter("sLamp_Type"));
			lamp.setsLamp_Telemetry(request.getParameter("sLamp_Telemetry"));
			lamp.setsLamp_Brand(request.getParameter("sLamp_Brand"));
			lamp.setsLamp_Lens(request.getParameter("sLamp_Lens"));
			lamp.setlLamp_TelemetryFlag(Integer.parseInt(request.getParameter("lLamp_TelemetryFlag")));
			lamp.setlLamp_InputVolt(Float.parseFloat(request.getParameter("lLamp_InputVolt")));
			lamp.setlLamp_Watt(Float.parseFloat(request.getParameter("lLamp_Watt")));
			lampService.update(lamp, user);
			break;
		case Constant.EquipType_Radar:
			EquipRadar radar = new EquipRadar();
			radar.setsEquip_ID(old.getsEquip_ID());
			radar.setsRadar_NO(request.getParameter("sRadar_NO"));
			radar.setsRadar_Band(request.getParameter("sRadar_Band"));
			radarService.update(radar, user);
			break;
		case Constant.EquipType_SolarEnergy:
			EquipSolarEnergy solar = new EquipSolarEnergy();
			solar.setsEquip_ID(old.getsEquip_ID());
			solar.setsSolar_NO(request.getParameter("sSolar_NO"));
			solar.setsSolar_Type(request.getParameter("sSolar_Type"));
			solar.setsSolar_Connect(request.getParameter("sSolar_Connect"));
			solar.setlSolar_Volt(Float.parseFloat(request.getParameter("lSolar_Volt")));
			solar.setlSolar_Watt(Float.parseFloat(request.getParameter("lSolar_Watt")));
			solarEnergyService.update(solar, user);
			break;
		case Constant.EquipType_SpareLamp:
			EquipSpareLamp spare = new EquipSpareLamp();
			spare.setsEquip_ID(old.getsEquip_ID());
			spare.setlSLamp_Watt(Float.parseFloat(request.getParameter("lSLamp_Watt")));
			spareLampService.update(spare, user);
			break;
		case Constant.EquipType_Telemetry:
			EquipTelemetry telemetry = new EquipTelemetry();
			telemetry.setsEquip_ID(old.getsEquip_ID());
			telemetry.setsTelemetry_NO(request.getParameter("sTelemetry_NO"));
			telemetry.setsTelemetry_Mode(request.getParameter("sTelemetry_Mode"));
			telemetry.setsTelemetry_SIM(request.getParameter("sTelemetry_SIM"));
			telemetry.setlTelemetry_Volt(Float.parseFloat(request.getParameter("lTelemetry_Volt")));
			telemetry.setlTelemetry_Watt(Float.parseFloat(request.getParameter("lTelemetry_Watt")));
			telemetryService.update(telemetry, user);
			break;
		case Constant.EquipType_ViceLamp:
			EquipViceLamp vice = new EquipViceLamp();
			vice.setsEquip_ID(old.getsEquip_ID());
			vice.setlVLamp_Watt(Float.parseFloat(request.getParameter("lVLamp_Watt")));
			viceLampService.update(vice, user);
			break;

		default:
			break;
		}
		
		return baseMapper.update(tableName, value, condition);
	}



	@Transactional
	@TargetDataSource
	public int delBind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition); //解除绑定
		return nfcService.rebind(sNfc_ID); //修改状态
	}

	@Transactional
	@TargetDataSource
	public int bind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", sNfc_ID);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition); //绑定
		return nfcService.bind(sNfc_ID); //修改状态
	}
	

	@Transactional
	@TargetDataSource
	public int rebind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_NfcID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition); //解除绑定
	}
	
	@TargetDataSource
	public List<Equip> unbind() {
		return baseMapper.unbind();
	}


	@Override
	@Transactional
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		condition = condition.isEmpty() ? null : condition;
		String tableName =  getTableName();
		Equip old = baseMapper.selectOne(tableName, condition);
		//删除NFC
		if(!Tools.isNullOrEmpty(old.getsEquip_NfcID())) {
			nfcService.rebind(old.getsEquip_NfcID()); //修改状态
		}
		//删除航标
		if(!Tools.isNullOrEmpty(old.getsEquip_AidID())) {
			aidEquipService.delete(MapTools.custom().put("sAidEquip_EquipID", old.getsEquip_ID()).build(), user);
		}
		//删除日志
		logService.delete(MapTools.custom().put("sELog_EquipID", old.getsEquip_ID()).build(), user);
		//删除详情
		Map<String, Object> condetail = MapTools.custom().put("sEquip_ID", old.getsEquip_ID()).build();
		switch (old.getsEquip_Type()) {
		case Constant.EquipType_AIS:
			aisService.delete(condetail, user);
			break;
		case Constant.EquipType_Battery:
			batteryService.delete(condetail, user);
			break;
		case Constant.EquipType_Lamp:
			lampService.delete(condetail, user);
			break;
		case Constant.EquipType_Radar:
			radarService.delete(condetail, user);
			break;
		case Constant.EquipType_SolarEnergy:
			solarEnergyService.delete(condetail, user);
			break;
		case Constant.EquipType_SpareLamp:
			spareLampService.delete(condetail, user);
			break;
		case Constant.EquipType_Telemetry:
			telemetryService.delete(condetail, user);
			break;
		case Constant.EquipType_ViceLamp:
			viceLampService.delete(condetail, user);
			break;

		default:
			break;
		}
		return baseMapper.delete(tableName, condition); //删除
	}
	
	@TargetDataSource
	public Object detail(String sEquip_ID){
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR106, "sEquip_ID");
		}
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		String tableName =  getTableName();
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Tools.isNullOrEmpty(test.getsEquip_Type())) {
			throw new ServiceException(Tips.ERROR106, "器材分类");
		}
		//查询详情
		Object detail = null;
		Map<String, Object> condetail = MapTools.custom().put("sEquip_ID", test.getsEquip_ID()).build();
		switch (test.getsEquip_Type()) {
		case Constant.EquipType_AIS:
			detail = aisService.selectOne(condetail);
			break;
		case Constant.EquipType_Battery:
			detail = batteryService.selectOne(condetail);
			break;
		case Constant.EquipType_Lamp:
			detail = lampService.selectOne(condetail);
			break;
		case Constant.EquipType_Radar:
			detail = radarService.selectOne(condetail);
			break;
		case Constant.EquipType_SolarEnergy:
			detail = solarEnergyService.selectOne(condetail);
			break;
		case Constant.EquipType_SpareLamp:
			detail = spareLampService.selectOne(condetail);
			break;
		case Constant.EquipType_Telemetry:
			detail = telemetryService.selectOne(condetail);
			break;
		case Constant.EquipType_ViceLamp:
			detail = viceLampService.selectOne(condetail);
			break;

		default:
			break;
		}
		return detail;
	}
	
	@TargetDataSource
	public int isStore(String sStore_ID) {
		return baseMapper.isStore(sStore_ID);
	}
	
	@TargetDataSource
	public List<EquipLog> history(String sEquip_ID){
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR106, "sEquip_ID");
		}
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sELog_EquipID", sEquip_ID);
		//排序
		List<EquipLog> logs = logService.selectList(condition);
		for (int i = 0; i < logs.size(); i++) {
			for (int j = i; j < logs.size(); j++) {
				if(logs.get(i).getdELog_CreateDate().getTime() > logs.get(j).getdELog_CreateDate().getTime()) {
					EquipLog temp = logs.get(i);
					logs.set(i, logs.get(j));
					logs.set(j, temp);
				}
			}
		}
		return logs;
	}
	

	
	@TargetDataSource
	public List<Equip> search(String keywords, User user, String ip) {
		return baseMapper.search(keywords);
	}


	//TODO ----------------------------------------------------------------------器材操作
	
	@TargetDataSource
	@Transactional
	public int inStore(Equip equip, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(equip == null) {
			throw new ServiceException(Tips.ERROR101, "器材不能为空");
		}
		String sEquip_ID = equip.getsEquip_ID();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可入库
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_1.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已入库");
		}
		if(Constant.EquipStatus_8.equals(test.getsEquip_Status())) { //报废
			throw new ServiceException(Tips.ERROR101, "器材已报废，不可入库");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //使用中
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可入库");
		}
		Date date = new Date();
		equip.setsEquip_Status(Constant.EquipStatus_1); // 入库
		values.put("sEquip_Status", equip.getsEquip_Status());
		values.put("sEquip_StoreLv1", equip.getsEquip_StoreLv1());
		values.put("sEquip_StoreLv2", equip.getsEquip_StoreLv2());
		values.put("sEquip_StoreLv3", equip.getsEquip_StoreLv3());
		values.put("sEquip_StoreLv4", equip.getsEquip_StoreLv4());
		if(test.getdEquip_StoreDate() == null) {
			values.put("dEquip_StoreDate", date); //第一次入库时间
		}
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(date);
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);			
		log.setsELog_StoreLv1(equip.getsEquip_StoreLv1());
		log.setsELog_StoreLv2(equip.getsEquip_StoreLv2());
		log.setsELog_StoreLv3(equip.getsEquip_StoreLv3());
		log.setsELog_StoreLv4(equip.getsEquip_StoreLv4());
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_1); // 仓库待用
		log.setsELog_Describe("器材入库");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}

	@TargetDataSource
	@Transactional
	public int outStore(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可出库
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_2.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已出库");
		}
		if(!Constant.EquipStatus_1.equals(test.getsEquip_Status())) { //不再仓库中
			throw new ServiceException(Tips.ERROR101, "器材不在仓库中，不可出库");
		}
		//出库
		values.put("sEquip_Status", Constant.EquipStatus_2);
		values.put("sEquip_StoreLv1", " ");
		values.put("sEquip_StoreLv2", " ");
		values.put("sEquip_StoreLv3", " ");
		values.put("sEquip_StoreLv4", " ");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		log.setsELog_StoreLv1(test.getsEquip_StoreLv1());
		log.setsELog_StoreLv2(test.getsEquip_StoreLv2());
		log.setsELog_StoreLv3(test.getsEquip_StoreLv3());
		log.setsELog_StoreLv4(test.getsEquip_StoreLv4());
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_2); // 出库
		log.setsELog_Describe("器材出库");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int remove(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可拆除
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_3.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已拆除");
		}
		if(!Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //拆除
			throw new ServiceException(Tips.ERROR101, "器材未使用，不可拆除");
		}
		//拆除
		values.put("sEquip_Status", Constant.EquipStatus_3);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_3); // 拆除
		log.setsELog_Describe("器材拆除");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		aidEquipService.delete(MapTools.custom().put("sAidEquip_EquipID", sEquip_ID).build(), user);
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int transport(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可运输
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_4.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已在运输中");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可运输");
		}
		//运输
		values.put("sEquip_Status", Constant.EquipStatus_4);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_4); // 运输
		log.setsELog_Describe("器材运输中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int toBeTest(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可待检测
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_5.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已待检测中");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可待检测");
		}
		//待检测
		values.put("sEquip_Status", Constant.EquipStatus_5);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_5); // 待检测
		log.setsELog_Describe("器材待检测中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int check(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可检测
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_6.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已检测中");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可检测");
		}
		//检测
		values.put("sEquip_Status", Constant.EquipStatus_6);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_6); // 检测
		log.setsELog_Describe("器材检测中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int repair(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可维修
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_7.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已在维修");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可维修");
		}
		//维修
		values.put("sEquip_Status", Constant.EquipStatus_7);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_7); // 维修
		log.setsELog_Describe("器材维修中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}



	@TargetDataSource
	@Transactional
	public int dump(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可维修
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_8.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已报废");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可报废");
		}
		//报废
		values.put("sEquip_Status", Constant.EquipStatus_8);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_8); // 报废
		log.setsELog_Describe("器材报废");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//解除绑定关系
		// 航标
		values.put("sEquip_AidID", "");
		aidEquipService.delete(MapTools.custom().put("sAidEquip_EquipID", sEquip_ID).build(), user);
		// nfc
		if(!Tools.isNullOrEmpty(test.getsEquip_NfcID())) {
			values.put("sEquip_NfcID", "");
			nfcService.update(MapTools.custom().put("lNfc_StatusFlag", 0).build(), MapTools.custom().put("sNfc_ID", test.getsEquip_NfcID()).build(), user);
		}
		return baseMapper.update(tableName, values, condition);
	}



	@TargetDataSource
	@Transactional
	public int useToAid(String sEquip_ID, String sAid_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		if(Tools.isNullOrEmpty(sAid_ID)) {
			throw new ServiceException(Tips.ERROR206, "sAid_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可使用
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_9.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已在使用");
		}
		if(Constant.EquipStatus_8.equals(test.getsEquip_Status())) { //报废
			throw new ServiceException(Tips.ERROR101, "器材已报废，不可使用");
		}
		if(Constant.EquipStatus_1.equals(test.getsEquip_Status())) { //仓库
			throw new ServiceException(Tips.ERROR101, "器材未出库，不可使用");
		}
		Date date = new Date();
		//使用
		values.put("sEquip_Status", Constant.EquipStatus_9);
		values.put("sEquip_AidID", sAid_ID);
		if(test.getdEquip_UseDate() == null) {
			values.put("dEquip_UseDate", date);
		}
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(date);
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_9); // 使用
		log.setsELog_Describe("器材使用中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		AidEquip aidEquip = new AidEquip();
		aidEquip.setsAidEquip_ID(Utils.newSnowflakeIdStr());
		aidEquip.setsAidEquip_AidID(sAid_ID);
		aidEquip.setsAidEquip_EquipID(sEquip_ID);
		aidEquip.setdAidEquip_CreateDate(date);
		aidEquipService.insert(aidEquip, user);
		return baseMapper.update(tableName, values, condition);
	}
	

	@TargetDataSource
	@Transactional
	public int unusual(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可维修
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if(Constant.EquipStatus_10.equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已处于异常状态");
		}
		//异常
		values.put("sEquip_Status", Constant.EquipStatus_10);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type(Constant.EquipLogType_10); // 异常
		log.setsELog_Describe("器材异常");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//标记航标为异常
		Aid aid = null;
		List<UserAid> ausers = null;
		AidEquip aidEquip = aidEquipService.selectOne(MapTools.custom().put("sAidEquip_EquipID", sEquip_ID).build());
		if(aidEquip != null) {
			aid = aidService.selectOne(MapTools.custom().put("sAid_ID", aidEquip.getsAidEquip_AidID()).build());
			if(aid != null) {
				aid.setsAid_Status("unusual");
				aidService.update(aid, user);
				//查询用户
				ausers = userAidService.selectList(MapTools.custom().put("sUserAid_AidID", aid.getsAid_ID()).build());
			}
		}

		//产生消息
		List<Message> mlist = new ArrayList<Message>();
		Message message = new Message();
		message.setsMsg_ID(Utils.newSnowflakeIdStr());
		message.setdMsg_CreateDate(new Date());
		message.setlMsg_Level(1);
		message.setsMsg_Type(Constant.MsgType_3);
		message.setsMsg_Status(Constant.MsgStatus_1);
		message.setsMsg_EquipID(sEquip_ID);
		message.setsMsg_Title("器材异常");
		message.setsMsg_Describe(remarks);
		if(aid != null) {
			message.setsMsg_AidID(aid.getsAid_ID());
		}
		if(ausers != null) {
			for (UserAid userAid : ausers) {
				Message node = message.clone();
				node.setsMsg_ID(Utils.newSnowflakeIdStr());
				node.setsMsg_ToUserID(userAid.getsUserAid_UserID());
				mlist.add(node);
			}
		}else {
			mlist.add(message);
		}
		messageService.batchInsert(mlist, user);
		//更新
		return baseMapper.update(tableName, values, condition);
	}
	
	//TODO ---------------------------------------------------------------------------------统计
	
	/**
	 * 器材区域分布
	 */
	@TargetDataSource
	public Map<String, Object> distribution(String sEquip_Type, String used){
		
		//未使用器材
		List<Map<String, Object>> list1 = new ArrayList<>();
		if(Tools.isNullOrEmpty(used) || "2".equals(used)) {
			list1 = baseMapper.statisUnused(sEquip_Type);
		}

		//正使用器材
		List<Map<String, Object>> list2 = new ArrayList<>();
		if(Tools.isNullOrEmpty(used) || "1".equals(used)) {
			list2 = baseMapper.statisUsed(sEquip_Type);
		}
		
		return MapTools.custom().put("unused", list1).put("used", list2).build();
	}
	
	/**
	 * 器材状态
	 */
	@TargetDataSource
	public List<Map<String, Object>> status(String sEquip_Type, String sAid_Station){
		
		List<Map<String, Object>> list = baseMapper.statisStatus(sEquip_Type, sAid_Station);
		
		return list;
	}
	
	/**
	 * 器材出入库
	 */
	@TargetDataSource
	public List<Map<String, Object>> inoutStore(String sEquip_StoreLv1, String sEquip_StoreLv2, String sEquip_StoreLv3, String sEquip_StoreLv4){
		
		List<Map<String, Object>> list = baseMapper.inoutStore(sEquip_StoreLv1, sEquip_StoreLv2, sEquip_StoreLv3, sEquip_StoreLv4);
		
		return list;
	}
}
