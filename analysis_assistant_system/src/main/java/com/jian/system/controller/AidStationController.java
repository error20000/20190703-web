package com.jian.system.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jian.annotation.API;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.annotation.VerifyAuth;
import com.jian.system.annotation.VerifyLogin;
import com.jian.system.entity.AidStation;
import com.jian.system.service.AidStationService;
import com.jian.system.service.DictService;
import com.jian.system.utils.Utils;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;


@Controller
@RequestMapping("/api/aidStation")
@API(name="航标站的地图设置")
public class AidStationController extends BaseController<AidStation, AidStationService> {

	@Autowired
	private DictService dictService;

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增航标站地图设置")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新航标站地图设置")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除航标站地图设置")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询航标站地图设置")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个航标站地图设置")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有航标站地图设置")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}
	
	@Override
	@RequestMapping("/findList")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有航标站地图设置")
	public String findList(HttpServletRequest req) {
		Map<String, Object> condition = Utils.getReqParamsToMap(req, AidStation.class);
		List<AidStation> res = service.list(condition, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	/*@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入航标站地图设置")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			List<Aid> aids = aidService.selectAll();
			List<Dict> statuss = dictService.selectList(MapTools.custom().put("sDict_DictTypeNO", Constant.DictType_AidStation).build());
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
	@SysLog(type=SystemLogType.Export, describe="导出航标站地图设置")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "AidStation";
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
	}*/

	
	//TODO -------------------------------------------------------------------------------- 前端接口

	
}
