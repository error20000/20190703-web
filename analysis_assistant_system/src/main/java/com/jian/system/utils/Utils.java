package com.jian.system.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import javax.servlet.http.HttpServletRequest;

import com.jian.annotation.PrimaryKey;
import com.jian.annotation.PrimaryKeyCondition;
import com.jian.tools.core.DateTools;
import com.jian.tools.core.Tools;

public class Utils {

	private static Map<String, List<PrimaryKeyCondition>> pkArrays = new HashMap<String ,List<PrimaryKeyCondition>>();
	
	/**
	 * 获取Entity类注解的PrimaryKey。
	 * @param clss
	 * @return
	 */
	public static List<String> getPrimaryKeys(Class<?> clss){
		String mark = clss.getCanonicalName();
		List<PrimaryKeyCondition> list = null;
		if(pkArrays.containsKey(mark)){
			list = pkArrays.get(mark);
		}else {
			list = new ArrayList<PrimaryKeyCondition>();
			Field[] fields = Tools.getFields(clss);
			for (Field f : fields) {
				if(f.isAnnotationPresent(PrimaryKey.class)){
					PrimaryKeyCondition node = new PrimaryKeyCondition();
					node.setField(f.getName());
					node.setType(f.getType().getSimpleName());
					node.setKeyType(f.getAnnotation(PrimaryKey.class).type());
					list.add(node);
				}
			}
			pkArrays.put(mark, list);
		}
		List<String> keys = new ArrayList<>();
		for (PrimaryKeyCondition pkc : list) {
			String pkn = pkc.getField();
			keys.add(pkn);
		}
		return keys;
	}
	/**
	 * 获取请求参数，防注入
	 * @param req	request请求
	 * @param clss	过滤条件。只获取与类属性名相同的参数
	 * @return	map
	 */
	public static Map<String, Object> getReqParamsToMap(HttpServletRequest req, Class<?> clss){
		Map<String, Object> obj = new HashMap<String, Object>();
		Enumeration<String> enums = req.getParameterNames();
		if(enums == null || !enums.hasMoreElements()){
			enums = req.getAttributeNames();
		}
		while (enums.hasMoreElements()) {
			String name = enums.nextElement();
			Field[] fields = Tools.getFields(clss); //clss.getDeclaredFields();
			for (Field f : fields) {
				if(name.equals(f.getName())){
					Object value = null;
					String tmpValue = Tools.getReqParam(req, name);
					//格式化
					switch (f.getType().getSimpleName()) {
					case "int":
						value = Tools.parseInt(tmpValue);
						break;
					case "long":
						value = Tools.parseLong(tmpValue);
						break;
					case "float":
						value = Tools.parseFloat(tmpValue);
						break;
					case "double":
						value = Tools.parseDouble(tmpValue);
						break;
					case "boolean":
						value = Tools.parseBoolean(tmpValue);
						break;
					case "Date":
						value = new Date(Tools.parseLong(tmpValue));
						break;
					default:
						value = tmpValue;
						break;
					}
					obj.put(name, value);
				}
			}
		}
		return obj;
	}
	
	/**
	 * 获取请求参数，防注入
	 * @param req	request请求
	 * @param obj	转换对象
	 * @return	T
	 */
	public static <T> T getReqParamsToObject(HttpServletRequest req, T obj){
		Class<?> clss = obj.getClass();
		Field[] fields = Tools.getFields(clss); //clss.getDeclaredFields();
		Method[] methods = Tools.getMethods(clss); //clss.getDeclaredMethods();
		for (Field f : fields) {
			Object value = null;
			Enumeration<String> enums = req.getParameterNames();
			if(enums == null || !enums.hasMoreElements()){
				enums = req.getAttributeNames();
			}
			while (enums.hasMoreElements()) {
				String name = (String) enums.nextElement();
				String tmpValue = Tools.getReqParam(req, name);
				if(name.equals(f.getName())){
					//格式化
					switch (f.getType().getSimpleName()) {
					case "int":
						value = Tools.parseInt(tmpValue);
						break;
					case "long":
						value = Tools.parseLong(tmpValue);
						break;
					case "float":
						value = Tools.parseFloat(tmpValue);
						break;
					case "double":
						value = Tools.parseDouble(tmpValue);
						break;
					case "boolean":
						value = Tools.parseBoolean(tmpValue);
						break;
					case "Date":
						value = new Date(Tools.parseLong(tmpValue));
						break;
					default:
						value = tmpValue;
						break;
					}
					for (Method m : methods) {
						if(m.getName().startsWith("set") && m.getName().substring(3).equalsIgnoreCase(name)){
							try {
								m.invoke(obj, value);
							} catch (Exception e) {
								e.printStackTrace();
							}
						}
					}
				}
			}
		}
		return obj;
	}
	
	
	@SuppressWarnings("unchecked")
	public static <T> Class<T> getObejctClass(Class<?> clzz){
		Type type = clzz.getGenericSuperclass();
		Class<T> clss = null;
		try {
			Class<?>[] clsses = Tools.getGenericClass((ParameterizedType) type);
			clss = (Class<T>) clsses[0];
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return clss;
	}
	
	
	public static <T> Predicate<T> distinctByKey(Function<? super T, ?> keyExtractor) {
    	Map<Object,Boolean> seen = new ConcurrentHashMap<>();
    	return t -> seen.putIfAbsent(keyExtractor.apply(t), Boolean.TRUE) == null;
	}


	public static String newUUId() {
		return UUID.randomUUID().toString().replace("-", "");
	}
	
	public static String newUUIdMd5() {
		return Tools.md5(UUID.randomUUID().toString());
	}
	
	public static String newId(String suffix) {
		int random = new Random().nextInt(10000);
		String str = random+"";
		for (int i = 0; i <  4 - str.length(); i++) {
			str = "0" + str;
		}
		return suffix + DateTools.formatDate("yyyyMMddHHmmssSSS") + str;
	}

	public static long newSnowflakeId() {
		return SnowflakeIdWorker.generateId();
	}

	public static String newSnowflakeIdStr() {
		return String.valueOf(SnowflakeIdWorker.generateId());
	}
	
	public static byte[] compress(byte[] buff) throws IOException {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		GZIPOutputStream gzos = new GZIPOutputStream(baos);
		gzos.write(buff);
		gzos.close();
		baos.close();
		return baos.toByteArray();
	}
	
	public static byte[] uncompress(byte[] buff) throws IOException {
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		ByteArrayInputStream bais = new ByteArrayInputStream(buff);
		GZIPInputStream gzis = new GZIPInputStream(bais);
		byte[] temp = new byte[1024];
		int len = 0;
		while ((len = gzis.read(temp)) >= 0) {
			out.write(temp, 0, len);
		}
		byte[] receive = out.toByteArray();
		gzis.close();
		bais.close();
		return receive;
	}
	
	public static void main(String[] args) throws IOException {
		byte[] b  = new byte[1000];
		for (int i = 0;i < b.length;++i) {
			b[i] = 65;
		}
		byte[] buff = compress(b);
		System.out.println(buff.length);
		
		byte[] c = uncompress(buff);
		System.out.println(c.length);
	}
}
