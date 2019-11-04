package com.jian.system.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
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
import com.jian.system.config.Config;
import com.jian.system.config.RedisCacheKey;
import com.jian.system.entity.Group;
import com.jian.system.entity.User;
import com.jian.system.entity.UserPosition;
import com.jian.system.entity.UserStation;
import com.jian.system.service.GroupService;
import com.jian.system.service.UserService;
import com.jian.system.utils.RedisUtils;
import com.jian.system.utils.TokenUtils;
import com.jian.system.utils.Utils;
import com.jian.tools.core.JsonTools;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.ResultKey;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;
import com.jian.tools.core.cache.CacheObject;


@Controller
@RequestMapping("/api/user")
@API(name="用户管理")
public class UserController extends BaseController<User, UserService> {

	@Autowired
	private Config config;
	@Autowired
	private RedisCacheKey cacheKey;
	@Autowired
	private GroupService groupService;
	

	//TODO -------------------------------------------------------------------------------- 后台管理
	
	@Override
	@RequestMapping("/add")
    @ResponseBody	
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="新增用户")
	public String add(HttpServletRequest req) {
		return super.add(req);
	}
	
	@Override
	@RequestMapping("/update")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新用户")
	public String update(HttpServletRequest req) {
		return super.update(req);
	}


	@Override
	@RequestMapping("/delete")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Delete, describe="删除用户")
	public String delete(HttpServletRequest req) {
		return super.delete(req);
	}

	@Override
	@RequestMapping("/findPage")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="分页查询用户")
	public String findPage(HttpServletRequest req) {
		return super.findPage(req);
	}

	@Override
	@RequestMapping("/findOne")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询单个用户")
	public String findOne(HttpServletRequest req) {
		return super.findOne(req);
	}
	
	@Override
	@RequestMapping("/findAll")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有用户")
	public String findAll(HttpServletRequest req) {
		return super.findAll(req);
	}
	
	@RequestMapping("/options")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询所有用户")
	public String options(HttpServletRequest req) {
		List<User> all = service.selectAll();
		User loginUser = getLoginUser(req);
		if(loginUser == null){
			return ResultTools.custom(Tips.ERROR111).toJSONString();
		}
		List<Map<String, Object>> res = all.stream()
				/*.filter( e -> config.superGroupId.equals(loginUser.getsUser_GroupID()) 
						|| e.getsUser_ID().equals(loginUser.getsUser_ID()))*/
				.map(e -> {
					Map<String, Object> temp = new HashMap<>();
					temp.put("sUser_ID", e.getsUser_ID());
					temp.put("sUser_Nick", e.getsUser_Nick());
					temp.put("sUser_UserName", e.getsUser_UserName());
					temp.put("lUser_StatusFlag", e.getlUser_StatusFlag());
					temp.put("sUser_GroupID", e.getsUser_GroupID());
					return temp;
				})
				.collect(Collectors.toList());
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}


	@RequestMapping("/login")
    @ResponseBody
	@SysLog(type=SystemLogType.Login, describe="用户登录")
	public String login(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String username = Tools.getReqParamSafe(req, "username");
		String password = Tools.getReqParamSafe(req, "password");
		vMap = Tools.verifyParam("username", username, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "username").toJSONString();
		}
		vMap = Tools.verifyParam("password", password, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "password").toJSONString();
		}
		
		//检查
		User user = service.selectOne(MapTools.custom().put("sUser_UserName", username).build());
		if(user == null){
			return ResultTools.custom(Tips.ERROR109).toJSONString();
		}
		if(user.getlUser_StatusFlag() == 0){
			return ResultTools.custom(Tips.ERROR107, "账号").toJSONString();
		}
		//时长
		String tkey = cacheKey.userLoginErrorPwdTime + user.getsUser_ID();
		CacheObject tobj = RedisUtils.getCacheObj(tkey);
		if(tobj != null) {
			int m = (int)((tobj.getTimeOut() - System.currentTimeMillis()) / (60 * 1000));
			m = m <= 0 ? 1 : m;
			return ResultTools.custom(Tips.ERROR108).put(ResultKey.MSG, "账号登录失败，请" +m+"分钟后重试。").toJSONString();
		}
		//次数
		if(!user.getsUser_PassWord().equals(Tools.md5(password))){
			//限制错误次数
			int loinTime = config.maxLoginCount - 1;
			String ckey = cacheKey.userLoginErrorPwdCount + user.getsUser_ID();
			CacheObject cobj = RedisUtils.getCacheObj(ckey);
			if(cobj == null){
				RedisUtils.setCacheObj(ckey, loinTime);
			}else{
				loinTime = Integer.parseInt(cobj.getValue()+"");
				loinTime--;
				if(loinTime <= 0){
					//时长限制
					RedisUtils.setCacheObj(tkey, 1, config.maxLoginTime); 
					RedisUtils.clearCacheObj(ckey); //解除禁用
				}else{
					RedisUtils.setCacheObj(ckey, loinTime);
				}
			}
			return ResultTools.custom(Tips.ERROR110).put(ResultKey.DATA, loinTime).toJSONString();
		}
		user.setsUser_PassWord("");
		
		//保存
		String okey = cacheKey.userLoginOnPc + user.getsUser_ID();
		String tokenStr = newToken(user);
		RedisUtils.setCacheObj(okey, JsonTools.toJsonString(user), config.expireTime); 
		
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("token", tokenStr);
		res.put("user", user);
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/logout")
    @ResponseBody
	@SysLog(type=SystemLogType.Other, describe="退出登录")
	public String logout(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}

		String key = cacheKey.userLoginOnPc + TokenUtils.getUserId(tokenStr);
		RedisUtils.clearCacheObj(key);
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}
	

	@RequestMapping("/isLogin")
    @ResponseBody
	@SysLog(type=SystemLogType.Query, describe="检测用户是否已登录")
	public String isLogin(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}
		
		String key = cacheKey.userLoginOnPc + TokenUtils.getUserId(tokenStr);
		CacheObject test = RedisUtils.getCacheObj(key);
		if(test == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, JsonTools.jsonToMap(String.valueOf(test.getValue())) ).toJSONString();
		}
	}
	

	@RequestMapping("/changePWD")
    @ResponseBody
	@VerifyLogin
	@SysLog(type=SystemLogType.Update, describe="修改用户密码")
	public String changePWD(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String oldPwd = Tools.getReqParamSafe(req, "oldPwd");
		String newPwd = Tools.getReqParamSafe(req, "newPwd");
		vMap = Tools.verifyParam("oldPwd", oldPwd, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "oldPwd").toJSONString();
		}
		vMap = Tools.verifyParam("newPwd", newPwd, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "newPwd").toJSONString();
		}
		
		//保存
		int res = service.changePWD(oldPwd, newPwd, getLoginUser(req).getsUser_ID());
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/resetPWD")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="重置用户密码")
	public String resetPWD(HttpServletRequest req) {
		
		Map<String, Object> vMap = null;
		
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		String sUser_PassWord = Tools.getReqParamSafe(req, "sUser_PassWord");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "sUser_ID").toJSONString();
		}
		vMap = Tools.verifyParam("sUser_PassWord", sUser_PassWord, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "sUser_PassWord").toJSONString();
		}
		
		//保存
		int res = service.resetPWD(sUser_ID, sUser_PassWord);
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}

	@RequestMapping("/authMenu")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询用户权限")
	public String authMenu(HttpServletRequest req) {
		
		Map<String,Object> res = service.authMenu(getLoginUser(req));
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	@RequestMapping("/aid")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询分配给用户的航标")
	public String aid(HttpServletRequest req) {

		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<Map<String, Object>> list = service.aid(sUser_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/updateAid")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新分配给用户的航标")
	public String updateAid(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		String aid = Tools.getReqParamSafe(req, "aid");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updateAid(sUser_ID, aid);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	@RequestMapping("/station")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询分配给用户的航标站")
	public String station(HttpServletRequest req) {

		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<UserStation> list = service.station(sUser_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/updateStation")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新分配给用户的航标站")
	public String updateStation(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		String station = Tools.getReqParamSafe(req, "station");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updateStation(sUser_ID, station);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	@RequestMapping("/store")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询分配给用户的仓库")
	public String store(HttpServletRequest req) {

		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		List<Map<String, Object>> list = service.store(sUser_ID);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}

	@RequestMapping("/updateStore")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新分配给用户的仓库")
	public String updateStore(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String sUser_ID = Tools.getReqParamSafe(req, "sUser_ID");
		String store = Tools.getReqParamSafe(req, "store");
		vMap = Tools.verifyParam("sUser_ID", sUser_ID, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updateStore(sUser_ID, store);
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	

	

	@RequestMapping("/position")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Query, describe="查询用户统计布局")
	public String position(HttpServletRequest req) {
		UserPosition res = service.position(getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}

	@RequestMapping("/updatePosition")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Update, describe="更新用户统计布局")
	public String updatePosition(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		//参数
		String style = Tools.getReqParamSafe(req, "style");
		vMap = Tools.verifyParam("style", style, 0, 0);
		if(vMap != null){
			return JsonTools.toJsonString(vMap);
		}
		int res = service.updatePosition(style, getLoginUser(req));
        return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	private String newToken(User user){
		return newToken(user, config.expireTime);
	}
	
	private String newToken(User user, int expireTime){
		long curTime = System.currentTimeMillis();
		String str = user.getsUser_ID() + "." + curTime + "."  + expireTime;
		String token = Tools.md5(str + config.tokenSecretKey); // userId + time + expire + key
		String tokenStr = token + "." + str;
		return tokenStr;
	}
	
	@RequestMapping("/import")
    @ResponseBody
	@VerifyLogin
	@VerifyAuth
	@SysLog(type=SystemLogType.Add, describe="导入用户")
	public String imports(HttpServletRequest req, HttpServletResponse resp, @RequestParam("file") MultipartFile file) {
		try {
			
			User loginUser = getLoginUser(req);
			List<Group> groups = groupService.selectAll();
			
			InputStream in = file.getInputStream();
			Workbook workbook = WorkbookFactory.create(in);
            Sheet sheet = workbook.getSheetAt(0);
            //获取sheet的行数
            List<User> list = new ArrayList<User>();
            User node = null;
            int rows = sheet.getPhysicalNumberOfRows();
            for (int i = 0; i < rows; i++) {
                //过滤表头行
                if (i == 0) {
                    continue;
                }
                //获取当前行的数据
                Row row = sheet.getRow(i);
                node = new User();
                node.setsUser_ID(Utils.newSnowflakeIdStr());
                node.setsUser_UserName(Utils.getCellValue(row.getCell(0)));
                node.setsUser_PassWord(Utils.getCellValue(row.getCell(1)));
                node.setsUser_Nick(Utils.getCellValue(row.getCell(2)));
                
                String groupName = Utils.getCellValue(row.getCell(3));
                List<Group> tempGroups = groups.stream()
                		.filter(e -> e.getsGroup_Name().equals(groupName))
                		.collect(Collectors.toList());
                if(tempGroups.size() > 0) {
                	node.setsUser_GroupID(tempGroups.get(0).getsGroup_ID());
                }
                
                node.setlUser_StatusFlag(1);
                node.setdUser_CreateDate(new Date());
                if(loginUser != null) {
                	node.setsUser_UserID(loginUser.getsUser_ID());
                }
                list.add(node);
            }
            //去重
            //1、自身
            list = list.stream()
            		.filter(Utils.distinctByKey(e -> e.getsUser_UserName()))
            		.collect(Collectors.toList());
            //2、数据库
            List<User> all = service.selectAll();
            list = list.stream()
            		.filter(t-> !all.stream()
            				.map(e -> e.getsUser_UserName())
            				.collect(Collectors.toList())
            				.contains(t.getsUser_UserName()))
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
	@SysLog(type=SystemLogType.Export, describe="导出用户")
	public String excel(HttpServletRequest req, HttpServletResponse resp) {
		
		String filename = "User";
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
			String head = "ID,用户名,密码（md5）,用户昵称,状态,用户组,QQ号,邮箱,手机号,第三方ID,创建日期,创建人";
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
                if(j == 4) {
                	HSSFComment comment = patr.createCellComment(anchor);//创建批注
                	comment.setString(new HSSFRichTextString("0：禁用，1：启用"));//设置批注内容
                	cell.setCellComment(comment);
                }
            }

			//遍历导出数据
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> node = list.get(i);

				HSSFRow rowc = sheet.createRow(i+1);
				rowc.createCell(0).setCellValue(node.get("sUser_ID") == null ? "" : String.valueOf(node.get("sUser_ID")) );
				rowc.createCell(1).setCellValue(node.get("sUser_UserName") == null ? "" : String.valueOf(node.get("sUser_UserName")) );
				rowc.createCell(2).setCellValue(node.get("sUser_PassWord") == null ? "" : String.valueOf(node.get("sUser_PassWord")) );
				rowc.createCell(3).setCellValue(node.get("sUser_Nick") == null ? "" : String.valueOf(node.get("sUser_Nick")) );
				rowc.createCell(4).setCellValue(node.get("lUser_StatusFlag") == null ? 0 : Integer.parseInt(String.valueOf(node.get("lUser_StatusFlag"))) );
				rowc.createCell(5).setCellValue(node.get("sUser_GroupName") == null ? "" : String.valueOf(node.get("sUser_GroupName")) );
				rowc.createCell(6).setCellValue(node.get("sUser_QQ") == null ? "" : String.valueOf(node.get("sUser_QQ")) );
				rowc.createCell(7).setCellValue(node.get("sUser_Email") == null ? "" : String.valueOf(node.get("sUser_Email")) );
				rowc.createCell(8).setCellValue(node.get("sUser_Phone") == null ? "" : String.valueOf(node.get("sUser_Phone")) );
				rowc.createCell(9).setCellValue(node.get("sUser_ThirdID") == null ? "" : String.valueOf(node.get("sUser_ThirdID")) );
				if(node.get("dUser_CreateDate") != null) {
					Cell cell10 = rowc.createCell(10);
					cell10.setCellStyle(styleDate);
					cell10.setCellValue((Date) node.get("dUser_CreateDate"));
				}
				rowc.createCell(11).setCellValue(node.get("sUser_UserName") == null ? "" : String.valueOf(node.get("sUser_UserName")) );
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
	
	@RequestMapping("/app/login")
    @ResponseBody
	@SysLog(type=SystemLogType.Login, describe="app用户登录")
	public String appLogin(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String username = Tools.getReqParamSafe(req, "username");
		String password = Tools.getReqParamSafe(req, "password"); // 已md5
		vMap = Tools.verifyParam("username", username, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "username").toJSONString();
		}
		vMap = Tools.verifyParam("password", password, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "password").toJSONString();
		}
		
		//检查
		User user = service.selectOne(MapTools.custom().put("sUser_UserName", username).build());
		if(user == null){
			return ResultTools.custom(Tips.ERROR109).toJSONString();
		}
		if(user.getlUser_StatusFlag() == 0){
			return ResultTools.custom(Tips.ERROR107, "账号").toJSONString();
		}
		//时长
		String tkey = cacheKey.userLoginErrorPwdTime + user.getsUser_ID();
		CacheObject tobj = RedisUtils.getCacheObj(tkey);
		if(tobj != null) {
			int m = (int)((tobj.getTimeOut() - System.currentTimeMillis()) / (60 * 1000));
			m = m <= 0 ? 1 : m;
			return ResultTools.custom(Tips.ERROR108).put(ResultKey.MSG, "账号登录失败，请" +m+"分钟后重试。").toJSONString();
		}
		//次数
		if(!user.getsUser_PassWord().equals(password)){
			//限制错误次数
			int loinTime = config.maxLoginCount - 1;
			String ckey = cacheKey.userLoginErrorPwdCount + user.getsUser_ID();
			CacheObject cobj = RedisUtils.getCacheObj(ckey);
			if(cobj == null){
				RedisUtils.setCacheObj(ckey, loinTime);
			}else{
				loinTime = Integer.parseInt(cobj.getValue()+"");
				loinTime--;
				if(loinTime <= 0){
					//时长限制
					RedisUtils.setCacheObj(tkey, 1, config.maxLoginTime); 
					RedisUtils.clearCacheObj(ckey); //解除禁用
				}else{
					RedisUtils.setCacheObj(ckey, loinTime);
				}
			}
			return ResultTools.custom(Tips.ERROR110).put(ResultKey.DATA, loinTime).toJSONString();
		}
		user.setsUser_PassWord("");
		
		//保存
		int expireTime = 8 * 3600 * 1000;
		String okey = cacheKey.userLoginOnMobile + user.getsUser_ID();
		String tokenStr = newToken(user, expireTime);
		RedisUtils.setCacheObj(okey, JsonTools.toJsonString(user), expireTime); 
		
		Map<String, Object> res = new HashMap<String, Object>();
		res.put("token", tokenStr);
		res.put("user", user);
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, res).toJSONString();
	}
	
	@RequestMapping("/app/logout")
    @ResponseBody
	@SysLog(type=SystemLogType.Other, describe="app退出登录")
	public String appLogout(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}

		String key = cacheKey.userLoginOnMobile + TokenUtils.getUserId(tokenStr);
		RedisUtils.clearCacheObj(key);
		return ResultTools.custom(Tips.ERROR1).toJSONString();
	}
	

	@RequestMapping("/app/isLogin")
    @ResponseBody
	@SysLog(type=SystemLogType.Query, describe="app检测用户是否已登录")
	public String appIsLogin(HttpServletRequest req) {
		//保存
		String tokenStr = TokenUtils.getLoginToken(req);
		
		if(!TokenUtils.checkLoginToken(tokenStr)) {
			return ResultTools.custom(Tips.ERROR213, "token").toJSONString();
		}
		
		String key = cacheKey.userLoginOnMobile + TokenUtils.getUserId(tokenStr);
		CacheObject test = RedisUtils.getCacheObj(key);
		if(test == null){
			return ResultTools.custom(Tips.ERROR0).toJSONString();
		}else {
			return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, JsonTools.jsonToMap(String.valueOf(test.getValue())) ).toJSONString();
		}
	}

	@RequestMapping("/app/aid")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Query, describe="app查询登录用户的航标")
	public String appAid(HttpServletRequest req) {

		User luser = getAppLoginUser(req);
		if(luser == null){
			return ResultTools.custom(Tips.ERROR111).toJSONString();
		}
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		if(config.superGroupId.equals(luser.getsUser_GroupID())) { //超管
			list = service.aidAll();
		}else {
			list = service.aid(luser.getsUser_ID());
		}
		return ResultTools.custom(Tips.ERROR1).put(ResultKey.DATA, list).toJSONString();
	}
	
	@RequestMapping("/app/changePWD")
    @ResponseBody
	@VerifyAppSign
	@VerifyAppLogin
	@VerifyAppAuth
	@SysLog(type=SystemLogType.Update, describe="app修改用户密码")
	public String appChangePWD(HttpServletRequest req) {
		Map<String, Object> vMap = null;
		
		//参数
		String oldPwd = Tools.getReqParamSafe(req, "oldPwd");
		String newPwd = Tools.getReqParamSafe(req, "newPwd");
		vMap = Tools.verifyParam("oldPwd", oldPwd, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "oldPwd").toJSONString();
		}
		vMap = Tools.verifyParam("newPwd", newPwd, 0, 0);
		if(vMap != null){
			return ResultTools.custom(Tips.ERROR206, "newPwd").toJSONString();
		}
		
		//保存
		int res = service.changePWD(oldPwd, newPwd, getAppLoginUser(req).getsUser_ID());
		if(res > 0){
			return ResultTools.custom(Tips.ERROR1).toJSONString();
		}else{
			return ResultTools.custom(Tips.ERROR0).put(ResultKey.DATA, res).toJSONString();
		}
	}
}
