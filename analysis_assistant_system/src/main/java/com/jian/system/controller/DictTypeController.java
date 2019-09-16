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
import org.apache.poi.hssf.usermodel.HSSFComment;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
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
import com.jian.system.utils.Utils;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;


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
	@SysLog(type=SystemLogType.Add, describe="导入字典分类")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            List<DictType> list = new ArrayList<DictType>();
            DictType node = null;
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //过滤表头行
                if (i == 0) {
                    continue;
                }
                //获取当前行的数据
                Row row = sheet.getRow(i);
                node = new DictType();
                node.setsDictType_ID(Utils.newSnowflakeIdStr());
                node.setsDictType_NO(row.getCell(0) == null ? "" : row.getCell(0).getStringCellValue());
                node.setsDictType_Name(row.getCell(1) == null ? "" : row.getCell(1).getStringCellValue());
                node.setlDictType_SysFlag(row.getCell(2) == null ? 0 : ((Double)row.getCell(2).getNumericCellValue()).intValue());
                node.setdDictType_CreateDate(new Date());
                if(loginUser != null) {
                	node.setsDictType_UserID(loginUser.getsUser_ID());
                }
                list.add(node);
            }
            //去重
            //1、自身
            list = list.stream()
            		.filter(Utils.distinctByKey(e -> e.getsDictType_NO()))
            		.collect(Collectors.toList());
            //2、数据库
            List<DictType> all = service.selectAll();
            list = list.stream()
            		.filter(t-> !all.stream()
            				.map(e -> e.getsDictType_NO())
            				.collect(Collectors.toList())
            				.contains(t.getsDictType_NO()))
            		.collect(Collectors.toList());
            //保存
            if(list.size() > 0) {
            	service.batchInsert(list, loginUser);
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
	@SysLog(type=SystemLogType.Export, describe="导出字典分类")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "DictType";
		//查询
		List<Map<String, Object>> list = service.export();

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
                //创建批注
                if(j == 1) {
                	HSSFComment comment = patr.createCellComment(anchor);//创建批注
                	comment.setString(new HSSFRichTextString("数据唯一"));//设置批注内容
                	cell.setCellComment(comment);
                }else if(j == 7) {
                	HSSFComment comment = patr.createCellComment(anchor);//创建批注
                	comment.setString(new HSSFRichTextString("1：是，0：否"));//设置批注内容
                	cell.setCellComment(comment);
                }
            }

			//遍历导出数据
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> node = list.get(i);

				HSSFRow rowc = sheet.createRow(i+1);
				rowc.createCell(0).setCellValue(node.get("sDictType_ID") == null ? "" : String.valueOf(node.get("sDictType_ID")) );
				rowc.createCell(1).setCellValue(node.get("sDictType_NO") == null ? "" : String.valueOf(node.get("sDictType_NO")) );
				rowc.createCell(2).setCellValue(node.get("sDictType_Name") == null ? "" : String.valueOf(node.get("sDictType_Name")) );
				if(node.get("dDictType_CreateDate") != null) {
					Cell cell3 = rowc.createCell(3);
					cell3.setCellStyle(styleDate);
					cell3.setCellValue((Date) node.get("dDictType_CreateDate"));
				}
				rowc.createCell(4).setCellValue(node.get("sDictType_UserName") == null ? "" : String.valueOf(node.get("sDictType_UserName")) );
				if(node.get("dDictType_UpdateDate") != null) {
					Cell cell5 = rowc.createCell(5);
					cell5.setCellStyle(styleDate);
					cell5.setCellValue((Date) node.get("dDictType_UpdateDate"));
				}
				rowc.createCell(6).setCellValue(node.get("sDictType_UpdateUserName") == null ? "" : String.valueOf(node.get("sDictType_UpdateUserName")) );
				rowc.createCell(7).setCellValue(node.get("lDictType_SysFlag") == null ? 0 : Integer.parseInt(String.valueOf(node.get("lDictType_SysFlag"))) );
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
