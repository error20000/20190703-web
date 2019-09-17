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
import com.jian.system.entity.Nfc;
import com.jian.system.entity.User;
import com.jian.system.service.NfcService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Controller
@RequestMapping("/api/nfc")
@API(name="NFC管理")
public class NfcController extends BaseController<Nfc, NfcService> {

	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增NFC")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新NFC")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除NFC")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询NFC")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个NFC")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有NFC")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	@RequestMapping("/viewBind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询NFC绑定信息")
	public String viewBind(HttpServletRequest req) {
		return service.viewBind(req);
	}

	@RequestMapping("/delBind")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="解除NFC绑定")
	public String delBind(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sNfc_ID = Tools.getReqParamSafe(req, "sNfc_ID");
		vMap = Tools.verifyParam("sNfc_ID", sNfc_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		
		int res = service.delBind(sNfc_ID);
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
	@SysLog(type=SystemLogType.Query, describe="查询未使用的NFC")
	public String unbind(HttpServletRequest req) {
		List<Nfc> list = service.unbind();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入Nfc标签")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            List<Nfc> list = new ArrayList<>();
            Nfc node = null;
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //过滤表头行
                if (i == 0) {
                    continue;
                }
                //获取当前行的数据
                Row row = sheet.getRow(i);
                node = new Nfc();
                node.setsNfc_ID(Utils.newSnowflakeIdStr());
                node.setsNfc_Name(Utils.getCellValue(row.getCell(0)));
                node.setsNfc_NO(Utils.getCellValue(row.getCell(1)));
                node.setlNfc_StatusFlag(Tools.parseInt(Utils.getCellValue(row.getCell(2))));
                node.setdNfc_CreateDate(new Date());
                list.add(node);
            }
            //去重
            //1、自身
            list = list.stream()
            		.filter(Utils.distinctByKey(e -> e.getsNfc_NO()))
            		.collect(Collectors.toList());
            //2、数据库
            List<Nfc> all = service.selectAll();
            list = list.stream()
            		.filter(t-> !all.stream()
            				.map(e -> e.getsNfc_NO())
            				.collect(Collectors.toList())
            				.contains(t.getsNfc_NO()))
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
	@SysLog(type=SystemLogType.Export, describe="导出Nfc标签")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "Nfc";
		//查询
		List<Nfc> list = service.selectAll();

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
			String head = "ID,名称,编码,状态,创建日期";
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
                if(j == 3) {
                	HSSFComment comment = patr.createCellComment(anchor);//创建批注
                	comment.setString(new HSSFRichTextString("0：未使用，1：已使用"));//设置批注内容
                	cell.setCellComment(comment);
                }
            }

			//遍历导出数据
			for (int i = 0; i < list.size(); i++) {
				Nfc node = list.get(i);
				
				HSSFRow rowc = sheet.createRow(i+1);
				rowc.createCell(0).setCellValue(node.getsNfc_ID() );
				rowc.createCell(1).setCellValue(node.getsNfc_Name() );
				rowc.createCell(2).setCellValue(node.getsNfc_NO() );
				rowc.createCell(3).setCellValue(node.getlNfc_StatusFlag() );
				if(node.getdNfc_CreateDate() != null) {
					Cell cell4 = rowc.createCell(4);
					cell4.setCellStyle(styleDate);
					cell4.setCellValue(node.getdNfc_CreateDate());
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
	
	@RequestMapping("/app/findAll")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询所有NFC")
	public String appFindAll(HttpServletRequest req) {
		return super.findAll(req);
	}


	@RequestMapping("/app/unbind")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询未使用的NFC")
	public String appUnbind(HttpServletRequest req) {
		List<Nfc> list = service.unbind();
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}


	@RequestMapping("/app/findAndAdd")
    @ResponseBody
    @VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询未使用的NFC")
	public String appFindAndAdd(HttpServletRequest req) {
		String sNfc_NO = Tools.getReqParamSafe(req, "sNfc_NO");
		Nfc res = service.findAndAdd(sNfc_NO);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
}
