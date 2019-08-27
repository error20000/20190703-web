package com.jian.system.config;

public class Constant {

	//器材
	public static final String EquipType_AIS = "EquipAIS"; //AIS
	public static final String EquipType_Radar = "EquipRadar"; //雷达应答器
	public static final String EquipType_Telemetry = "EquipTelemetry"; //遥测遥控
	public static final String EquipType_Battery = "EquipBattery"; //蓄电池	
	public static final String EquipType_SolarEnergy = "EquipSolarEnergy"; //太阳能板
	public static final String EquipType_SpareLamp = "EquipSpareLamp"; //备灯器	
	public static final String EquipType_ViceLamp = "EquipViceLamp"; //副灯器	
	public static final String EquipType_Lamp= "EquipLamp"; //灯器
	
	public static final String EquipStatus_0 = "0"; //空闲
	public static final String EquipStatus_1 = "1"; //入库
	public static final String EquipStatus_2 = "2"; //出库
	public static final String EquipStatus_3 = "3"; //拆除
	public static final String EquipStatus_4 = "4"; //运输
	public static final String EquipStatus_5 = "5"; //待检测	
	public static final String EquipStatus_6 = "6"; //检测
	public static final String EquipStatus_7 = "7"; //维修
	public static final String EquipStatus_8 = "8"; //报废
	public static final String EquipStatus_9 = "9"; //使用
	public static final String EquipStatus_10 = "10"; //异常
	
	public static final String EquipLogType_0 = "0"; //空闲中	
	public static final String EquipLogType_1 = "1"; //仓库待用
	public static final String EquipLogType_2 = "2"; //出库中
	public static final String EquipLogType_3 = "3"; //拆除
	public static final String EquipLogType_4 = "4"; //运输中
	public static final String EquipLogType_5 = "5"; //待检测中
	public static final String EquipLogType_6 = "6"; //检测中
	public static final String EquipLogType_7 = "7"; //维修中	
	public static final String EquipLogType_8 = "8"; //报废
	public static final String EquipLogType_9 = "9"; //使用中	
	public static final String EquipLogType_10 = "10"; //异常中	
	
	
	//消息
	public static final String MsgType_1 = "1"; //库存不足
	public static final String MsgType_1_Msg = "库存不足";
	public static final String MsgType_2 = "2"; //航标异常
	public static final String MsgType_2_Msg = "航标异常";
	public static final String MsgType_3 = "3"; //器材异常
	public static final String MsgType_3_Msg = "器材异常";
	
	public static final String MsgStatus_1 = "1"; //未读
	public static final String MsgStatus_2 = "2"; //已读
	public static final String MsgStatus_3 = "3"; //待处理
	public static final String MsgStatus_4 = "4"; //已处理
}
