package com.jian.system.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
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
import com.jian.system.entity.Dict;
import com.jian.system.entity.Nfc;
import com.jian.system.entity.User;
import com.jian.system.service.AidService;
import com.jian.system.service.DictService;
import com.jian.system.service.NfcService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/aid")
@API(name="航标管理")
public class AidController extends BaseController<Aid, AidService> {

	@Autowired
	private DictService dictService;
	@Autowired
	private NfcService nfcService;
	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增航标")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新航标")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除航标")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询航标")
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Aid.class);
		
		List<Aid> list = service.selectPage(condition, getLoginUser(req), start, Tools.parseInt(rows));
		long total = service.size(condition, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个航标")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有航标")
	public String findAll(HttpServletRequest req) {
		List<Aid> list = service.selectAll(getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/delBind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="航标解除NFC绑定")
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
	@SysLog(type=SystemLogType.Update, describe="航标绑定NFC")
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
	@SysLog(type=SystemLogType.Query, describe="查询未绑定NFC的航标")
	public String unbind(HttpServletRequest req) {
		List<Aid> list = service.unbind();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	

	@RequestMapping("/user")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标分配的用户")
	public String user(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		vMap = Tools.verifyParam("sAid_ID", sAid_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<Map<String, Object>> list = service.user(sAid_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/updateUser")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新航标分配的用户")
	public String updateUser(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		String user = Tools.getReqParamSafe(req, "user");
		vMap = Tools.verifyParam("sAid_ID", sAid_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updateUser(sAid_ID, user);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/equip")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标的器材")
	public String equip(HttpServletRequest req) {
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		List<Map<String, Object>> res = service.equip(sAid_ID, getLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/map")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标（地图）")
	public String map(HttpServletRequest req) {
		List<Map<String, Object>> list = service.aidMap();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/import")
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
	}

	
	@RequestMapping("/excel")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Export, describe="导出航标")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "Aid";
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
			String head = "ID,航标名称,航标编码,归属航标站,航标种类,航标图标,始建时间,撤除时间,灯质明灭,航标设置,NFC标签,创建日期,航标状态,纬度,经度";
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
            //创建批注
        	HSSFPatriarch patr = sheet.createDrawingPatriarch();
        	HSSFClientAnchor anchor = patr.createAnchor(0, 0, 0, 0, 5, 1, 8, 3);//创建批注位置
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
				rowc.createCell(0).setCellValue(node.get("sAid_ID") == null ? "" : String.valueOf(node.get("sAid_ID")) );
				rowc.createCell(1).setCellValue(node.get("sAid_Name") == null ? "" : String.valueOf(node.get("sAid_Name")) );
				rowc.createCell(2).setCellValue(node.get("sAid_NO") == null ? "" : String.valueOf(node.get("sAid_NO")) );
				rowc.createCell(3).setCellValue(node.get("sAid_StationName") == null ? "" : String.valueOf(node.get("sAid_StationName")) );
				rowc.createCell(4).setCellValue(node.get("sAid_TypeName") == null ? "" : String.valueOf(node.get("sAid_TypeName")) );
				rowc.createCell(5).setCellValue(node.get("sAid_IconName") == null ? "" : String.valueOf(node.get("sAid_IconName")) );
				if(node.get("dAid_BuildDate") != null) {
					Cell cell6 = rowc.createCell(6);
					cell6.setCellStyle(styleDate);
					cell6.setCellValue((Date) node.get("dAid_BuildDate"));
				}
				if(node.get("dAid_DelDate") != null) {
					Cell cell7 = rowc.createCell(7);
					cell7.setCellStyle(styleDate);
					cell7.setCellValue((Date) node.get("dAid_DelDate"));
				}
				rowc.createCell(8).setCellValue(node.get("sAid_LightingName") == null ? "" : String.valueOf(node.get("sAid_LightingName")) );
				rowc.createCell(9).setCellValue(node.get("sAid_MarkName") == null ? "" : String.valueOf(node.get("sAid_MarkName")) );
				rowc.createCell(10).setCellValue(node.get("sAid_NfcNO") == null ? "" : String.valueOf(node.get("sAid_NfcNO")) );

				if(node.get("dAid_CreateDate") != null) {
					Cell cell11 = rowc.createCell(11);
					cell11.setCellStyle(styleDate);
					cell11.setCellValue((Date) node.get("dAid_CreateDate"));
				}
				rowc.createCell(12).setCellValue(node.get("sAid_StatusName") == null ? "" : String.valueOf(node.get("sAid_StatusName")) );
				String latStr = "";
				latStr += node.get("lAid_LatDu") == null ? "0" : String.valueOf(node.get("lAid_LatDu"));
				latStr += "°";
				latStr += node.get("lAid_LatFen") == null ? "0" : String.valueOf(node.get("lAid_LatFen"));
				latStr += "′";
				latStr += node.get("lAid_LatMiao") == null ? "0" : String.valueOf(node.get("lAid_LatMiao"));
				latStr += "″ N";
				rowc.createCell(13).setCellValue(latStr);
				String lngStr = "";
				lngStr += node.get("lAid_LngDu") == null ? "0" : String.valueOf(node.get("lAid_LngDu"));
				lngStr += "°";
				lngStr += node.get("lAid_LngFen") == null ? "0" : String.valueOf(node.get("lAid_LngFen"));
				lngStr += "′";
				lngStr += node.get("lAid_LngMiao") == null ? "0" : String.valueOf(node.get("lAid_LngMiao"));
				lngStr += "″ E";
				rowc.createCell(14).setCellValue(lngStr);
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

	
	//TODO -------------------------------------------------------------------------------- 统计接口

	
	@RequestMapping("/statis")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询航标统计")
	public String statis(HttpServletRequest req) {
		String sAid_Station = Tools.getReqParamSafe(req, "sAid_Station");
		List<Map<String, Object>> res = service.statis(sAid_Station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	
	//TODO -------------------------------------------------------------------------------- 前端接口


	
	//TODO -------------------------------------------------------------------------------- app接口

	@RequestMapping("/app/findAll")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询所有航标(只有id，名称，编码)")
	public String appFindAll(HttpServletRequest req) {
		
		List<Map<String, Object>> list = service.aidAll();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findPage")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app分页查询航标")
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, Aid.class);
		
		List<Aid> list = service.selectPage(condition, getAppLoginUser(req), start, Tools.parseInt(rows));
		long total = service.size(condition, getAppLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/app/findOne")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询单个航标")
	public String appFindOne(HttpServletRequest req) {
		System.out.println("=======================appFindOne=======================");
		System.out.println(super.findOne(req));
		return super.findOne(req);
	}
	
	
	@RequestMapping("/app/search")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app搜索航标")
	public String appSearch(HttpServletRequest req) {
		String keywords = Tools.getReqParamSafe(req, "keywords");
		List<Aid> res = service.search(keywords, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	
	@RequestMapping("/app/equip")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询航标的器材")
	public String appEquip(HttpServletRequest req) {
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		List<Map<String, Object>> res = service.equip(sAid_ID, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	
	@RequestMapping("/app/unusual")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app器材异常")
	public String appUnusual(HttpServletRequest req) {
		String sAid_ID = Tools.getReqParamSafe(req, "sAid_ID");
		int res = service.unusual(sAid_ID, getAppLoginUser(req), Tools.getIp(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}


	@RequestMapping("/app/map")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询所有航标(地图)")
	public String appMap(HttpServletRequest req) {
		
		List<Map<String, Object>> list = service.aidMap();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
}
