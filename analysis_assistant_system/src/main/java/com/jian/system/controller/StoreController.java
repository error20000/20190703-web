package com.jian.system.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
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
import com.jian.system.entity.Dict;
import com.jian.system.entity.Equip;
import com.jian.system.entity.Message;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreType;
import com.jian.system.entity.User;
import com.jian.system.service.DictService;
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
@RequestMapping("/api/store")
@API(name="仓库管理")
public class StoreController extends BaseController<Store, StoreService> {

	@Autowired
	private StoreTypeService typeService;
	@Autowired
	private DictService dictService;

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增仓库")
	public String add(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String level = Tools.getReqParamSafe(req, "level");
		String name = Tools.getReqParamSafe(req, "name");
		vMap = Tools.verifyParam("level", level, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("name", name, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		StoreType type = Tools.getReqParamsToObject(req, new StoreType());
		Store obj = Tools.getReqParamsToObject(req, new Store());
		int res = service.add(level, name, type, obj, getLoginUser(req));
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
	@SysLog(type=SystemLogType.Update, describe="更新仓库")
	public String update(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String level = Tools.getReqParamSafe(req, "level");
		String name = Tools.getReqParamSafe(req, "name");
		vMap = Tools.verifyParam("level", level, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("name", name, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		StoreType type = Tools.getReqParamsToObject(req, new StoreType());
		Store obj = Tools.getReqParamsToObject(req, new Store());
		int res = service.modify(level, name, type, obj, getLoginUser(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除仓库")
	public String delete(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String level = Tools.getReqParamSafe(req, "level");
		String id = Tools.getReqParamSafe(req, "id");
		vMap = Tools.verifyParam("level", level, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		vMap = Tools.verifyParam("id", id, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.delete(level, id, getLoginUser(req));
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}
	}


	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单条仓库")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有仓库")
	public String findAll(HttpServletRequest req) {
		String sStore_Level1 = Tools.getReqParamSafe(req, "sStore_Level1");
		String sStore_Level2 = Tools.getReqParamSafe(req, "sStore_Level2");
		String sStore_Level3 = Tools.getReqParamSafe(req, "sStore_Level3");
		String sStore_Level4 = Tools.getReqParamSafe(req, "sStore_Level4");
		List<Map<String, Object>> list = service.storeTree(sStore_Level1, sStore_Level2, sStore_Level3, sStore_Level4);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@RequestMapping("/findList")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询仓库列表")
	public String findList(HttpServletRequest req) {
		String parent = Tools.getReqParamSafe(req, "parent");
		List<Map<String, Object>> list = service.storeList(parent);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/findType")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询一级仓库")
	public String findType(HttpServletRequest req) {
		List<StoreType> list = service.findType();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	

	@RequestMapping("/map")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询一级仓库(地图)")
	public String map(HttpServletRequest req) {
		List<Map<String, Object>> list = service.storeMap();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/equip")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询仓库器材")
	public String equip(HttpServletRequest req) {
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
		
		List<Map<String, Object>> list = service.equipPage(condition, start, Tools.parseInt(rows));
		long total = service.equipSize(condition);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/msg")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询仓库信息")
	public String msg(HttpServletRequest req) {
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Message.class);
		
		List<Message> list = service.msgPage(condition, getLoginUser(req), start, Tools.parseInt(rows));
		long total = service.msgSize(condition, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入仓库")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			List<Dict> stations = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidStation).build());
			List<Dict> mapIcons = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_StoreMapIcon).build());
			List<Store> alls = service.selectAll();
			List<StoreType> allt = typeService.selectAll();
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
			Sheet sheet = workbook.getSheetAt(0);
			//获取sheet的行数
			List<StoreType> list = new ArrayList<>();
			StoreType node = null;
			List<Store> slist = new ArrayList<>();
			int rows = sheet.getPhysicalNumberOfRows();
			for (int i = 0; i < rows; i++) {
			    //过滤表头行
			    if (i == 0) {
			        continue;
			    }
			    //获取当前行的数据
			    Row row = sheet.getRow(i);
			    node = new StoreType();
			    
			    String typeName = Utils.getCellValue(row.getCell(0));
			    List<StoreType> tempTypes = allt.stream()
			    		.filter(e -> e.getsStoreType_Name().equals(typeName))
			    		.collect(Collectors.toList());
			    //判断一级仓库是否存在
			    if(tempTypes.size() > 0) {
			    	node.setsStoreType_ID(tempTypes.get(0).getsStoreType_ID());
			    }else {
				    node.setsStoreType_ID(Utils.newSnowflakeIdStr());
				    node.setsStoreType_Name(Utils.getCellValue(row.getCell(0)) );
				    node.setsStoreType_Address(Utils.getCellValue(row.getCell(1)) );
				    
				    String stationName = Utils.getCellValue(row.getCell(2));
				    List<Dict> tempStations = stations.stream()
				    		.filter(e -> e.getsDict_Name().equals(stationName))
				    		.collect(Collectors.toList());
	                if(tempStations.size() > 0) {
	                	node.setsStoreType_Station(tempStations.get(0).getsDict_NO());
	                }
	                
				    node.setlStoreType_Limit(Tools.parseInt(Utils.getCellValue(row.getCell(3))) );
				    
				    String mapIconName = Utils.getCellValue(row.getCell(4));
				    List<Dict> tempMapIcons = mapIcons.stream()
				    		.filter(e -> e.getsDict_Name().equals(mapIconName))
				    		.collect(Collectors.toList());
	                if(tempMapIcons.size() > 0) {
	                	node.setsStoreType_MapIcon(tempMapIcons.get(0).getsDict_NO());
	                }
	                
				    String latStr = Utils.getCellValue(row.getCell(5));
				    latStr = latStr.replace( "°", "°").replace("'", "′").replace("\"", "″"); //字符转换
				    latStr = latStr.replace("°", "#").replace("′", "#").replace("″", "#"); //字符转换
				    String[] latStrs = latStr.split("#");
				    String latDu = latStrs.length < 1 ? "0" : latStrs[0];
				    String latFen = latStrs.length < 2 ? "0" : latStrs[1];
				    String latMiao = latStrs.length < 3 ? "0" : latStrs[2];
				    node.setlStoreType_LatDu(Tools.parseInt(latDu));
				    node.setlStoreType_LatFen(Tools.parseInt(latFen));
				    node.setlStoreType_LatMiao(Tools.parseFloat(latMiao));
				    node.setlStoreType_Lat(Tools.parseFloat(latDu) + Tools.parseFloat(latFen)/60 + Tools.parseFloat(latMiao)/3600);
	                
				    String lngStr = Utils.getCellValue(row.getCell(6));
				    lngStr = lngStr.replace( "°", "°").replace("'", "′").replace("\"", "″"); //字符转换
				    lngStr = lngStr.replace("°", "#").replace("′", "#").replace("″", "#"); //字符转换
				    String[] lngStrs = lngStr.split("#");
				    String lngDu = lngStrs.length < 1 ? "0" : lngStrs[0];
				    String lngFen = lngStrs.length < 2 ? "0" : lngStrs[1];
				    String lngMiao = lngStrs.length < 3 ? "0" : lngStrs[2];
				    node.setlStoreType_LngDu(Tools.parseInt(lngDu));
				    node.setlStoreType_LngFen(Tools.parseInt(lngFen));
				    node.setlStoreType_LngMiao(Tools.parseFloat(lngMiao));
				    node.setlStoreType_Lng(Tools.parseFloat(lngDu) + Tools.parseFloat(lngFen)/60 + Tools.parseFloat(lngMiao)/3600);
				    list.add(node);
			    }
			    String typeId = node.getsStoreType_ID();

			    //添加二级仓库
				Store snode2 = new Store();
				snode2.setsStore_ID(Utils.newSnowflakeIdStr());
				String name2 = Utils.getCellValue(row.getCell(7));
				if(Tools.isNullOrEmpty(name2)) {
					continue;
				}
				snode2.setsStore_Name(name2);
				snode2.setsStore_Parent(typeId);
				snode2.setsStore_Level1(typeId);
				snode2.setlStore_Limit(Tools.parseInt(Utils.getCellValue(row.getCell(8))) );
				//去重
				List<Store> tempStore2 = slist.stream()
						.filter(e -> e.getsStore_Name().equals(name2) && e.getsStore_Parent().equals(typeId))
						.collect(Collectors.toList());
				List<Store> tempStore22 = alls.stream()
						.filter(e -> e.getsStore_Name().equals(name2) && e.getsStore_Parent().equals(typeId))
						.collect(Collectors.toList());
				if(tempStore2.size() == 0 && tempStore22.size() == 0) {
					slist.add(snode2);
				}else if(tempStore22.size() != 0) { //数据库
					snode2.setsStore_ID(tempStore22.get(0).getsStore_ID()); //重置回原ID
				}else if(tempStore2.size() != 0) {
					snode2.setsStore_ID(tempStore2.get(0).getsStore_ID()); //重置回原ID
				}
			    //添加三级仓库
				Store snode3 = new Store();
				snode3.setsStore_ID(Utils.newSnowflakeIdStr());
				String name3 = Utils.getCellValue(row.getCell(9));
				if(Tools.isNullOrEmpty(name3)) {
					continue;
				}
				snode3.setsStore_Name(name3);
				snode3.setsStore_Parent(snode2.getsStore_ID());
				snode3.setsStore_Level1(typeId);
				snode3.setsStore_Level2(snode2.getsStore_ID());
				snode3.setlStore_Limit(Tools.parseInt(Utils.getCellValue(row.getCell(10))) );
				//去重
				List<Store> tempStore3 = slist.stream()
						.filter(e -> e.getsStore_Name().equals(name3) && e.getsStore_Parent().equals(snode2.getsStore_ID()))
						.collect(Collectors.toList());
				List<Store> tempStore33 = alls.stream()
						.filter(e -> e.getsStore_Name().equals(name3) && e.getsStore_Parent().equals(snode2.getsStore_ID()))
						.collect(Collectors.toList());
				if(tempStore3.size() == 0 && tempStore33.size() == 0) {
					slist.add(snode3);
				}else if(tempStore33.size() != 0) { //数据库
					snode3.setsStore_ID(tempStore33.get(0).getsStore_ID()); //重置回原ID
				}else if(tempStore3.size() != 0) {
					snode3.setsStore_ID(tempStore3.get(0).getsStore_ID()); //重置回原ID
				}
			    //添加四级仓库
				Store snode4 = new Store();
				snode4.setsStore_ID(Utils.newSnowflakeIdStr());
				String name4 = Utils.getCellValue(row.getCell(11));
				if(Tools.isNullOrEmpty(name4)) {
					continue;
				}
				snode4.setsStore_Name(name4);
				snode4.setsStore_Parent(snode3.getsStore_ID());
				snode4.setsStore_Level1(typeId);
				snode4.setsStore_Level2(snode2.getsStore_ID());
				snode4.setsStore_Level3(snode3.getsStore_ID());
				snode4.setlStore_Limit(Tools.parseInt(Utils.getCellValue(row.getCell(12))) );
				//去重
			    List<Store> tempStore4 = slist.stream()
			    		.filter(e -> e.getsStore_Name().equals(name4) && e.getsStore_Parent().equals(snode3.getsStore_ID()))
			    		.collect(Collectors.toList());
			    List<Store> tempStore44 = alls.stream()
			    		.filter(e -> e.getsStore_Name().equals(name4) && e.getsStore_Parent().equals(snode3.getsStore_ID()))
			    		.collect(Collectors.toList());
			    if(tempStore4.size() == 0 && tempStore44.size() == 0) {
			    	slist.add(snode4);
			    }else if(tempStore44.size() != 0) { //数据库
			    	snode4.setsStore_ID(tempStore44.get(0).getsStore_ID()); //重置回原ID
			    }else if(tempStore4.size() != 0) {
			    	snode4.setsStore_ID(tempStore4.get(0).getsStore_ID()); //重置回原ID
			    }
			    
			}
			//保存
			service.imports(list, slist, loginUser);
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
	@SysLog(type=SystemLogType.Export, describe="导出仓库")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "Store";
		//查询
		List<Map<String, Object>> list = service.export(null, getLoginUser(req));

		//执行
		resp.addHeader("Content-Disposition","attachment;filename="+filename+".xls");
		// response.addHeader("Content-Length", "" + JSONArray.fromObject(list).toString().getBytes().length);
		resp.setContentType("application/vnd.ms-excel;charset=utf-8");
		try {
			OutputStream toClient = new BufferedOutputStream(resp.getOutputStream());
			//实例化HSSFWorkbook
            HSSFWorkbook workbook = new HSSFWorkbook();
            //创建一个Excel表单，参数为sheet的名字
            HSSFSheet sheet = workbook.createSheet("sheet");		

			//设置表头
			String head = "ID,仓库名称,仓库地址,归属航标站,库存预警值,地图图标,纬度,经度,二级仓库,二级仓库预警值,三级仓库,三级仓库预警值,四级仓库,四级仓库预警值";
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
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> node = list.get(i);
				
				HSSFRow rowc = sheet.createRow(i+1);
				rowc.createCell(0).setCellValue(node.get("sStoreType_ID") == null ? "" : String.valueOf(node.get("sStoreType_ID")) );
				rowc.createCell(1).setCellValue(node.get("sStoreType_Name") == null ? "" : String.valueOf(node.get("sStoreType_Name")) );
				rowc.createCell(2).setCellValue(node.get("sStoreType_Address") == null ? "" : String.valueOf(node.get("sStoreType_Address")) );
				rowc.createCell(3).setCellValue(node.get("sStoreType_StationName") == null ? "" : String.valueOf(node.get("sStoreType_StationName")) );
				rowc.createCell(4).setCellValue(node.get("lStoreType_Limit") == null ? 0 : Integer.parseInt(String.valueOf(node.get("lStoreType_Limit"))) );
				rowc.createCell(5).setCellValue(node.get("sStoreType_MapIconName") == null ? "" : String.valueOf(node.get("sStoreType_MapIconName")) );
				
				String latStr = "";
				latStr += node.get("lStoreType_LatDu") == null ? "0" : String.valueOf(node.get("lStoreType_LatDu"));
				latStr += "°";
				latStr += node.get("lStoreType_LatFen") == null ? "0" : String.valueOf(node.get("lStoreType_LatFen"));
				latStr += "′";
				latStr += node.get("lStoreType_LatMiao") == null ? "0" : String.valueOf(node.get("lStoreType_LatMiao"));
				latStr += "″ N";
				rowc.createCell(6).setCellValue(latStr);
				
				String lngStr = "";
				lngStr += node.get("lStoreType_LngDu") == null ? "0" : String.valueOf(node.get("lStoreType_LngDu"));
				lngStr += "°";
				lngStr += node.get("lStoreType_LngFen") == null ? "0" : String.valueOf(node.get("lStoreType_LngFen"));
				lngStr += "′";
				lngStr += node.get("lStoreType_LngMiao") == null ? "0" : String.valueOf(node.get("lStoreType_LngMiao"));
				lngStr += "″ E";
				rowc.createCell(7).setCellValue(lngStr);
				
				rowc.createCell(8).setCellValue(node.get("sStoreType_Lv2") == null ? "" : String.valueOf(node.get("sStoreType_Lv2")) );
				rowc.createCell(9).setCellValue(node.get("sStoreType_Limit2") == null ? 0 : Integer.parseInt(String.valueOf(node.get("sStoreType_Limit2"))) );
				rowc.createCell(10).setCellValue(node.get("sStoreType_Lv3") == null ? "" : String.valueOf(node.get("sStoreType_Lv3")) );
				rowc.createCell(11).setCellValue(node.get("sStoreType_Limit3") == null ? 0 : Integer.parseInt(String.valueOf(node.get("sStoreType_Limit3"))) );
				rowc.createCell(12).setCellValue(node.get("sStoreType_Lv4") == null ? "" : String.valueOf(node.get("sStoreType_Lv4")) );
				rowc.createCell(13).setCellValue(node.get("sStoreType_Limit4") == null ? 0 : Integer.parseInt(String.valueOf(node.get("sStoreType_Limit4"))) );
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


	@RequestMapping("/distribution")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询仓库区域分布")
	public String distribution(HttpServletRequest req) {
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		List<Map<String, Object>> list = service.distribution(sEquip_Type);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/time")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询仓库库存变化")
	public String time(HttpServletRequest req) {
		String sEquip_Type = Tools.getReqParamSafe(req, "sEquip_Type");
		String sStore_Level1 = Tools.getReqParamSafe(req, "sStore_Level1");
		String sStore_Level2 = Tools.getReqParamSafe(req, "sStore_Level2");
		String sStore_Level3 = Tools.getReqParamSafe(req, "sStore_Level3");
		String sStore_Level4 = Tools.getReqParamSafe(req, "sStore_Level4");
		List<Map<String, Object>> list = service.time(sEquip_Type, sStore_Level1, sStore_Level2, sStore_Level3, sStore_Level4);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	//TODO -------------------------------------------------------------------------------- app接口
	
	
	@RequestMapping("/app/findList")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询仓库列表")
	public String appFindList(HttpServletRequest req) {
		String parent = Tools.getReqParamSafe(req, "parent");
		List<Map<String, Object>> list = service.storeListApp(parent);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findType")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询一级仓库")
	public String appFindType(HttpServletRequest req) {
		List<StoreType> list = service.findType();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/app/map")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询一级仓库(地图)")
	public String appMap(HttpServletRequest req) {
		List<Map<String, Object>> list = service.storeMap();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/app/equip")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询仓库器材")
	public String appEquip(HttpServletRequest req) {
		String sEquip_StoreLv1 = Tools.getReqParamSafe(req, "sEquip_StoreLv1");
		String sEquip_StoreLv2 = Tools.getReqParamSafe(req, "sEquip_StoreLv2");
		String sEquip_StoreLv3 = Tools.getReqParamSafe(req, "sEquip_StoreLv3");
		String sEquip_StoreLv4 = Tools.getReqParamSafe(req, "sEquip_StoreLv4");
		List<Equip> list = service.appEquip(sEquip_StoreLv1, sEquip_StoreLv2, sEquip_StoreLv3, sEquip_StoreLv4);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
}
