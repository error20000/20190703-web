package com.jian.system.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAppAuth;
import com.jian.system.annotation.VerifyAppLogin;
import com.jian.system.annotation.VerifyAppSign;
import com.jian.system.entity.Aid;
import com.jian.system.entity.AidEquip;
import com.jian.system.entity.AidMapIcon;
import com.jian.system.entity.AidTypeMapIcon;
import com.jian.system.entity.Dict;
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
import com.jian.system.entity.Nfc;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreType;
import com.jian.system.entity.System;
import com.jian.system.entity.User;
import com.jian.system.entity.UserAid;
import com.jian.system.service.AidEquipService;
import com.jian.system.service.AidMapIconService;
import com.jian.system.service.AidService;
import com.jian.system.service.AidTypeMapIconService;
import com.jian.system.service.DictService;
import com.jian.system.service.EquipAisService;
import com.jian.system.service.EquipBatteryService;
import com.jian.system.service.EquipLampService;
import com.jian.system.service.EquipLogService;
import com.jian.system.service.EquipRadarService;
import com.jian.system.service.EquipService;
import com.jian.system.service.EquipSolarEnergyService;
import com.jian.system.service.EquipSpareLampService;
import com.jian.system.service.EquipTelemetryService;
import com.jian.system.service.EquipViceLampService;
import com.jian.system.service.NfcService;
import com.jian.system.service.StoreService;
import com.jian.system.service.StoreTypeService;
import com.jian.system.service.SystemService;
import com.jian.system.service.UserAidService;
import com.jian.system.service.UserService;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/sync")
@API(name="通过管理")
public class SyncController extends BaseController<Dict, DictService> {
	
	@Autowired
	private SystemService systemService;
	@Autowired
	private DictService dictService;
	@Autowired
	private UserService userService;
	@Autowired
	private UserAidService userAidService;
	@Autowired
	private StoreTypeService storeTypeService;
	@Autowired
	private StoreService storeService;
	@Autowired
	private NfcService nfcService;
	@Autowired
	private AidService aidService;
	@Autowired
	private AidEquipService aidEquipService;
	@Autowired
	private AidMapIconService aidMapIconService;
	@Autowired
	private AidTypeMapIconService aidTypeMapIconService;
	@Autowired
	private EquipService equipService;
	@Autowired
	private EquipLogService equipLogService;
	@Autowired
	private EquipAisService equipAisService;
	@Autowired
	private EquipBatteryService equipBatteryService;
	@Autowired
	private EquipLampService equipLampService;
	@Autowired
	private EquipRadarService equipRadarService;
	@Autowired
	private EquipSolarEnergyService equipSolarEnergyService;
	@Autowired
	private EquipSpareLampService equipSpareLampService;
	@Autowired
	private EquipTelemetryService equipTelemetryService;
	@Autowired
	private EquipViceLampService equipViceLampService;



	//TODO -------------------------------------------------------------------------------- system

	@RequestMapping("/app/system")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步系统配置")
	public String appSystem(HttpServletRequest req) {
		List<System> res = systemService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- dict

	@RequestMapping("/app/dict")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步数据字典")
	public String appDict(HttpServletRequest req) {
		List<Dict> res = dictService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- user

	@RequestMapping("/app/user")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步用户")
	public String appUser(HttpServletRequest req) {
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		User loginUser = getAppLoginUser(req);
		List<User> res = new ArrayList<>();
		if(loginUser != null && loginUser.getsUser_ID().equals(sUser_ID)) {
			res = userService.selectList(MapTools.custom().put("sUser_ID", sUser_ID).build());
		}
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/userAid")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步用户航标")
	public String appUserAid(HttpServletRequest req) {
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		User loginUser = getAppLoginUser(req);
		List<UserAid> res = new ArrayList<>();
		if(loginUser != null && loginUser.getsUser_ID().equals(sUser_ID)) {
			res = userAidService.selectList(MapTools.custom().put("sUserAid_UserID", sUser_ID).build());
		}
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- store

	@RequestMapping("/app/storeType")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步仓库")
	public String appStoreType(HttpServletRequest req) {
		List<StoreType> res = storeTypeService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/store")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步仓库")
	public String appStore(HttpServletRequest req) {
		List<Store> res = storeService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- nfc

	@RequestMapping("/app/nfc")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步NFC")
	public String appNfc(HttpServletRequest req) {
		List<Nfc> res = nfcService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- aid

	@RequestMapping("/app/aid")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步航标")
	public String appAid(HttpServletRequest req) {
		List<Aid> res = aidService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/aidEquip")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步航标器材")
	public String appAidEquip(HttpServletRequest req) {
		List<AidEquip> res = aidEquipService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/aidMapIcon")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步航标图标")
	public String appAidMapIcon(HttpServletRequest req) {
		List<AidMapIcon> res = aidMapIconService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/aidTypeMapIcon")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步航标分类图标")
	public String appAidTypeMapIcon(HttpServletRequest req) {
		List<AidTypeMapIcon> res = aidTypeMapIconService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- equip

	@RequestMapping("/app/equip")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材")
	public String appEquip(HttpServletRequest req) {
		List<Equip> res = equipService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipLog")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材")
	public String appEquipLog(HttpServletRequest req) {
		String syncDate = Tools.getReqParamSafe(req, "syncDate");
		List<EquipLog> res = null;
		if(Tools.isNullOrEmpty(syncDate)) {
			res = equipLogService.selectAll();
		}else {
			res = equipLogService.syncDate(new Date(Long.parseLong(syncDate)) );
		}
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipAis")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材Ais")
	public String appEquipAis(HttpServletRequest req) {
		List<EquipAis> res = equipAisService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipBattery")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材Battery")
	public String appEquipBattery(HttpServletRequest req) {
		List<EquipBattery> res = equipBatteryService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipLamp")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材Lamp")
	public String appEquipLamp(HttpServletRequest req) {
		List<EquipLamp> res = equipLampService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipRadar")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材Radar")
	public String appEquipRadar(HttpServletRequest req) {
		List<EquipRadar> res = equipRadarService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipSolarEnergy")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材SolarEnergy")
	public String appEquipSolarEnergy(HttpServletRequest req) {
		List<EquipSolarEnergy> res = equipSolarEnergyService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipSpareLamp")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材SpareLamp")
	public String appEquipSpareLamp(HttpServletRequest req) {
		List<EquipSpareLamp> res = equipSpareLampService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipTelemetry")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材Telemetry")
	public String appEquipTelemetry(HttpServletRequest req) {
		List<EquipTelemetry> res = equipTelemetryService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/equipViceLamp")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app同步器材ViceLamp")
	public String appEquipViceLamp(HttpServletRequest req) {
		List<EquipViceLamp> res = equipViceLampService.selectAll();
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
}
