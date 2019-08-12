package com.jian.system.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jian.system.dao.EquipMapper;
import com.jian.system.datasource.TargetDataSource;
import com.jian.system.entity.AidEquip;
import com.jian.system.entity.Equip;
import com.jian.system.entity.EquipLog;
import com.jian.system.entity.User;
import com.jian.system.exception.ServiceException;
import com.jian.system.utils.Utils;
import com.jian.tools.core.MapTools;
import com.jian.tools.core.Tips;
import com.jian.tools.core.Tools;

@Service
public class EquipService extends BaseService<Equip, EquipMapper> {

	@Autowired
	private NfcService nfcService;
	@Autowired
	private EquipLogService logService;
	@Autowired
	private AidEquipService aidEquipService;
	
	
	@Transactional
	@TargetDataSource
	public int insert(Equip obj, User user, String ip) {
		if(obj == null) {
			return 0;
		}
		obj.setsEquip_ID(Utils.newSnowflakeIdStr());
		obj.setdEquip_CreateDate(new Date());
		obj.setsEquip_Status("0"); //空闲
		if(!Tools.isNullOrEmpty(obj.getsEquip_StoreLv1())) {
			obj.setsEquip_Status("1"); // 入库    dict (EquipStatus)
			//器材仓库不为空，入库操作
			EquipLog log = new EquipLog();
			log.setsELog_ID(Utils.newSnowflakeIdStr());
			log.setdELog_CreateDate(new Date());
			log.setsELog_EquipID(obj.getsEquip_ID());
			log.setsELog_IP(ip);
			if(user != null) {
				log.setsELog_UserID(user.getsUser_ID());
			}
			log.setsELog_Type("1"); // 仓库待用    dict (EquipLogType)
			log.setsELog_Describe("器材入库");
			log.setsELog_Remarks("");
			logService.insert(log, user);
		}
		String tableName =  getTableName();
		return baseMapper.insert(tableName, Tools.parseObjectToMap(obj));
	}
	
	@TargetDataSource
	public int update(Equip obj, User user, String ip) {
		List<String> pkeys = getPrimaryKeys();
		Map<String, Object> value = Tools.parseObjectToMap(obj);
		Map<String, Object> condition = new HashMap<String, Object>();
		for (String string : pkeys) {
			condition.put(string, value.get(string));
			value.remove(string);
		}
		condition = condition.isEmpty() ? null : condition;
		value = value.isEmpty() ? null : value;
		return update(value, condition, user, ip);
	}

	@TargetDataSource
	public int update(Map<String, Object> value, Map<String, Object> condition, User user, String ip) {

		String tableName =  getTableName();
		condition = condition.isEmpty() ? null : condition;
		
		Equip old = selectOne(condition);
		if(old == null) {
			return 0;
		}
		
		if(Tools.isNullOrEmpty(old.getsEquip_StoreLv1())
				&& !"".equals(value.get("sEquip_StoreLv1"))) {
			//器材仓库不为空，入库操作
			EquipLog log = new EquipLog();
			log.setsELog_ID(Utils.newSnowflakeIdStr());
			log.setdELog_CreateDate(new Date());
			log.setsELog_EquipID(old.getsEquip_ID());
			log.setsELog_IP(ip);
			if(user != null) {
				log.setsELog_UserID(user.getsUser_ID());
			}
			log.setsELog_Type("1"); // 仓库待用    dict (EquipLogType)
			log.setsELog_Describe("器材入库");
			log.setsELog_Remarks("");
			logService.insert(log, user);
		}
		
		return baseMapper.update(tableName, value, condition);
	}



