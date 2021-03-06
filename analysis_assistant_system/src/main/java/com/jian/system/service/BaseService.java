package com.jian.system.service;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.jian.annotation.Excel;
import com.jian.annotation.PrimaryKey;
import com.jian.annotation.Table;
import com.jian.system.config.Config;
import com.jian.system.dao.BaseMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.User;
import com.jian.system.utils.Utils;
import com.jian.tools.core.DateTools;
import com.jian.tools.core.Tools;


public class BaseService<T, M extends BaseMapper<T>> {

	@Autowired
	protected M baseMapper;
	@Autowired
	private Config config;

	//TODO ----------------------------------------------------------------------insert

	@TargetDataSource
	public int insert(T obj, User user) {
		fillPrimaryKey(obj);
		fillDate(config.autoFillDateForAdd, obj);
		String tableName =  getTableName();
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}
	
	@TargetDataSource
	public int batchInsert(List<T> objs, User user) {
		String tableName =  getTableName();
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		for (T t : objs) {
			//fillPrimaryKey(t);
			//fillDate(config.autoFillDateForAdd, t);
			list.add(Tools.parseObjectToMap(t));
		}
		if(list.size() == 0) {
			return 0;
		}
		return baseMapper.batchInsert(tableName, list);
	}
	
	//TODO ----------------------------------------------------------------------delete

	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.delete(tableName, condition);
	}

	//TODO ----------------------------------------------------------------------update

	@TargetDataSource
	public int update(T obj, User user) {
		List<String> pkeys = getPrimaryKeys();
		Map<String, Object> value = Tools.parseObjectToMap(obj);
		Map<String, Object> condition = new HashMap<String, Object>();
		for (String string : pkeys) {
			condition.put(string, value.get(string));
			value.remove(string);
		}
		condition = condition != null && condition.isEmpty() ? null : condition;
		value = value != null && value.isEmpty() ? null : value;
		return update(value, condition, user);
	}

	@TargetDataSource
	public int update(Map<String, Object> value, Map<String, Object> condition, User user) {
		fillDate(config.autoFillDateForModify, value);
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.update(tableName, value, condition);
	}


	/*@TargetDataSource
	public int batchUpdate(List<T> objs) {
		String tableName =  getTableName();
		List<Map<String, Object>> list = new ArrayList<>();
		for (T obj : objs) {
			Map<String, Object> value = Tools.parseObjectToMap(obj);
			list.add(value);
		}
		return baseMapper.batchUpdate(tableName, list);
	}*/

	//TODO ----------------------------------------------------------------------select

	@TargetDataSource
	public T selectOne(Map<String, Object> condition) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectOne(tableName, condition);
	}
	
	/*@TargetDataSource
	public T selectOne(Map<String, Object> condition) {
		List<T> list = selectList(condition);
		if(list == null || list.size() == 0) {
			return null;
		}
		return list.get(0);
	}*/
	
	@TargetDataSource
	public Map<String, Object> selectOneMap(List<String> columns, Map<String, Object> condition) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectOneMap(tableName, columns, condition);
	}

	@TargetDataSource
	public List<T> selectAll() {
		String tableName =  getTableName();
		return baseMapper.selectAll(tableName);
	}

	@TargetDataSource
	public List<T> selectList(Map<String, Object> condition) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectList(tableName, condition);
	}

	@TargetDataSource
	public List<Map<String, Object>> selectListMap(List<String> columns, Map<String, Object> condition) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectListMap(tableName, columns, condition);
	}

	@TargetDataSource
	public List<T> selectPage(Map<String, Object> condition, int start, int rows) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.selectPage(tableName, condition, start, rows);
	}

	//TODO ----------------------------------------------------------------------size

	@TargetDataSource
	public long size(Map<String, Object> condition) {
		String tableName =  getTableName();
		condition = condition != null && condition.isEmpty() ? null : condition;
		return baseMapper.size(tableName, condition);
	}
	
	@TargetDataSource
	public long sizeAll() {
		String tableName =  getTableName();
		return baseMapper.sizeAll(tableName);
	}

	//TODO ----------------------------------------------------------------------Tools
	
	//获取泛型注解的table name。
	public String getTableName(){
		String tableName = "";
		Class<?> clss = Utils.getObejctClass(getClass());
		if(clss != null){
			if(clss.isAnnotationPresent(Table.class)){
				tableName = clss.getAnnotation(Table.class).value();
			}
		}
		return tableName;
	}

	public List<String> getPrimaryKeys(){
		Class<?> clss = Utils.getObejctClass(getClass());
		if(clss == null){
			return new ArrayList<String>();
		}
		return Utils.getPrimaryKeys(clss);
	}
	
	private Class<T> getObejctClass(){
		return Utils.getObejctClass(getClass());
	}
	
	private String getGetMethodName(Field f) {
		//return "get"+f.getName().substring(0, 1).toUpperCase() + f.getName().substring(1);
		return "get"+f.getName();
	}
	private String getSetMethodName(Field f) {
		//return "set"+f.getName().substring(0, 1).toUpperCase() + f.getName().substring(1);
		return "set"+f.getName();
	}
	
	/**
	 * 填充日期
	 * @param fillCondition  格式 “,xxxx,xxxx,xxxx,”
	 * @param obj 对象
	 */
	private void fillDate(String fillCondition, T obj){
		if(Tools.isNullOrEmpty(fillCondition)){
			return;
		}
		Field[] fields = Tools.getFields(obj.getClass());
		for (Field f : fields) {
			if(f.isAnnotationPresent(Excel.class)){
				Excel excel = f.getAnnotation(Excel.class);
				//日期格式化
				String[] name = excel.name().replace("：", " ").replace(":", " ").replace("\t", " ").replace("\n", " ").split(" ");
				String dateName = name[0];
				String dateType = name.length < 2 ? "yyyy-MM-dd HH:mm:ss" : name[1];
				//匹配  如：日期
				if(fillCondition.toLowerCase().indexOf(","+dateName.toLowerCase()+",") != -1 ){
					try {
						String getName = getGetMethodName(f);
						String setName = getSetMethodName(f);
						Method getm = Tools.findMethod(obj.getClass(), getName);
						Method setm = Tools.findMethod(obj.getClass(), setName, f.getType());
						Object value =  getm.invoke(obj);
						//如果不为空，不填充
						if(value == null){
							switch (f.getType().getSimpleName()) {
							case "String":
								setm.invoke(obj, DateTools.formatDate(dateType));
								break;
							case "Date":
								setm.invoke(obj, new Date());
								break;
							default:
								break;
							}
							
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			
		}
	}
	
	/**
	 * 填充日期
	 * @param fillCondition  格式 “,xxxx,xxxx,xxxx,”
	 * @param obj 对象
	 */
	private void fillDate(String fillCondition, Map<String, Object> valus){
		if(Tools.isNullOrEmpty(fillCondition)){
			return;
		}
		Field[] fields = Tools.getFields(getObejctClass());
		for (Field f : fields) {
			if(f.isAnnotationPresent(Excel.class)){
				Excel excel = f.getAnnotation(Excel.class);
				//日期格式化
				String[] name = excel.name().replace("：", " ").replace(":", " ").replace("\t", " ").replace("\n", " ").split(" ");
				String dateName = name[0];
				String dateType = name.length < 2 ? "yyyy-MM-dd HH:mm:ss" : name[1];
				//匹配  如：日期
				if(fillCondition.toLowerCase().indexOf(","+dateName.toLowerCase()+",") != -1 ){
					try {
						Object value =  valus.get(f.getName());
						//如果不为空，不填充
						if(value == null){
							switch (f.getType().getSimpleName()) {
							case "String":
								valus.put(f.getName(), DateTools.formatDate(dateType));
								break;
							case "Date":
								valus.put(f.getName(), new Date());
								break;
							default:
								break;
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
			
		}
	}
	
	/**
	 * 填充主键
	 * @param obj 对象
	 */
	private void fillPrimaryKey(T obj){
		Field[] fields = Tools.getFields(obj.getClass());
		for (Field f : fields) {
			if(f.isAnnotationPresent(PrimaryKey.class)){
				PrimaryKey key = f.getAnnotation(PrimaryKey.class);
				switch (key.type()) {
				case UUID:
					//处理主键为uuid、并且String类型的
					if("String".equals(f.getType().getSimpleName())){
						try {
							String getName = getGetMethodName(f);
							String setName = getSetMethodName(f);
							Method getm = Tools.findMethod(obj.getClass(), getName);
							Method setm = Tools.findMethod(obj.getClass(), setName, f.getType());
							Object value =  getm.invoke(obj);
							//如果主键为空,自动创建一个md5的uuid
							if(value == null){
								setm.invoke(obj, Utils.newUUId());
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
					break;
				case NORMAL:
					try {
						String getName = getGetMethodName(f);
						String setName = getSetMethodName(f);
						Method getm = Tools.findMethod(obj.getClass(), getName);
						Method setm = Tools.findMethod(obj.getClass(), setName, f.getType());
						Object value =  getm.invoke(obj);
						//如果主键为空,自动创建一个md5的uuid
						if(value == null){
							switch (f.getType().getSimpleName()) {
							case "String":
								setm.invoke(obj, Utils.newSnowflakeIdStr());
								break;
							case "long":
							case "Long":
								setm.invoke(obj, Utils.newSnowflakeId());
								break;
							default:
								break;
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					break;
					
				case AUTO_INCREMENT:
					
					break;

				default:
					break;
				}
			}
		}
	}
	
	
}
