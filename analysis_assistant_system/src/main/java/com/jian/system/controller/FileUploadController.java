package com.jian.system.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Base64;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jian.annotation.API;
import com.jian.annotation.APIType;
import com.jian.system.annotation.SysLog;
import com.jian.system.annotation.SystemLogType;
import com.jian.system.utils.UploadUtils;
import com.jian.tools.core.ResultTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;


@Controller
@RequestMapping("/api/file")
@API(name="文件上传")
public class FileUploadController {
	

	/**
	 * 上传图片。
	 * <b>需要：input[name=file]。</b>
	 * <p>支持图片格式：bmp,gif,jpeg,jpg,png,svg。
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * dir	否	String	自定义目录
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"type":"",
	 * 		"size":"",
	 * 		"name":"",
	 * 		"path":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * type	文件后缀名
	 * size	文件大小（byte）
	 * name	上传后名称
	 * path	上传后路径
	 * </pre>
	 */
	@ResponseBody
	@RequestMapping("/uploadImg")
	@API(type=APIType.Both)
	@SysLog(type=SystemLogType.Upload, describe="上传图片")
	public String upload(HttpServletRequest request, HttpServletResponse response, MultipartFile file) {
		String dir = Tools.getReqParamSafe(request, "dir");
		dir = Tools.isNullOrEmpty(dir) ? "" : dir.endsWith("/") ? dir : dir + "/";
		
		try {
			InputStream in = file.getInputStream();
			return UploadUtils.uploadImg(file.getOriginalFilename(), in, dir);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResultTools.custom(Tips.ERROR0).toJSONString();
	}
	
	/**
	 * 上传Base64图片。
	 * <p>支持图片格式：bmp,gif,jpeg,jpg,png,svg。
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * dataUrl	是	String	图片的Base64数据
	 * dir	否	String	自定义目录
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"type":"",
	 * 		"size":"",
	 * 		"name":"",
	 * 		"path":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * type	文件后缀名
	 * size	文件大小（byte）
	 * name	上传后名称
	 * path	上传后路径
	 * </pre>
	 */
	@ResponseBody
	@RequestMapping("/uploadImgBase64")
	@API(type=APIType.Both)
	@SysLog(type=SystemLogType.Upload, describe="上传Base64图片")
	public String uploadBase64(HttpServletRequest request, HttpServletResponse response) {
		String dir = Tools.getReqParamSafe(request, "dir");
		dir = Tools.isNullOrEmpty(dir) ? "" : dir.endsWith("/") ? dir : dir + "/";
		
		try {
			String dataUrl = request.getParameter("dataUrl");
			String regEx = "data:image/+\\w+;base64,";
			Pattern pat = Pattern.compile(regEx); 
			Matcher mat = pat.matcher(dataUrl); 
			if (mat.find()) {
				String r = mat.group();
				String fileName = "base64."+ r.replace("data:image/", "").replace(";base64,", "");
				// 解密
				byte[] content = Base64.getDecoder().decode(dataUrl.replace(r, ""));
				// 处理数据
				ByteArrayInputStream in = new ByteArrayInputStream(content);
				String res =  UploadUtils.uploadImg(fileName, in, dir);
				return res;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResultTools.custom(Tips.ERROR0).toJSONString();
	}
	
	/**
	 * 上传文件。如：图片、文档、视频、压缩包等等。
	 * <b>需要：input[name=file]。</b>
	 * <p>支持文件格式：bmp,gif,jpeg,jpg,png,svg,csv,doc,docx,pdf,ppt,pptx,txt,xls,xlsx,md,3gp,asf,avi,flv,f4v,mov,mkv,mp4,ogg,webm,wmv,ra,ram,rm,rmvb,swf,mp3,aac,wav,flac,wma,rar,zip,tar,gz,7z,psd,xml。
	 * @param req
	 * <p>请求参数说明：参数	必选	类型	描述
	 * <pre>
	 * dir	否	String	自定义目录
	 * </pre>
	 * @return resp
	 * <p>响应示例：
	 * <pre type="template">
	 * {
	 * 	"code": 1,
	 * 	"msg": "成功",
	 * 	"data": {
	 * 		"type":"",
	 * 		"size":"",
	 * 		"name":"",
	 * 		"path":"",
	 * 	}
	 * }
	 * </pre>
	 * <p>参数说明：参数	描述
	 * <pre>
	 * code	错误码，大于0表示成功，小于 0 表示失败。[错误码说明](#错误码说明)
	 * msg	错误消息 ，code 小于 0 时的具体错误信息。
	 * data	数据集。
	 * 数据字段
	 * type	文件后缀名
	 * size	文件大小（byte）
	 * name	上传后名称
	 * path	上传后路径
	 * </pre>
	 */
	@ResponseBody
	@RequestMapping("/uploadFile")
	@API(type=APIType.Both)
	@SysLog(type=SystemLogType.Upload, describe="上传文件")
	public String uploadFile(HttpServletRequest request, HttpServletResponse response, MultipartFile file) {
		String dir = Tools.getReqParamSafe(request, "dir");
		dir = Tools.isNullOrEmpty(dir) ? "" : dir.endsWith("/") ? dir : dir + "/";
		
		try {
			InputStream in = file.getInputStream();
			return UploadUtils.uploadFile(file.getOriginalFilename(), in, dir);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResultTools.custom(Tips.ERROR0).toJSONString();
	}


	/**
	 * 根据请求头解析出文件名 请求头的格式：火狐和google浏览器下：form-data; name="file";filename="snmp4j--api.zip" 
	 * IE浏览器下：form-data; name="file";filename="E:\snmp4j--api.zip"
	 * 
	 * @param header
	 *            请求头
	 * @return 文件名
	 */
	public String getFileName(String header) {
		/**
		 * String[] tempArr1 =
		 * header.split(";");代码执行完之后，在不同的浏览器下，tempArr1数组里面的内容稍有区别
		 * 火狐或者google浏览器下：tempArr1={form-data,name="file",filename="snmp4j--api.zip"}
		 * IE浏览器下：tempArr1={form-data,name="file",filename="E:\snmp4j--api.zip"}
		 */
		String[] tempArr1 = header.split(";");
		/**
		 * 火狐或者google浏览器下：tempArr2={filename,"snmp4j--api.zip"}
		 * IE浏览器下：tempArr2={filename,"E:\snmp4j--api.zip"}
		 */
		String[] tempArr2 = tempArr1[2].split("=");
		// 获取文件名，兼容各种浏览器的写法
		String fileName = tempArr2[1].substring(tempArr2[1].lastIndexOf("\\") + 1).replaceAll("\"", "");
		return fileName;
	}

}