	@Transactional
	@TargetDataSource
	public int delBind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition); //解除绑定
		return nfcService.rebind(sNfc_ID); //修改状态
	}

	@Transactional
	@TargetDataSource
	public int bind(String id, String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", sNfc_ID);
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", id);
		baseMapper.update(getTableName(), value, condition); //绑定
		return nfcService.bind(sNfc_ID); //修改状态
	}
	

	@Transactional
	@TargetDataSource
	public int rebind(String sNfc_ID) {
		Map<String, Object> value = new HashMap<String, Object>();
		value.put("sEquip_NfcID", "");
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_NfcID", sNfc_ID);
		return baseMapper.update(getTableName(), value, condition); //解除绑定
	}
	
	@TargetDataSource
	public List<Equip> unbind() {
		return baseMapper.unbind();
	}


	@Override
	@Transactional
	@TargetDataSource
	public int delete(Map<String, Object> condition, User user) {
		condition = condition.isEmpty() ? null : condition;
		String tableName =  getTableName();
		Equip old = baseMapper.selectOne(tableName, condition);
		//删除NFC
		if(!Tools.isNullOrEmpty(old.getsEquip_NfcID())) {
			nfcService.rebind(old.getsEquip_NfcID()); //修改状态
		}
		//删除航标
		if(!Tools.isNullOrEmpty(old.getsEquip_AidID())) {
			aidEquipService.delete(MapTools.custom().put("sAidEquip_EquipID", old.getsEquip_ID()).build(), user);
		}
		//删除日志
		logService.delete(MapTools.custom().put("sELog_EquipID", old.getsEquip_ID()).build(), user);
		//删除详情
		//to do 
		return baseMapper.delete(tableName, condition); //删除
	}
	
	@TargetDataSource
	public int isStore(String sStore_ID) {
		return baseMapper.isStore(sStore_ID);
	}
	
	@TargetDataSource
	public List<EquipLog> history(String sEquip_ID){
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR106, "sEquip_ID");
		}
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sELog_EquipID", sEquip_ID);
		return logService.selectList(condition);
	}


	//TODO ----------------------------------------------------------------------器材操作
	
	@TargetDataSource
	@Transactional
	public int inStore(Equip equip, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(equip == null) {
			throw new ServiceException(Tips.ERROR101, "器材不能为空");
		}
		String sEquip_ID = equip.getsEquip_ID();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可入库
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("1".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已入库");
		}
		if("8".equals(test.getsEquip_Status())) { //报废
			throw new ServiceException(Tips.ERROR101, "器材已报废，不可入库");
		}
		if("9".equals(test.getsEquip_Status())) { //使用中
			throw new ServiceException(Tips.ERROR101, "器材使用者，不可入库");
		}
		equip.setsEquip_Status("1"); // 入库
		values.put("sEquip_Status", equip.getsEquip_Status());
		values.put("sEquip_StoreLv1", equip.getsEquip_StoreLv1());
		values.put("sEquip_StoreLv2", equip.getsEquip_StoreLv2());
		values.put("sEquip_StoreLv3", equip.getsEquip_StoreLv3());
		values.put("sEquip_StoreLv4", equip.getsEquip_StoreLv4());
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("1"); // 仓库待用
		log.setsELog_Describe("器材入库");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}

	@TargetDataSource
	@Transactional
	public int outStore(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可出库
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("2".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已出库");
		}
		if(!"1".equals(test.getsEquip_Status())) { //不再仓库中
			throw new ServiceException(Tips.ERROR101, "器材不在仓库中，不可出库");
		}
		//出库
		values.put("sEquip_Status", "2");
		values.put("sEquip_StoreLv1", " ");
		values.put("sEquip_StoreLv2", " ");
		values.put("sEquip_StoreLv3", " ");
		values.put("sEquip_StoreLv4", " ");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("2"); // 出库
		log.setsELog_Describe("器材出库");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int remove(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可拆除
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("3".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已拆除");
		}
		if(!"9".equals(test.getsEquip_Status())) { //拆除
			throw new ServiceException(Tips.ERROR101, "器材未使用，不可拆除");
		}
		//拆除
		values.put("sEquip_Status", "3");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("3"); // 拆除
		log.setsELog_Describe("器材拆除");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int transport(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可运输
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("4".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已拆除");
		}
		if("9".equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可运输");
		}
		//运输
		values.put("sEquip_Status", "4");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("4"); // 运输
		log.setsELog_Describe("器材运输中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int toBeTest(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可待检测
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("5".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已待检测中");
		}
		if("9".equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可待检测");
		}
		//待检测
		values.put("sEquip_Status", "5");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("5"); // 待检测
		log.setsELog_Describe("器材待检测中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int check(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可检测
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("6".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已检测中");
		}
		if("9".equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可检测");
		}
		//检测
		values.put("sEquip_Status", "6");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("6"); // 检测
		log.setsELog_Describe("器材检测中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int repair(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可维修
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("7".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已维修");
		}
		if("9".equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可维修");
		}
		//维修
		values.put("sEquip_Status", "7");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("7"); // 维修
		log.setsELog_Describe("器材维修中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}



	@TargetDataSource
	@Transactional
	public int dump(String sEquip_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可维修
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("8".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已报废");
		}
		if("9".equals(test.getsEquip_Status())) { //使用
			throw new ServiceException(Tips.ERROR101, "器材使用中，不可报废");
		}
		//报废
		values.put("sEquip_Status", "8");
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("8"); // 报废
		log.setsELog_Describe("器材报废");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		return baseMapper.update(tableName, values, condition);
	}


	@TargetDataSource
	@Transactional
	public int useToAid(String sEquip_ID, String sAid_ID, String remarks, User user, String ip){
		String tableName =  getTableName();
		if(Tools.isNullOrEmpty(sEquip_ID)) {
			throw new ServiceException(Tips.ERROR206, "sEquip_ID");
		}
		if(Tools.isNullOrEmpty(sAid_ID)) {
			throw new ServiceException(Tips.ERROR206, "sAid_ID");
		}
		Map<String, Object> values = new HashMap<String, Object>();
		//查询器材是否可使用
		Map<String, Object> condition = new HashMap<String, Object>();
		condition.put("sEquip_ID", sEquip_ID);
		Equip test = baseMapper.selectOne(tableName, condition);
		if(test == null) {
			throw new ServiceException(Tips.ERROR106, "器材");
		}
		if("9".equals(test.getsEquip_Status())) {
			throw new ServiceException(Tips.ERROR101, "器材已使用");
		}
		if("8".equals(test.getsEquip_Status())) { //报废
			throw new ServiceException(Tips.ERROR101, "器材已报废，不可使用");
		}
		if("1".equals(test.getsEquip_Status())) { //仓库
			throw new ServiceException(Tips.ERROR101, "器材未出库，不可使用");
		}
		//使用
		values.put("sEquip_Status", "9");
		values.put("sEquip_AidID", sAid_ID);
		//日志
		EquipLog log = new EquipLog();
		log.setsELog_ID(Utils.newSnowflakeIdStr());
		log.setdELog_CreateDate(new Date());
		log.setsELog_EquipID(sEquip_ID);
		log.setsELog_IP(ip);
		if(user != null) {
			log.setsELog_UserID(user.getsUser_ID());
		}
		log.setsELog_Type("9"); // 使用
		log.setsELog_Describe("器材使用中");
		log.setsELog_Remarks(remarks);
		logService.insert(log, user);
		//保存
		AidEquip aidEquip = new AidEquip();
		aidEquip.setsAidEquip_ID(Utils.newSnowflakeIdStr());
		aidEquip.setsAidEquip_AidID(sAid_ID);
		aidEquip.setsAidEquip_EquipID(sEquip_ID);
		aidEquipService.insert(aidEquip, user);
		return baseMapper.update(tableName, values, condition);
	}
}
