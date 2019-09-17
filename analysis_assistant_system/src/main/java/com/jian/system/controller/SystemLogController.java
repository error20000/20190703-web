package com.jian.system.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;
import java.util.Map;

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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.entity.SystemLog;
import com.jian.system.service.SystemLogService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/systemLog")
@API(name="系统日志管理")
public class SystemLogController extends BaseController<SystemLog, SystemLogService> {


	//TODO -------------------------------------------------------------------------------- 后台管理
	
	/*@Override
	@PostMapping("/add")
	@ResponseBody	
	@VerifyLogin
	@VerifyAuth
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@PostMapping("/update")
	@ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String update(HttpServletRequest req) {
		return super.update(req);
	}
	
	
	@Override
	@PostMapping("/delete")
	@ResponseBody
	@VerifyLogin
	@VerifyAuth
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}*/

	@Override
	@PostMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询日志")
	public String findPage(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String page = Tools.getReqParamSafe(req, "page");
		String rows = Tools.getReqParamSafe(req, "rows");
		String startDate = Tools.getReqParamSafe(req, "startDate");
		String endDate = Tools.getReqParamSafe(req, "endDate");
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
		Map<String, Object> condition = Utils.getReqParamsToMap(req, SystemLog.class);
		
		Date sDate = Tools.isNullOrEmpty(startDate) ? null : new Date(Long.parseLong(startDate));
		Date eDate = Tools.isNullOrEmpty(endDate) ? null : new Date(Long.parseLong(endDate));
		
		List<SystemLog> list = service.selectPageByDate(condition, sDate, eDate, start, Tools.parseInt(rows));
		long total = service.sizeByDate(condition, sDate, eDate);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.TOTAL, total).put(ResultKey.DATA, list).toJSONString();
	}

	@Override
	@PostMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单条日志")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}


	
	@RequestMapping("/excel")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Export, describe="导出系统日志")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "SystemLog";
		//查询
		String startDate = Tools.getReqParamSafe(req, "startDate");
		String endDate = Tools.getReqParamSafe(req, "endDate");
		Date sDate = Tools.isNullOrEmpty(startDate) ? null : new Date(Long.parseLong(startDate));
		Date eDate = Tools.isNullOrEmpty(endDate) ? null : new Date(Long.parseLong(endDate));
		Map<String, Object> condition = Utils.getReqParamsToMap(req, SystemLog.class);
		List<SystemLog> list = service.selectByDate(condition, sDate, eDate);

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
			String head = "ID,日志日期,日志分类,用户,IP,用户昵称,请求地址,日志描述,方法耗时(ms),方法名,请求参数,响应参数,异常信息,模块";
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
				SystemLog node = list.get(i);
	            
				HSSFRow rowc = sheet.createRow(i+1);
				rowc.createCell(0).setCellValue(node.getsSLog_ID());
				if(node.getdSLog_CreateDate() != null) {
					Cell cell1 = rowc.createCell(1);
					cell1.setCellStyle(styleDate);
					cell1.setCellValue(node.getdSLog_CreateDate());
				}
				rowc.createCell(2).setCellValue(node.getsSLog_Type() );
				rowc.createCell(3).setCellValue(node.getsSLog_UserID() );
				rowc.createCell(4).setCellValue(node.getsSLog_IP() );
				rowc.createCell(5).setCellValue(node.getsSLog_UserNick() );
				rowc.createCell(6).setCellValue(node.getsSLog_Uri() );
				rowc.createCell(7).setCellValue(node.getsSLog_Describe() );
				rowc.createCell(8).setCellValue(node.getlSLog_TimeConsume() );
				rowc.createCell(9).setCellValue(node.getsSLog_Method() );
				rowc.createCell(10).setCellValue(node.getsSLog_Request() );
				rowc.createCell(11).setCellValue(node.getsSLog_Response() );
				rowc.createCell(12).setCellValue(node.getsSLog_Exception() );
				rowc.createCell(13).setCellValue(node.getsSLog_Module() );
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
