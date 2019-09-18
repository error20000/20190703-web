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
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.config.Constant;
import com.jian.system.entity.AidTypeMapIcon;
import com.jian.system.entity.Dict;
import com.jian.system.entity.User;
import com.jian.system.service.AidTypeMapIconService;
import com.jian.system.service.DictService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;


@Controller
@RequestMapping("/api/aidTypeMapIcon")
@API(name="航标种类地图图标管理")
public class AidTypeMapIconController extends BaseController<AidTypeMapIcon, AidTypeMapIconService> {


	@Autowired
	private DictService dictService;

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
		return super.findPage(req);
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
		return super.findAll(req);
	}
	
	@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入航标分类地图图标")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			List<Dict> types = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidType).build());
			List<Dict> statuss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidStatus).build());
			List<Dict> mapIcons = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_MapIcon).build());
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            List<AidTypeMapIcon> list = new ArrayList<>();
            AidTypeMapIcon node = null;
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //过滤表头行
                if (i == 0) {
                    continue;
                }
                //获取当前行的数据
                Row row = sheet.getRow(i);
                node = new AidTypeMapIcon();
                node.setsAidTypeIcon_ID(Utils.newSnowflakeIdStr());
			    
			    String typeName = Utils.getCellValue(row.getCell(0));
			    List<Dict> tempTypes = types.stream()
			    		.filter(e -> e.getsDict_Name().equals(typeName))
			    		.collect(Collectors.toList());
                if(tempTypes.size() > 0) {
                	node.setsAidTypeIcon_Type(tempTypes.get(0).getsDict_NO());
                }
                
			    String statusName = Utils.getCellValue(row.getCell(1));
			    List<Dict> tempStatuss = statuss.stream()
			    		.filter(e -> e.getsDict_Name().equals(statusName))
			    		.collect(Collectors.toList());
                if(tempStatuss.size() > 0) {
                	node.setsAidTypeIcon_Status(tempStatuss.get(0).getsDict_NO());
                }
			    
			    String iconName = Utils.getCellValue(row.getCell(2));
			    List<Dict> tempIcons = mapIcons.stream()
			    		.filter(e -> e.getsDict_Name().equals(iconName))
			    		.collect(Collectors.toList());
                if(tempIcons.size() > 0) {
                	node.setsAidTypeIcon_StatusIcon(tempIcons.get(0).getsDict_NO());
                }
                list.add(node);
            }
            //去重
            //1、自身
            list = list.stream()
            		.filter(Utils.distinctByKey(e -> e.getsAidTypeIcon_Type() + e.getsAidTypeIcon_Status()))
            		.collect(Collectors.toList());
            //2、数据库
            List<AidTypeMapIcon> all = service.selectAll();
            list = list.stream()
            		.filter(t-> !all.stream()
            				.map(e -> e.getsAidTypeIcon_Type() + e.getsAidTypeIcon_Status())
            				.collect(Collectors.toList())
            				.contains(t.getsAidTypeIcon_Type() + t.getsAidTypeIcon_Status()))
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
	@SysLog(type=SystemLogType.Export, describe="导出航标分类地图图标")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "AidTypeMapIcon";
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
			String head = "ID,航标分类,分类状态,状态图标";
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
				rowc.createCell(0).setCellValue(node.get("sAidTypeIcon_ID") == null ? "" : String.valueOf(node.get("sAidTypeIcon_ID")) );
				rowc.createCell(1).setCellValue(node.get("sAidTypeIcon_TypeName") == null ? "" : String.valueOf(node.get("sAidTypeIcon_TypeName")) );
				rowc.createCell(2).setCellValue(node.get("sAidTypeIcon_StatusName") == null ? "" : String.valueOf(node.get("sAidTypeIcon_StatusName")) );
				rowc.createCell(3).setCellValue(node.get("sAidTypeIcon_StatusIconName") == null ? "" : String.valueOf(node.get("sAidTypeIcon_StatusIconName")) );
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

	
}
