package com.jian.system.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAppAuth;
import com.jian.system.annotation.VerifyAppLogin;
import com.jian.system.annotation.VerifyAppSign;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.config.Constant;
import com.jian.system.entity.Aid;
import com.jian.system.entity.AidEquip;
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
import com.jian.system.entity.User;
import com.jian.system.service.AidService;
import com.jian.system.service.DictService;
import com.jian.system.service.EquipService;
import com.jian.system.service.NfcService;
import com.jian.system.service.StoreService;
import com.jian.system.service.StoreTypeService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/equip")
@API(name="器材管理")
public class EquipController extends BaseController<Equip, EquipService> {

	@Autowired
	private NfcService nfcService;
	@Autowired
	private StoreTypeService storeTypeService;
	@Autowired
	private StoreService storeService;
	@Autowired
	private AidService aidService;
	@Autowired
	private DictService dictService;

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增器材")
	public String add(HttpServletRequest req) {
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		int res = service.insert(obj, getLoginUser(req), Tools.getIp(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新器材")
	public String update(HttpServletRequest req) {
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		//保存
		int res = service.update(obj, getLoginUser(req), Tools.getIp(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除器材")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询器材")
	public String findPage(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String page = Tools.getReqParamSafe(req, "page");
		String rows = Tools.getReqParamSafe(req, "rows");
		vMap = Tools.verifyParam("page", page, 0, 0, true);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("rows", rows, 0, 0, true);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int start = Tools.parseInt(page) <= 1 ? 0 : (Tools.parseInt(page) - 1) * Tools.parseInt(rows);
		//参数
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Equip.class);
		
		List<Map<String, Object>> list = service.selectPageByUser(condition, getLoginUser(req), start, Tools.parseInt(rows));
		long total = service.sizeByUser(condition, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个器材")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有器材")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	@RequestMapping("/delBind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="器材解除NFC绑定")
	public String delBind(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sNfc_ID = Tools.getReqParamSafe(req, "sNfc_ID");
		String id = Tools.getReqParamSafe(req, "id");
		vMap = Tools.verifyParam("sNfc_ID", sNfc_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("id", id, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.delBind(id, sNfc_ID);
		if(res == 0) {
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/bind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="器材绑定NFC")
	public String bind(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sNfc_ID = Tools.getReqParamSafe(req, "sNfc_ID");
		String id = Tools.getReqParamSafe(req, "id");
		vMap = Tools.verifyParam("sNfc_ID", sNfc_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("id", id, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.bind(id, sNfc_ID);
		if(res == 0) {
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/unbind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询未绑定NFC的器材")
	public String unbind(HttpServletRequest req) {
		List<Equip> list = service.unbind();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/history")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材历史记录")
	public String history(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		List<Map<String, Object>> list = service.history(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/detail")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材详情")
	public String detail(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		Object res = service.detail(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/type")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材列表")
	public String type(HttpServletRequest req) {
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		List<Equip> list = service.type(sEquip_Type, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 统计接口


	@RequestMapping("/distribution")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材区域分布")
	public String distribution(HttpServletRequest req) {
		String used = Tools.getReqParamSafe(req, "used");
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		Map<String, Object> res = service.distribution(sEquip_Type, used);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/status")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材状态")
	public String status(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		List<Map<String, Object>> res = service.status(sEquip_Type, sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/inoutStore")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材出入库")
	public String inoutStore(HttpServletRequest req) {
		String sEquip_StoreLv1 = Tools.getReqParamSafe(req, "sEquip_StoreLv1");
		String sEquip_StoreLv2 = Tools.getReqParamSafe(req, "sEquip_StoreLv2");
		String sEquip_StoreLv3 = Tools.getReqParamSafe(req, "sEquip_StoreLv3");
		String sEquip_StoreLv4 = Tools.getReqParamSafe(req, "sEquip_StoreLv4");
		List<Map<String, Object>> res = service.inoutStore(sEquip_StoreLv1, sEquip_StoreLv2, sEquip_StoreLv3, sEquip_StoreLv4);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brand")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号")
	public String brand(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brand(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brandDump")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号的报废")
	public String brandDump(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brandDump(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brandUnusual")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号的异常")
	public String brandUnusual(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brandUnusual(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/brandRepair")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材品牌、型号的维修")
	public String brandRepair(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.brandRepair(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/life")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材寿命")
	public String life(HttpServletRequest req) {
		String sEquip_MBrand = Tools.getReqParamSafe(req, "sEquip_MBrand");
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		List<Map<String, Object>> res = service.life(sEquip_MBrand, sEquip_Type);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	@RequestMapping("/brandOption")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有器材品牌")
	public String brandOption(HttpServletRequest req) {
		List<Map<String, Object>> res = service.brandOption();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	@RequestMapping("/equipType")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询器材种类")
	public String equipType(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.equipType(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/import")
	@ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入器材")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			List<Dict> types = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipType).build());
			//List<Dict> statuss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipStatus).build());
			//List<Dict> icons = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipIcon).build());
			List<Dict> manufacturers = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipManufacturer).build());
			
			List<Dict> aiss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipAisMMSIX).build());
			List<Dict> batteryTypes = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipBatteryType).build());
			List<Dict> lampTypes = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipLampType).build());
			List<Dict> lampLenss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipLampLens).build());
			List<Dict> lampTelemetrys = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipLampTelemetry).build());
			List<Dict> radarNOs = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipRadarNO).build());
			List<Dict> radarBands = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipRadarBand).build());
			List<Dict> solarTypes = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipSolarEnergyType).build());
			List<Dict> telemetryModes = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_EquipTelemetryMode).build());

			List<Nfc> nfcs = nfcService.selectList(MapTools.custom().put("lNfc_StatusFlag", 0).build());
			List<Store> alls = storeService.selectAll();
			List<StoreType> allt = storeTypeService.selectAll();
			List<Aid> aids = aidService.selectAll(getLoginUser(req));
			List<Equip> all = service.selectAll();
			
			List<Nfc> usedNfcs = new ArrayList<>();
			List<EquipLog> elogs = new ArrayList<>();
			List<AidEquip> aidEquips = new ArrayList<>();
			List<Equip> list = new ArrayList<>();
			Equip node = null;
			List<EquipAis> listAis = new ArrayList<>();
			List<EquipBattery> listBattery = new ArrayList<>();
			List<EquipLamp> listLamp = new ArrayList<>();
			List<EquipRadar> listRadar = new ArrayList<>();
			List<EquipSolarEnergy> listSolarEnergy = new ArrayList<>();
			List<EquipSpareLamp> listSpareLamp = new ArrayList<>();
			List<EquipTelemetry> listTelemetry = new ArrayList<>();
			List<EquipViceLamp> listViceLamp = new ArrayList<>();
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
			int total = workbook.getNumberOfSheets();
			for (int i = 0; i < total; i++) {
				
				Sheet sheet = workbook.getSheetAt(i);
				//获取sheet的行数
				int rows = sheet.getPhysicalNumberOfRows();
				for (int j = 0; j < rows; j++) {
					//过滤表头行
					if (j == 0) {
						continue;
					}
					//获取当前行的数据
					Row row = sheet.getRow(j);
					node = new Equip();
					
					String equipNO = Utils.getCellValue(row.getCell(0));
					if(Tools.isNullOrEmpty(equipNO)) {
						continue;
					}
					//去重
					//1、自身
					List<Equip> tempLists = list.stream()
				    		.filter(e -> equipNO.equals(e.getsEquip_NO()))
				    		.collect(Collectors.toList());
					if(tempLists.size() > 0) {
				    	continue;
				    }
					//2、数据库
				    List<Equip> tempAlls = all.stream()
				    		.filter(e -> equipNO.equals(e.getsEquip_NO()))
				    		.collect(Collectors.toList());
				    
				    if(tempAlls.size() > 0) {
				    	continue;
				    }
					
					node.setsEquip_ID(Utils.newSnowflakeIdStr());
					node.setsEquip_Name(equipNO);
					node.setsEquip_NO(equipNO);
                	node.setsEquip_Status(Constant.EquipStatus_0);
					
					String nfcNO = Utils.getCellValue(row.getCell(1));
				    List<Nfc> tempNfcs = nfcs.stream()
				    		.filter(e -> e.getsNfc_NO().equals(nfcNO))
				    		.collect(Collectors.toList());
	                if(tempNfcs.size() > 0) {
	                	Nfc temp = tempNfcs.get(0);
	                	node.setsEquip_NfcID(temp.getsNfc_ID());
	                	//标记nfc已使用
	                	temp.setlNfc_StatusFlag(1);
	                	usedNfcs.add(temp);
	                }
	                
				    String storeLv1Name = Utils.getCellValue(row.getCell(2));
				    String storeLv1Id = "";
				    List<StoreType> tempStoreLv1s = allt.stream()
				    		.filter(e -> e.getsStoreType_Name().equals(storeLv1Name))
				    		.collect(Collectors.toList());
	                if(tempStoreLv1s.size() > 0) {
	                	storeLv1Id = tempStoreLv1s.get(0).getsStoreType_ID();
	                	node.setsEquip_StoreLv1(storeLv1Id);
	                }
	                
	                String storeLv1IdTemp = storeLv1Id;
				    String storeLv2Name = Utils.getCellValue(row.getCell(3));
				    String storeLv2Id = "";
				    List<Store> tempStoreLv2s = alls.stream()
				    		.filter(e -> e.getsStore_Name().equals(storeLv2Name) && e.getsStore_Parent().equals(storeLv1IdTemp))
				    		.collect(Collectors.toList());
	                if(tempStoreLv2s.size() > 0) {
	                	storeLv2Id = tempStoreLv2s.get(0).getsStore_ID();
	                	node.setsEquip_StoreLv2(storeLv2Id);
	                }
	                
	                String storeLv2IdTemp = storeLv2Id;
				    String storeLv3Name = Utils.getCellValue(row.getCell(4));
				    String storeLv3Id = "";
				    List<Store> tempStoreLv3s = alls.stream()
				    		.filter(e -> e.getsStore_Name().equals(storeLv3Name) && e.getsStore_Parent().equals(storeLv2IdTemp))
				    		.collect(Collectors.toList());
	                if(tempStoreLv3s.size() > 0) {
	                	storeLv3Id = tempStoreLv3s.get(0).getsStore_ID();
	                	node.setsEquip_StoreLv3(storeLv3Id);
	                }
	                
	                String storeLv3IdTemp = storeLv3Id;
				    String storeLv4Name = Utils.getCellValue(row.getCell(5));
				    String storeLv4Id = "";
				    List<Store> tempStoreLv4s = alls.stream()
				    		.filter(e -> e.getsStore_Name().equals(storeLv4Name) && e.getsStore_Parent().equals(storeLv3IdTemp))
				    		.collect(Collectors.toList());
	                if(tempStoreLv4s.size() > 0) {
	                	storeLv4Id = tempStoreLv4s.get(0).getsStore_ID();
	                	node.setsEquip_StoreLv4(storeLv4Id);
	                }
	                //添加入库记录
	                if(!Tools.isNullOrEmpty(storeLv1Id)) {
	                	Date date = new Date();
	                	node.setdEquip_StoreDate(date);
	                	node.setsEquip_Status(Constant.EquipStatus_1);
	                	//日志
	                	EquipLog log = new EquipLog();
	            		log.setsELog_ID(Utils.newSnowflakeIdStr());
	            		log.setdELog_CreateDate(date);
	            		log.setsELog_EquipID(node.getsEquip_ID());
	            		log.setsELog_IP(Tools.getIp(req));			
	            		log.setsELog_StoreLv1(storeLv1Id);
	            		log.setsELog_StoreLv2(storeLv2Id);
	            		log.setsELog_StoreLv3(storeLv3Id);
	            		log.setsELog_StoreLv4(storeLv4Id);
	            		if(loginUser != null) {
	            			log.setsELog_UserID(loginUser.getsUser_ID());
	            		}
	            		log.setsELog_Type(Constant.EquipLogType_1); // 仓库待用
	            		log.setsELog_Describe("器材入库");
	            		log.setsELog_Remarks("");
	            		elogs.add(log);
	                }
					
					String aidName = Utils.getCellValue(row.getCell(6));
					List<Aid> tempAids = aids.stream()
							.filter(e -> e.getsAid_Name().equals(aidName))
							.collect(Collectors.toList());
					if(tempAids.size() > 0) {
						String aidID = tempAids.get(0).getsAid_ID();
						node.setsEquip_AidID(aidID);
						//添加使用记录
	                	Date date = new Date();
	                	node.setdEquip_UseDate(date);
	                	node.setsEquip_Status(Constant.EquipStatus_9);
						//日志
						EquipLog log = new EquipLog();
						log.setsELog_ID(Utils.newSnowflakeIdStr());
						log.setdELog_CreateDate(date);
						log.setsELog_EquipID(node.getsEquip_ID());
						log.setsELog_IP(Tools.getIp(req));
						if(loginUser != null) {
							log.setsELog_UserID(loginUser.getsUser_ID());
						}
						log.setsELog_Type(Constant.EquipLogType_9); // 使用
						log.setsELog_Describe("器材使用中");
						log.setsELog_Remarks("");
						elogs.add(log);
						//记录
						AidEquip aidEquip = new AidEquip();
						aidEquip.setsAidEquip_ID(Utils.newSnowflakeIdStr());
						aidEquip.setsAidEquip_AidID(aidID);
						aidEquip.setsAidEquip_EquipID(node.getsEquip_ID());
						aidEquip.setdAidEquip_CreateDate(date);
						aidEquips.add(aidEquip);
					}

					String manufacturerName = Utils.getCellValue(row.getCell(7));
					List<Dict> tempManufacturers = manufacturers.stream()
							.filter(e -> e.getsDict_Name().equals(manufacturerName))
							.collect(Collectors.toList());
					if(tempManufacturers.size() > 0) {
						node.setsEquip_Manufacturer(tempManufacturers.get(0).getsDict_NO());
					}
					node.setsEquip_MModel(Utils.getCellValue(row.getCell(8)));
					node.setsEquip_MBrand(Utils.getCellValue(row.getCell(9)));
					node.setdEquip_ArrivalDate(Utils.getCellValueDate(row.getCell(10)));
					
					String typeName = Utils.getCellValue(row.getCell(11));
					String typeNO = "";
					List<Dict> tempTypes = types.stream()
							.filter(e -> e.getsDict_Name().equals(typeName))
							.collect(Collectors.toList());
					if(tempTypes.size() > 0) {
						typeNO = tempTypes.get(0).getsDict_NO();
						node.setsEquip_Type(typeNO);
					}
					
					node.setdEquip_CreateDate(new Date());
					
					list.add(node);
					
					String sEquip_ID = node.getsEquip_ID();
					//额外属性
					switch (typeNO) {
					case Constant.EquipType_AIS:
						EquipAis ais = new EquipAis();
						ais.setsEquip_ID(sEquip_ID);
						
						String aisName = Utils.getCellValue(row.getCell(12));
						List<Dict> tempAiss = aiss.stream()
								.filter(e -> e.getsDict_Name().equals(aisName))
								.collect(Collectors.toList());
						if(tempAiss.size() > 0) {
							ais.setsAis_MMSIX(tempAiss.get(0).getsDict_NO());
						}
						listAis.add(ais);
						break;
					case Constant.EquipType_Battery:
						EquipBattery battery = new EquipBattery();
						battery.setsEquip_ID(sEquip_ID);
						battery.setsBattery_NO(Utils.getCellValue(row.getCell(12)));
						
						String batteryTypeName = Utils.getCellValue(row.getCell(13));
						List<Dict> tempBatteryTypes = batteryTypes.stream()
								.filter(e -> e.getsDict_Name().equals(batteryTypeName))
								.collect(Collectors.toList());
						if(tempBatteryTypes.size() > 0) {
							battery.setsBattery_Type(tempBatteryTypes.get(0).getsDict_NO());
						}
						battery.setlBattery_Volt(Tools.parseFloat(Utils.getCellValue(row.getCell(14))) ); 
						battery.setlBattery_Watt(Tools.parseFloat(Utils.getCellValue(row.getCell(15))) ); 
						battery.setsBattery_Connect(Utils.getCellValue(row.getCell(16)) ); 
						listBattery.add(battery);
						break;
					case Constant.EquipType_Lamp:
						EquipLamp lamp = new EquipLamp();
						lamp.setsEquip_ID(sEquip_ID);
						lamp.setsLamp_NO(Utils.getCellValue(row.getCell(12)));
						
						String lampTypeName = Utils.getCellValue(row.getCell(13));
						List<Dict> tempLampTypes = lampTypes.stream()
								.filter(e -> e.getsDict_Name().equals(lampTypeName))
								.collect(Collectors.toList());
						if(tempLampTypes.size() > 0) {
							lamp.setsLamp_Type(tempLampTypes.get(0).getsDict_NO());
						}
						lamp.setlLamp_InputVolt(Tools.parseFloat(Utils.getCellValue(row.getCell(14))) ); 
						lamp.setlLamp_Watt(Tools.parseFloat(Utils.getCellValue(row.getCell(15))) ); 
						
						String lampLensName = Utils.getCellValue(row.getCell(16));
						List<Dict> tempLampLenss = lampLenss.stream()
								.filter(e -> e.getsDict_Name().equals(lampLensName))
								.collect(Collectors.toList());
						if(tempLampLenss.size() > 0) {
							lamp.setsLamp_Lens(tempLampLenss.get(0).getsDict_NO());
						}
						int flag = "是".equals(Utils.getCellValue(row.getCell(17)) ) ? 1 : 0;
						lamp.setlLamp_TelemetryFlag(flag); 
						if(flag == 1) {
							String lampTelemetryName = Utils.getCellValue(row.getCell(18));
							List<Dict> tempLampTelemetrys = lampTelemetrys.stream()
									.filter(e -> e.getsDict_Name().equals(lampTelemetryName))
									.collect(Collectors.toList());
							if(tempLampTelemetrys.size() > 0) {
								lamp.setsLamp_Telemetry(tempLampTelemetrys.get(0).getsDict_NO());
							}
						}
						listLamp.add(lamp);
						break;
					case Constant.EquipType_Radar:
						EquipRadar radar = new EquipRadar();
						radar.setsEquip_ID(sEquip_ID);
						
						String radarNOName = Utils.getCellValue(row.getCell(12));
						List<Dict> tempRadarNOs = radarNOs.stream()
								.filter(e -> e.getsDict_Name().equals(radarNOName))
								.collect(Collectors.toList());
						if(tempRadarNOs.size() > 0) {
							radar.setsRadar_NO(tempRadarNOs.get(0).getsDict_NO());
						}
						
						String radarBandName = Utils.getCellValue(row.getCell(13));
						List<Dict> tempRadarBands = radarBands.stream()
								.filter(e -> e.getsDict_Name().equals(radarBandName))
								.collect(Collectors.toList());
						if(tempRadarBands.size() > 0) {
							radar.setsRadar_Band(tempRadarBands.get(0).getsDict_NO());
						}
						listRadar.add(radar);
						break;
					case Constant.EquipType_SolarEnergy:
						EquipSolarEnergy solarEnergy = new EquipSolarEnergy();
						solarEnergy.setsEquip_ID(sEquip_ID);
						solarEnergy.setsSolar_NO(Utils.getCellValue(row.getCell(12)));
						
						String solarTypeName = Utils.getCellValue(row.getCell(13));
						List<Dict> tempSolarTypes = solarTypes.stream()
								.filter(e -> e.getsDict_Name().equals(solarTypeName))
								.collect(Collectors.toList());
						if(tempSolarTypes.size() > 0) {
							solarEnergy.setsSolar_Type(tempSolarTypes.get(0).getsDict_NO());
						}
						solarEnergy.setlSolar_Volt(Tools.parseFloat(Utils.getCellValue(row.getCell(14))) ); 
						solarEnergy.setlSolar_Watt(Tools.parseFloat(Utils.getCellValue(row.getCell(15))) ); 
						solarEnergy.setsSolar_Connect(Utils.getCellValue(row.getCell(16)) ); 
						listSolarEnergy.add(solarEnergy);
						break;
					case Constant.EquipType_SpareLamp:
						EquipSpareLamp spareLamp = new EquipSpareLamp();
						spareLamp.setsEquip_ID(sEquip_ID);
						spareLamp.setlSLamp_Watt(Tools.parseFloat(Utils.getCellValue(row.getCell(12))) );
						listSpareLamp.add(spareLamp);
						break;
					case Constant.EquipType_Telemetry:
						EquipTelemetry telemetry = new EquipTelemetry();
						telemetry.setsEquip_ID(sEquip_ID);
						
						String telemetryModeName = Utils.getCellValue(row.getCell(12));
						List<Dict> tempTelemetryModes = telemetryModes.stream()
								.filter(e -> e.getsDict_Name().equals(telemetryModeName))
								.collect(Collectors.toList());
						if(tempTelemetryModes.size() > 0) {
							telemetry.setsTelemetry_Mode(tempTelemetryModes.get(0).getsDict_NO());
						}
						telemetry.setsTelemetry_NO(Utils.getCellValue(row.getCell(13)));
						telemetry.setlTelemetry_Volt(Tools.parseFloat(Utils.getCellValue(row.getCell(14))) ); 
						telemetry.setlTelemetry_Watt(Tools.parseFloat(Utils.getCellValue(row.getCell(15))) ); 
						telemetry.setsTelemetry_SIM(Utils.getCellValue(row.getCell(16)) ); 
						listTelemetry.add(telemetry);
						break;
					case Constant.EquipType_ViceLamp:
						EquipViceLamp viceLamp = new EquipViceLamp();
						viceLamp.setsEquip_ID(sEquip_ID);
						viceLamp.setlVLamp_Watt(Tools.parseFloat(Utils.getCellValue(row.getCell(12))) );
						listViceLamp.add(viceLamp);
						break;

					default:
						break;
					}
				}
			}
			//保存
			if(list.size() > 0) {
				service.imports(list, usedNfcs, elogs, aidEquips, 
						listAis, listBattery, listLamp, listRadar, listSolarEnergy, listSpareLamp, listTelemetry, listViceLamp,
						loginUser);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.MSG, e.getMessage()).toJSONString();
		}
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}

	
	@RequestMapping("/excel")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Export, describe="导出器材")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "Equip";
		//查询
		List<Map<String, Object>> list = service.export(null, getLoginUser(req));
		Map<String, String> types = new HashMap<>();
		for (Map<String, Object> map : list) {
			String typeKey = map.get("sEquip_Type") + "";
			String typeName = (String) map.get("sEquip_TypeName");
			String typeVal = types.get(typeKey);
			if(Tools.isNullOrEmpty(typeVal)) {
				types.put(typeKey, Tools.isNullOrEmpty(typeName) ? typeKey : typeName);
			}
		}
		String comHead = "ID,器材名称,器材编码,器材状态,NFC标签,一级仓库,二级仓库,三级仓库,四级仓库,航标,生产厂家,厂方型号,品牌,到货日期,创建日期,入库日期,使用日期,报废日期,器材类型";
		Map<String, String> headMap = new HashMap<>();
		headMap.put(Constant.EquipType_AIS, comHead + ",MMSIX号");
		headMap.put(Constant.EquipType_Battery, comHead + ",编码,种类,工作电压（V）,容量（W）,连接方式");
		headMap.put(Constant.EquipType_Lamp, comHead + ",编码,类型,输入电压（V）,功率（W）,透镜形状,遥测遥控接口,遥测接口类型");
		headMap.put(Constant.EquipType_Radar, comHead + ",编码,波段");
		headMap.put(Constant.EquipType_SolarEnergy, comHead + ",编码,种类,额定电压（V）,功率（W）,连接方式");
		headMap.put(Constant.EquipType_SpareLamp, comHead + ",功率（W）");
		headMap.put(Constant.EquipType_Telemetry, comHead + ",遥控遥测方式,遥控遥测编码,电压（V）,功率（W）,SIM(MMIS)卡号");
		headMap.put(Constant.EquipType_ViceLamp, comHead + ",功率（W）");

		//执行
		resp.addHeader("Content-Disposition","attachment;filename="+filename+".xls");
		// response.addHeader("Content-Length", "" + JSONArray.fromObject(list).toString().getBytes().length);
		resp.setContentType("application/vnd.ms-excel;charset=utf-8");
		try {
			OutputStream toClient = new BufferedOutputStream(resp.getOutputStream());
			//实例化HSSFWorkbook
            HSSFWorkbook workbook = new HSSFWorkbook();
            
            for (String type : types.keySet()) {
				//筛选数据
            	List<Map<String, Object>> listType = list.stream()
            			.filter(e -> type.equals(e.get("sEquip_Type")+""))
            			.collect(Collectors.toList());
            	
            	//创建一个Excel表单，参数为sheet的名字
            	HSSFSheet sheet = workbook.createSheet(types.get(type) == null ? type : types.get(type));
            	
            	//设置表头
            	String head = headMap.get(type) == null ? comHead : headMap.get(type);
            	String[] heads = head.split(",");
            	HSSFRow row = sheet.createRow(0);
            	//设置列宽，setColumnWidth的第二个参数要乘以256，这个参数的单位是1/256个字符宽度
            	for (int i = 0; i < heads.length; i++) {
            		sheet.setColumnWidth(i, (int)(( 15 + 0.72) * 256)); // 15 在EXCEL文档中实际列宽为14.29
            	}
            	//设置为居中加粗,格式化时间格式
            	HSSFCellStyle style = workbook.createCellStyle();
            	HSSFFont font = workbook.createFont();
            	font.setBold(true);
            	style.setFont(font);
            	HSSFCellStyle styleDate = workbook.createCellStyle();
            	styleDate.setDataFormat(workbook.getCreationHelper().createDataFormat().getFormat("yyyy/MM/dd HH:mm:ss"));
            	//创建表头名称
            	HSSFCell cell;
            	for (int j = 0; j < heads.length; j++) {
            		cell = row.createCell(j);
            		cell.setCellValue(heads[j]);
            		cell.setCellStyle(style);
            	}
            	
            	//遍历导出数据
            	for (int i = 0; i < listType.size(); i++) {
            		Map<String, Object> node = listType.get(i);

            		HSSFRow rowc = sheet.createRow(i+1);
            		rowc.createCell(0).setCellValue(node.get("sEquip_ID") == null ? "" : String.valueOf(node.get("sEquip_ID")) );
            		rowc.createCell(1).setCellValue(node.get("sEquip_Name") == null ? "" : String.valueOf(node.get("sEquip_Name")) );
            		rowc.createCell(2).setCellValue(node.get("sEquip_NO") == null ? "" : String.valueOf(node.get("sEquip_NO")) );
            		rowc.createCell(3).setCellValue(node.get("sEquip_StatusName") == null ? "" : String.valueOf(node.get("sEquip_StatusName")) );
            		rowc.createCell(4).setCellValue(node.get("sEquip_NfcNO") == null ? "" : String.valueOf(node.get("sEquip_NfcNO")) );
            		rowc.createCell(5).setCellValue(node.get("sEquip_StoreLv1Name") == null ? "" : String.valueOf(node.get("sEquip_StoreLv1Name")) );
            		rowc.createCell(6).setCellValue(node.get("sEquip_StoreLv2Name") == null ? "" : String.valueOf(node.get("sEquip_StoreLv2Name")) );
            		rowc.createCell(7).setCellValue(node.get("sEquip_StoreLv3Name") == null ? "" : String.valueOf(node.get("sEquip_StoreLv3Name")) );
            		rowc.createCell(8).setCellValue(node.get("sEquip_StoreLv4Name") == null ? "" : String.valueOf(node.get("sEquip_StoreLv4Name")) );
            		rowc.createCell(9).setCellValue(node.get("sEquip_AidName") == null ? "" : String.valueOf(node.get("sEquip_AidName")) );
            		rowc.createCell(10).setCellValue(node.get("sEquip_ManufacturerName") == null ? "" : String.valueOf(node.get("sEquip_ManufacturerName")) );
            		rowc.createCell(11).setCellValue(node.get("sEquip_MModel") == null ? "" : String.valueOf(node.get("sEquip_MModel")) );
            		rowc.createCell(12).setCellValue(node.get("sEquip_MBrand") == null ? "" : String.valueOf(node.get("sEquip_MBrand")) );
            		if(node.get("dEquip_ArrivalDate") != null) {
            			Cell cell13 = rowc.createCell(13);
            			cell13.setCellStyle(styleDate);
            			cell13.setCellValue((Date) node.get("dEquip_ArrivalDate"));
            		}
            		if(node.get("dEquip_CreateDate") != null) {
            			Cell cell14 = rowc.createCell(14);
            			cell14.setCellStyle(styleDate);
            			cell14.setCellValue((Date) node.get("dEquip_CreateDate"));
            		}
            		if(node.get("dEquip_StoreDate") != null) {
            			Cell cell15 = rowc.createCell(15);
            			cell15.setCellStyle(styleDate);
            			cell15.setCellValue((Date) node.get("dEquip_StoreDate"));
            		}
            		if(node.get("dEquip_UseDate") != null) {
            			Cell cell16 = rowc.createCell(16);
            			cell16.setCellStyle(styleDate);
            			cell16.setCellValue((Date) node.get("dEquip_UseDate"));
            		}
            		if(node.get("dEquip_DumpDate") != null) {
            			Cell cell17 = rowc.createCell(17);
            			cell17.setCellStyle(styleDate);
            			cell17.setCellValue((Date) node.get("dEquip_DumpDate"));
            		}
            		rowc.createCell(18).setCellValue(node.get("sEquip_TypeName") == null ? "" : String.valueOf(node.get("sEquip_TypeName")) );
            		//额外属性
            		switch (type) {
					case Constant.EquipType_AIS:
						rowc.createCell(19).setCellValue(node.get("sAis_MMSIXName") == null ? "" : String.valueOf(node.get("sAis_MMSIXName")) );
						break;
					case Constant.EquipType_Battery:
						rowc.createCell(19).setCellValue(node.get("sBattery_NO") == null ? "" : String.valueOf(node.get("sBattery_NO")) );
						rowc.createCell(20).setCellValue(node.get("sBattery_TypeName") == null ? "" : String.valueOf(node.get("sBattery_TypeName")) );
						rowc.createCell(21).setCellValue(node.get("lBattery_Volt") == null ? "" : String.valueOf(node.get("lBattery_Volt")) );
						rowc.createCell(22).setCellValue(node.get("lBattery_Watt") == null ? "" : String.valueOf(node.get("lBattery_Watt")) );
						rowc.createCell(23).setCellValue(node.get("sBattery_Connect") == null ? "" : String.valueOf(node.get("sBattery_Connect")) );
						break;
					case Constant.EquipType_Lamp:
						rowc.createCell(19).setCellValue(node.get("sLamp_NO") == null ? "" : String.valueOf(node.get("sLamp_NO")) );
						rowc.createCell(20).setCellValue(node.get("sLamp_TypeName") == null ? "" : String.valueOf(node.get("sLamp_TypeName")) );
						rowc.createCell(21).setCellValue(node.get("lLamp_InputVolt") == null ? "" : String.valueOf(node.get("lLamp_InputVolt")) );
						rowc.createCell(22).setCellValue(node.get("lLamp_Watt") == null ? "" : String.valueOf(node.get("lLamp_Watt")) );
						rowc.createCell(23).setCellValue(node.get("sLamp_LensName") == null ? "" : String.valueOf(node.get("sLamp_LensName")) );
						rowc.createCell(24).setCellValue(node.get("lLamp_TelemetryFlag") == null ? "" : Tools.parseInt(String.valueOf(node.get("lLamp_TelemetryFlag"))) == 1 ? "是":"否" );
						rowc.createCell(25).setCellValue(node.get("sLamp_TelemetryName") == null ? "" : String.valueOf(node.get("sLamp_TelemetryName")) );
						break;
					case Constant.EquipType_Radar:
						rowc.createCell(19).setCellValue(node.get("sRadar_NOName") == null ? "" : String.valueOf(node.get("sRadar_NOName")) );
						rowc.createCell(20).setCellValue(node.get("sRadar_BandName") == null ? "" : String.valueOf(node.get("sRadar_BandName")) );
						break;
					case Constant.EquipType_SolarEnergy:
						rowc.createCell(19).setCellValue(node.get("sSolar_NO") == null ? "" : String.valueOf(node.get("sSolar_NO")) );
						rowc.createCell(20).setCellValue(node.get("sSolar_TypeName") == null ? "" : String.valueOf(node.get("sSolar_TypeName")) );
						rowc.createCell(21).setCellValue(node.get("lSolar_Volt") == null ? "" : String.valueOf(node.get("lSolar_Volt")) );
						rowc.createCell(22).setCellValue(node.get("lSolar_Watt") == null ? "" : String.valueOf(node.get("lSolar_Watt")) );
						rowc.createCell(23).setCellValue(node.get("sSolar_Connect") == null ? "" : String.valueOf(node.get("sSolar_Connect")) );
						break;
					case Constant.EquipType_SpareLamp:
						rowc.createCell(19).setCellValue(node.get("lSLamp_Watt") == null ? "" : String.valueOf(node.get("lSLamp_Watt")) );
						break;
					case Constant.EquipType_Telemetry:
						rowc.createCell(19).setCellValue(node.get("sTelemetry_ModeName") == null ? "" : String.valueOf(node.get("sTelemetry_ModeName")) );
						rowc.createCell(20).setCellValue(node.get("sTelemetry_NO") == null ? "" : String.valueOf(node.get("sTelemetry_NO")) );
						rowc.createCell(21).setCellValue(node.get("lTelemetry_Volt") == null ? "" : String.valueOf(node.get("lTelemetry_Volt")) );
						rowc.createCell(22).setCellValue(node.get("lTelemetry_Watt") == null ? "" : String.valueOf(node.get("lTelemetry_Watt")) );
						rowc.createCell(23).setCellValue(node.get("sTelemetry_SIM") == null ? "" : String.valueOf(node.get("sTelemetry_SIM")) );
						break;
					case Constant.EquipType_ViceLamp:
						rowc.createCell(19).setCellValue(node.get("lVLamp_Watt") == null ? "" : String.valueOf(node.get("lVLamp_Watt")) );
						break;

					default:
						break;
					}
            	}
			}
            
			workbook.write(toClient);
			workbook.close();
			
			toClient.flush();
			toClient.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	//TODO -------------------------------------------------------------------------------- 前端接口

	
	//TODO -------------------------------------------------------------------------------- app接口


	@RequestMapping("/app/findPage")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app分页查询器材")
	public String appFindPage(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String page = Tools.getReqParamSafe(req, "page");
		String rows = Tools.getReqParamSafe(req, "rows");
		vMap = Tools.verifyParam("page", page, 0, 0, true);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("rows", rows, 0, 0, true);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int start = Tools.parseInt(page) <= 1 ? 0 : (Tools.parseInt(page) - 1) * Tools.parseInt(rows);
		//参数
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Equip.class);
		
		List<Map<String, Object>> list = service.selectPageByUser(condition, getAppLoginUser(req), start, Tools.parseInt(rows));
		long total = service.sizeByUser(condition, getAppLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findOne")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询单个器材")
	public String appFindOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@RequestMapping("/app/detail")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询器材详情")
	public String appDetail(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		Map<String, Object> res = service.detail(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/history")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询器材历史记录")
	public String appHistory(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		List<Map<String, Object>> list = service.history(sEquip_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	

	@RequestMapping("/app/add")
    @ResponseBody	
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Add, describe="app新增器材")
	public String appAdd(HttpServletRequest req) {
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		int res = service.insert(obj, getAppLoginUser(req), Tools.getIp(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}
	
	@RequestMapping("/app/inStore")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材入库")
	public String appInStore(HttpServletRequest req) {
		String remarks = Tools.getReqParamSafe(req, "remarks");
		Equip obj = null;
		try {
			obj = Utils.getReqParamsToObject(req, new Equip());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(obj == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.inStore(obj, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/outStore")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材出库")
	public String appOutStore(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.outStore(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/remove")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材拆除")
	public String appRemove(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.remove(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/transport")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材运输")
	public String appTransport(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.transport(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/toBeTest")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材待检测中")
	public String appToBeTest(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.toBeTest(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/check")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材检测中")
	public String appCheck(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.check(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/repair")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材维修中")
	public String appRepair(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.repair(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/dump")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材已报废")
	public String appDump(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.dump(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/useToAid")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材使用中")
	public String appUseToAid(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.useToAid(sEquip_ID, sAid_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	
	@RequestMapping("/app/unusual")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材异常")
	public String appUnusual(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.unusual(sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	
	@RequestMapping("/app/search")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app搜索器材")
	public String appSearch(HttpServletRequest req) {
		String keywords = Tools.getReqParamSafe(req, "keywords");
		List<Equip> res = service.search(keywords, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/app/nfc")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app nfc查询器材")
	public String appNfc(HttpServletRequest req) {
		String sNfc_NO = Tools.getReqParamSafe(req, "sNfc_NO");
		Equip res = service.nfc(sNfc_NO);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	//TODO -------------------------------------------------------------------------------- 第三方接口
	
	@RequestMapping("/other/unusual")
    @ResponseBody
	@SysLog(type=SystemLogType.Update, describe="第三方设置器材异常")
	public String otherUnusual(HttpServletRequest req) {
		String sEquip_ID = Tools.getReqParamSafe(req, "sEquip_ID");
		String remarks = Tools.getReqParamSafe(req, "remarks");
		String date = Tools.getReqParamSafe(req, "date");
		String sApp_NO = Tools.getReqParamSafe(req, "sApp_NO");
		String sign = Tools.getReqParamSafe(req, "sign");
		Date cDate = Tools.isNullOrEmpty(date) ? null : new Date(Long.parseLong(date));
		int res = service.unusual3(sApp_NO, sign, sEquip_ID, remarks, cDate, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
}
