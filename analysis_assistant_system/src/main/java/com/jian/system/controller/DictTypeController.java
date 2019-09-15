package com.jian.system.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPalette;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.entity.DictType;
import com.jian.system.entity.User;
import com.jian.system.service.DictTypeService;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/dictType")
@API(name="字典分类管理")
public class DictTypeController extends BaseController<DictType, DictTypeService> {


	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@PostMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增字典分类")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@PostMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新字典分类")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@PostMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除字典分类")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@PostMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询字典分类")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@PostMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个字典分类")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@PostMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有字典分类")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}
	
	@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //获取当前行的数据
                Row row = sheet.getRow(i);
                String str = "";
                for (Cell cell : row) {
                    if (cell.getCellTypeEnum().equals(CellType.NUMERIC)) {
                    	str += "," + cell.getNumericCellValue();
                    }
                    if (cell.getCellTypeEnum().equals(CellType.STRING)) {
                    	str += "," + cell.getStringCellValue();
                    }
                    if (cell.getCellTypeEnum().equals(CellType.BOOLEAN)) {
                    	str += "," + cell.getBooleanCellValue();
                    }
                    if (cell.getCellTypeEnum().equals(CellType.ERROR)) {
                    	str += "," + cell.getErrorCellValue();
                    }
                    if (cell.getCellTypeEnum().equals(CellType.BLANK)) {
                    	str += ", ";
                    }
                    /*switch(cell.getCellTypeEnum()) {
	                    case CellType.STRING:
	                        data.get(i).add(cell.getRichStringCellValue().getString());
	                        break;
	                    case CellType.NUMERIC:
	                        if(DateUtil.isCellDateFormatted(cell)) {
	                            data.get(i).add(cell.getDateCellValue));
	                        } else {
	                            data.get(i).add(cell.getNumericCellValue());
	                        }
	                        break;
	                    case CellType.BOOLEAN:
	                        data.get(i).add(cell.getBooleanCellValue());
	                        break;
	                    case CellType.FORMULA:
	                        data.get(i).add(cell.getCellFormula());
	                        break;
	                    case CellType.BLANK:
	                        data.get(i).add("")
	                        break;
	                 }*/
                }
                System.out.println(str);
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}

	
	@RequestMapping("/excel")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "DictType";
		//查询
		List<DictType> list = service.selectAll();

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
			String head = "ID,分类编码,分类名称,创建日期,创建人,更新日期,更新人,系统默认";
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
            style.setDataFormat(HSSFDataFormat.getBuiltinFormat("yyyy/MM/dd HH:mm:ss"));
            //创建表头名称
            HSSFCell cell;
            for (int j = 0; j < heads.length; j++) {
                cell = row.createCell(j);
                cell.setCellValue(heads[j]);
                cell.setCellStyle(style);
            }

			//遍历导出数据
			for (int i = 0; i < list.size(); i++) {
				DictType node = list.get(i);

				HSSFRow rowc = sheet.createRow(i+1);
				rowc.createCell(0).setCellValue(node.getsDictType_ID());
				rowc.createCell(1).setCellValue(node.getsDictType_NO());
				rowc.createCell(2).setCellValue(node.getsDictType_Name());
				if(node.getdDictType_CreateDate() != null) {
					rowc.createCell(3).setCellValue(node.getdDictType_CreateDate());
				}
				rowc.createCell(4).setCellValue(node.getsDictType_UserID());
				if(node.getdDictType_UpdateDate() != null) {
					rowc.createCell(5).setCellValue(node.getdDictType_UpdateDate());
				}
				rowc.createCell(6).setCellValue(node.getsDictType_UpdateUserID());
				rowc.createCell(7).setCellValue(node.getlDictType_SysFlag());
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
