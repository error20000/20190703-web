package com.jian.system.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Hyperlink;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFComment;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFPicture;
import org.apache.poi.hssf.usermodel.HSSFPictureData;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.VerticalAlignment;
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
import com.jian.system.entity.Dict;
import com.jian.system.entity.DictType;
import com.jian.system.entity.User;
import com.jian.system.service.DictService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;


@Controller
@RequestMapping("/api/dict")
@API(name="字典管理")
public class DictController extends BaseController<Dict, DictService> {


	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增数据字典")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新数据字典")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除数据字典")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询数据字典")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个数据字典")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有数据字典")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}

	
	@Override
	@RequestMapping("/findList")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询数据字典列表")
	public String findList(HttpServletRequest req) {
		return super.findList(req);
	}
	
	@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入字典")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            List<Dict> list = new ArrayList<>();
            Dict node = null;
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //过滤表头行
                if (i == 0) {
                    continue;
                }
                //获取当前行的数据
                /*Row row = sheet.getRow(i);
                node = new DictType();
                node.setsDictType_ID(Utils.newSnowflakeIdStr());
                node.setsDictType_NO(row.getCell(0) == null ? "" : row.getCell(0).getStringCellValue());
                node.setsDictType_Name(row.getCell(1) == null ? "" : row.getCell(1).getStringCellValue());
                node.setlDictType_SysFlag(row.getCell(2) == null ? 0 : ((Double)row.getCell(2).getNumericCellValue()).intValue());
                node.setdDictType_CreateDate(new Date());
                if(loginUser != null) {
                	node.setsDictType_UserID(loginUser.getsUser_ID());
                }*/
                list.add(node);
            }
            //去重
            //1、自身
            list = list.stream()
            		.filter(Utils.distinctByKey(e -> e.getsDict_NO() + e.getsDict_DictTypeNO() ))
            		.collect(Collectors.toList());
            //2、数据库
            List<Dict> all = service.selectAll();
            list = list.stream()
            		.filter(t-> !all.stream()
            				.map(e -> e.getsDict_NO() + e.getsDict_DictTypeNO())
            				.collect(Collectors.toList())
            				.contains(t.getsDict_NO() + t.getsDict_DictTypeNO()))
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
	@SysLog(type=SystemLogType.Export, describe="导出字典")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "Dict";
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
			String head = "ID,字典编码,字典名称,字典分类编码,创建日期,创建人,更新日期,更新人,系统默认,字典描述,字典图片,字典链接,字典颜色";
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
            HSSFCellStyle stylePic = workbook.createCellStyle();
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
                	comment.setString(new HSSFRichTextString("同一字典分类编码下，数据唯一"));//设置批注内容
                	cell.setCellComment(comment);
                }else if(j == 8) {
                	HSSFComment comment = patr.createCellComment(anchor);//创建批注
                	comment.setString(new HSSFRichTextString("1：是，0：否"));//设置批注内容
                	cell.setCellComment(comment);
                }
            }

			//遍历导出数据
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> node = list.get(i);

				HSSFRow rowc = sheet.createRow(i+1);

	            HSSFCellStyle styleRow = workbook.createCellStyle();
	            styleRow.setVerticalAlignment(VerticalAlignment.CENTER);//垂直居中
	            rowc.setRowStyle(styleRow);
	            
				rowc.createCell(0).setCellValue(node.get("sDict_ID") == null ? "" : String.valueOf(node.get("sDict_ID")) );
				rowc.createCell(1).setCellValue(node.get("sDict_NO") == null ? "" : String.valueOf(node.get("sDict_NO")) );
				rowc.createCell(2).setCellValue(node.get("sDict_Name") == null ? "" : String.valueOf(node.get("sDict_Name")) );
				rowc.createCell(3).setCellValue(node.get("sDict_TypeName") == null ? "" : String.valueOf(node.get("sDict_TypeName")) );
				if(node.get("dDict_CreateDate") != null) {
					Cell cell4 = rowc.createCell(4);
					cell4.setCellStyle(styleDate);
					cell4.setCellValue((Date) node.get("dDict_CreateDate"));
				}
				rowc.createCell(5).setCellValue(node.get("sDict_UserName") == null ? "" : String.valueOf(node.get("sDict_UserName")) );
				if(node.get("dDict_UpdateDate") != null) {
					Cell cell6 = rowc.createCell(6);
					cell6.setCellStyle(styleDate);
					cell6.setCellValue((Date) node.get("dDict_UpdateDate"));
				}
				rowc.createCell(7).setCellValue(node.get("sDict_UpdateUserName") == null ? "" : String.valueOf(node.get("sDict_UpdateUserName")) );
				rowc.createCell(8).setCellValue(node.get("lDict_SysFlag") == null ? 0 : Integer.parseInt(String.valueOf(node.get("lDict_SysFlag"))) );

				rowc.createCell(9).setCellValue(node.get("sDict_Describe") == null ? "" : String.valueOf(node.get("sDict_Describe")) );
				if(node.get("sDict_Picture") != null) {
					File file = new File(config.out_static_path + node.get("sDict_Picture"));
					if(file.exists()) {
						ByteArrayOutputStream byteArrayOut  = new ByteArrayOutputStream();
						BufferedImage bufferImg = ImageIO.read(file);
						bufferImg.getWidth();
						bufferImg.getHeight();
						file.getName();
						System.out.println(bufferImg.getWidth());
						System.out.println(bufferImg.getHeight());
						System.out.println(file.getName());
						System.out.println(req.getRequestURL().toString());
						ImageIO.write(bufferImg, file.getName().split("[.]")[1], byteArrayOut);
//						FileInputStream stream = new FileInputStream(file);
//						byte[] bytes = new byte[(int)stream.getChannel().size()];
//						stream.read(bytes);//读取图片到二进制数组
						byte[] bytes = byteArrayOut.toByteArray();
						int pictureIdx = workbook.addPicture(bytes, HSSFWorkbook.PICTURE_TYPE_PNG);
						HSSFPatriarch patriarch = sheet.createDrawingPatriarch();
						HSSFClientAnchor anchorPic = new HSSFClientAnchor(0, 0, 0, 0, (short)10, i+1, (short)10, i+1);
						HSSFPicture pict = patriarch.createPicture(anchorPic, pictureIdx);
						pict.resize();
						sheet.setColumnWidth(10, 60 * 256);
						rowc.setHeightInPoints(60);
						rowc.createCell(10).setCellValue(req.getRequestURL().toString().split("api/")[0] + String.valueOf(node.get("sDict_Picture")) );
					}
				}
				if(node.get("sDict_Link") != null) {
					Hyperlink link = workbook.getCreationHelper().createHyperlink(HyperlinkType.URL);
					String url = String.valueOf(node.get("sDict_Link"));
					link.setAddress(url);
					Cell cell11 = rowc.createCell(11);
					cell11.setHyperlink(link);
					cell11.setCellValue(url);
				}
				rowc.createCell(12).setCellValue(node.get("sDict_Color") == null ? "" : String.valueOf(node.get("sDict_Color")) );
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

	@RequestMapping("/app/findList")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询数据字典列表")
	public String appFindList(HttpServletRequest req) {
		return super.findList(req);
	}
}
