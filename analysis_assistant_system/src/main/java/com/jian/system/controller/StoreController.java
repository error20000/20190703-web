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
import com.jian.system.entity.AidMapIcon;
import com.jian.system.entity.Dict;
import com.jian.system.entity.Equip;
import com.jian.system.entity.Message;
import com.jian.system.entity.Store;
import com.jian.system.entity.StoreType;
import com.jian.system.entity.User;
import com.jian.system.service.StoreService;
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
			List<Aid> aids = aidService.selectAll();
			List<Dict> statuss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidStatus).build());
			List<Dict> mapIcons = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_MapIcon).build());
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            List<AidMapIcon> list = new ArrayList<>();
            AidMapIcon node = null;
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //过滤表头行
                if (i == 0) {
                    continue;
                }
                //获取当前行的数据
                Row row = sheet.getRow(i);
                node = new AidMapIcon();
                node.setsAidIcon_ID(Utils.newSnowflakeIdStr());
			    
			    String aidName = Utils.getCellValue(row.getCell(0));
			    List<Aid> tempAids = aids.stream()
			    		.filter(e -> e.getsAid_Name().equals(aidName))
			    		.collect(Collectors.toList());
                if(tempAids.size() > 0) {
                	node.setsAidIcon_AidID(tempAids.get(0).getsAid_ID());
                }
                
			    String statusName = Utils.getCellValue(row.getCell(1));
			    List<Dict> tempStatuss = statuss.stream()
			    		.filter(e -> e.getsDict_Name().equals(statusName))
			    		.collect(Collectors.toList());
                if(tempStatuss.size() > 0) {
                	node.setsAidIcon_Status(tempStatuss.get(0).getsDict_NO());
                }
			    
			    String iconName = Utils.getCellValue(row.getCell(2));
			    List<Dict> tempIcons = mapIcons.stream()
			    		.filter(e -> e.getsDict_Name().equals(iconName))
			    		.collect(Collectors.toList());
                if(tempIcons.size() > 0) {
                	node.setsAidIcon_StatusIcon(tempIcons.get(0).getsDict_NO());
                }
                list.add(node);
            }
            //去重
            //1、自身
            list = list.stream()
            		.filter(Utils.distinctByKey(e -> e.getsAidIcon_AidID() + e.getsAidIcon_Status()))
            		.collect(Collectors.toList());
            //2、数据库
            List<AidMapIcon> all = service.selectAll();
            list = list.stream()
            		.filter(t-> !all.stream()
            				.map(e -> e.getsAidIcon_AidID() + e.getsAidIcon_Status())
            				.collect(Collectors.toList())
            				.contains(t.getsAidIcon_AidID() + t.getsAidIcon_Status()))
            		.collect(Collectors.toList());
            //保存
            if(list.size() > 0) {
            	service.batchInsert(list, loginUser);
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
	@SysLog(type=SystemLogType.Export, describe="导出仓库")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "AidMapIcon";
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
			String head = "ID,航标名称,航标状态,状态图标";
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
				rowc.createCell(0).setCellValue(node.get("sAidIcon_ID") == null ? "" : String.valueOf(node.get("sAidIcon_ID")) );
				rowc.createCell(1).setCellValue(node.get("sAidIcon_AidName") == null ? "" : String.valueOf(node.get("sAidIcon_AidName")) );
				rowc.createCell(2).setCellValue(node.get("sAidIcon_StatusName") == null ? "" : String.valueOf(node.get("sAidIcon_StatusName")) );
				rowc.createCell(3).setCellValue(node.get("sAidIcon_StatusIconName") == null ? "" : String.valueOf(node.get("sAidIcon_StatusIconName")) );
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
