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
import com.jian.system.entity.Dict;
import com.jian.system.entity.Equip;
import com.jian.system.entity.EquipLog;
import com.jian.system.entity.Nfc;
import com.jian.system.entity.User;
import com.jian.system.service.EquipService;
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
		return super.findPage(req);
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
		List<EquipLog> list = service.history(sEquip_ID);
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
	
	/*@RequestMapping("/import")
	@ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入航标")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			List<Nfc> nfcs = nfcService.selectList(MapTools.custom().put("lNfc_StatusFlag", 0).build());
			List<Dict> types = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidType).build());
			List<Dict> stations = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidStation).build());
			List<Dict> lightings = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidLighting).build());
			List<Dict> marks = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidMark).build());
			List<Dict> statuss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidStatus).build());
			List<Dict> icons = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidIcon).build());
			
			List<Nfc> usedNfcs = new ArrayList<>();
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
			Sheet sheet = workbook.getSheetAt(0);
			//获取sheet的行数
			List<Aid> list = new ArrayList<>();
			Aid node = null;
			int rows = sheet.getPhysicalNumberOfRows();
			for (int i = 0; i < rows; i++) {
			    //过滤表头行
			    if (i == 0) {
			        continue;
			    }
			    //获取当前行的数据
			    Row row = sheet.getRow(i);
			    node = new Aid();
			    node.setsAid_ID(Utils.newSnowflakeIdStr());
			    node.setsAid_Name(Utils.getCellValue(row.getCell(0)));
			    node.setsAid_NO(Utils.getCellValue(row.getCell(1)));
			    
			    String stationName = Utils.getCellValue(row.getCell(2));
			    List<Dict> tempStations = stations.stream()
			    		.filter(e -> e.getsDict_Name().equals(stationName))
			    		.collect(Collectors.toList());
	            if(tempStations.size() > 0) {
	            	node.setsAid_Station(tempStations.get(0).getsDict_NO());
	            }
			    
			    String typeName = Utils.getCellValue(row.getCell(3));
			    List<Dict> tempTypes = types.stream()
			    		.filter(e -> e.getsDict_Name().equals(typeName))
			    		.collect(Collectors.toList());
	            if(tempTypes.size() > 0) {
	            	node.setsAid_Type(tempTypes.get(0).getsDict_NO());
	            }
			    
			    String iconName = Utils.getCellValue(row.getCell(4));
			    List<Dict> tempIcons = icons.stream()
			    		.filter(e -> e.getsDict_Name().equals(iconName))
			    		.collect(Collectors.toList());
	            if(tempIcons.size() > 0) {
	            	node.setsAid_Icon(tempIcons.get(0).getsDict_NO());
	            }
			    node.setdAid_BuildDate(Utils.getCellValueDate(row.getCell(5)));
			    node.setdAid_DelDate(Utils.getCellValueDate(row.getCell(6)));
			    
			    String lightingName = Utils.getCellValue(row.getCell(7));
			    List<Dict> tempLightings = lightings.stream()
			    		.filter(e -> e.getsDict_Name().equals(lightingName))
			    		.collect(Collectors.toList());
	            if(tempLightings.size() > 0) {
	            	node.setsAid_Lighting(tempLightings.get(0).getsDict_NO());
	            }
			    
			    String markName = Utils.getCellValue(row.getCell(8));
			    List<Dict> tempMarks = marks.stream()
			    		.filter(e -> e.getsDict_Name().equals(markName))
			    		.collect(Collectors.toList());
	            if(tempMarks.size() > 0) {
	            	node.setsAid_Mark(tempMarks.get(0).getsDict_NO());
	            }
			    
			    String nfcNO = Utils.getCellValue(row.getCell(9));
			    List<Nfc> tempNfcs = nfcs.stream()
			    		.filter(e -> e.getsNfc_NO().equals(nfcNO))
			    		.collect(Collectors.toList());
	            if(tempNfcs.size() > 0) {
	            	Nfc temp = tempNfcs.get(0);
	            	node.setsAid_NfcID(temp.getsNfc_ID());
	            	//标记nfc已使用
	            	temp.setlNfc_StatusFlag(1);
	            	usedNfcs.add(temp);
	            }
	
			    String statusName = Utils.getCellValue(row.getCell(10));
			    List<Dict> tempStatuss = statuss.stream()
			    		.filter(e -> e.getsDict_Name().equals(statusName))
			    		.collect(Collectors.toList());
	            if(tempStatuss.size() > 0) {
	            	node.setsAid_Status(tempStatuss.get(0).getsDict_NO());
	            }
	            
			    String latStr = Utils.getCellValue(row.getCell(11));
			    latStr = latStr.replace( "°", "°").replace("'", "′").replace("\"", "″"); //字符转换
			    latStr = latStr.replace("°", "#").replace("′", "#").replace("″", "#"); //字符转换
			    String[] latStrs = latStr.split("#");
			    String latDu = latStrs.length < 1 ? "0" : latStrs[0];
			    String latFen = latStrs.length < 2 ? "0" : latStrs[1];
			    String latMiao = latStrs.length < 3 ? "0" : latStrs[2];
			    node.setlAid_LatDu(Tools.parseInt(latDu));
			    node.setlAid_LatFen(Tools.parseInt(latFen));
			    node.setlAid_LatMiao(Tools.parseFloat(latMiao));
			    node.setlAid_Lat(Tools.parseFloat(latDu) + Tools.parseFloat(latFen)/60 + Tools.parseFloat(latMiao)/3600);
	            
			    String lngStr = Utils.getCellValue(row.getCell(12));
			    lngStr = lngStr.replace( "°", "°").replace("'", "′").replace("\"", "″"); //字符转换
			    lngStr = lngStr.replace("°", "#").replace("′", "#").replace("″", "#"); //字符转换
			    String[] lngStrs = lngStr.split("#");
			    String lngDu = lngStrs.length < 1 ? "0" : lngStrs[0];
			    String lngFen = lngStrs.length < 2 ? "0" : lngStrs[1];
			    String lngMiao = lngStrs.length < 3 ? "0" : lngStrs[2];
			    node.setlAid_LngDu(Tools.parseInt(lngDu));
			    node.setlAid_LngFen(Tools.parseInt(lngFen));
			    node.setlAid_LngMiao(Tools.parseFloat(lngMiao));
			    node.setlAid_Lng(Tools.parseFloat(lngDu) + Tools.parseFloat(lngFen)/60 + Tools.parseFloat(lngMiao)/3600);
			    
			    node.setdAid_CreateDate(new Date());
	
			    list.add(node);
			}
			//去重
			//1、自身
			list = list.stream()
					.filter(Utils.distinctByKey(e -> e.getsAid_NO() + e.getsAid_Station()))
					.collect(Collectors.toList());
			//2、数据库
			List<Aid> all = service.selectAll();
			list = list.stream()
					.filter(t-> !all.stream()
							.map(e -> e.getsAid_NO() + e.getsAid_Station())
							.collect(Collectors.toList())
							.contains(t.getsAid_NO() + t.getsAid_Station()))
					.collect(Collectors.toList());
			//保存
			if(list.size() > 0) {
				service.imports(list, usedNfcs, loginUser);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.MSG, e.getMessage()).toJSONString();
		}
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}*/

	
	@RequestMapping("/excel")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	//@SysLog(type=SystemLogType.Export, describe="导出器材")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "Equip";
		//查询
		List<Map<String, Object>> list = service.export(null, getLoginUser(req));
		Map<String, String> types = new HashMap<>();
		for (Map<String, Object> map : list) {
			String typeKey = (String) map.get("sEquip_Type");
			String typeName = (String) map.get("sEquip_TypeName");
			String typeVal = types.get(typeKey);
			if(Tools.isNullOrEmpty(typeVal)) {
				types.put(typeKey, Tools.isNullOrEmpty(typeName) ? typeKey : typeName);
			}
		}

		String comHead = "ID,器材名称,器材编码,器材状态,NFC标签,一级仓库,二级仓库,三级仓库,四级仓库,航标,生产厂家,厂方型号,品牌,到货日期,创建日期,入库日期,使用日期,报废日期,器材类型";
		Map<String, String> headMap = new HashMap<>();
		headMap.put(Constant.EquipType_AIS, comHead + ",MMSIX号");
		headMap.put(Constant.EquipType_Battery, comHead + ",蓄电池编码,蓄电池种类,工作电压（V）,容量（W）,连接方式");
		headMap.put(Constant.EquipType_Lamp, comHead + "");
		headMap.put(Constant.EquipType_Radar, comHead + "");
		headMap.put(Constant.EquipType_SolarEnergy, comHead + "");
		headMap.put(Constant.EquipType_SpareLamp, comHead + "");
		headMap.put(Constant.EquipType_Telemetry, comHead + "");
		headMap.put(Constant.EquipType_ViceLamp, comHead + "");

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
            			.filter(e -> e.get("sEquip_Type") != null && type.equals(e.get("sEquip_Type")))
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
		return super.findPage(req);
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
		List<EquipLog> list = service.history(sEquip_ID);
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
		int res = service.inStore(obj, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.outStore(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.remove(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.transport(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.toBeTest(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.check(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.repair(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.dump(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.useToAid(sEquip_ID, sAid_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
		int res = service.unusual(sEquip_ID, remarks, getAppLoginUser(req), Tools.getIp(req));
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
}
