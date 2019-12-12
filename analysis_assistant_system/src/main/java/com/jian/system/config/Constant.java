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
	public static final String MsgType_4 = "4"; //自定义消息
	public static final String MsgType_4_Msg = "自定义消息";
	public static final String MsgType_5 = "5"; 
	public static final String MsgType_5_Msg = "器材寿命不足";
	public static final String MsgType_6 = "6"; 
	public static final String MsgType_6_Msg = "航标恢复正常";
	
	public static final String MsgStatus_1 = "1"; //未读
	public static final String MsgStatus_2 = "2"; //已读
	public static final String MsgStatus_3 = "3"; //待处理
	public static final String MsgStatus_4 = "4"; //已处理
	
	//数据字典
	public static final String DictType_MapIcon = "MapIcon"; //	地图图标航标	
	public static final String DictType_StoreMapIcon = "StoreMapIcon"; //	地图图标仓库	
	public static final String DictType_SystemLogType = "SystemLogType"; //	系统日志类型	
	
	public static final String DictType_MsgLabel = "MsgLabel"; //	消息自定义标签	
	public static final String DictType_MsgType = "MsgType"; //	消息类型	
	public static final String DictType_MsgStatus = "MsgStatus"; //	消息状态	
	public static final String DictType_MsgReason = "MsgReason"; //	消息原因	
	public static final String DictType_MsgSource = "MsgSource"; //	消息来源	
	
	public static final String DictType_AidStation = "AidStation"; //	航标站	
	public static final String DictType_AidType = "AidType"; //	航标种类	
	public static final String DictType_AidLighting = "AidLighting"; //	灯质明灭	
	public static final String DictType_AidMark = "AidMark"; //	航标设置	
	public static final String DictType_AidIcon = "AidIcon"; //	航标ICON	
	public static final String DictType_AidStatus = "AidStatus"; //	航标状态	
	
	public static final String DictType_EquipType = "EquipType"; //	器材类型	
	public static final String DictType_EquipStatus = "EquipStatus"; //	器材状态	
	public static final String DictType_EquipLogType = "EquipLogType"; //	器材日志类型	
	public static final String DictType_EquipIcon = "EquipIcon"; //	器材ICON	
	public static final String DictType_EquipAisMMSIX = "EquipAisMMSIX"; //	AIS MMSIX号	
	public static final String DictType_EquipRadarNO = "EquipRadarNO"; //	雷达应答器编码	
	public static final String DictType_EquipRadarBand = "EquipRadarBand"; //	雷达应答器波段	
	public static final String DictType_EquipBatteryType = "EquipBatteryType"; //	蓄电池种类	
	public static final String DictType_EquipTelemetryMode = "EquipTelemetryMode"; //	遥控遥测方式	
	public static final String DictType_EquipSolarEnergyType = "EquipSolarEnergyType"; //	太阳能板种类	
	public static final String DictType_EquipManufacturer = "EquipManufacturer"; //	生产厂家	
	public static final String DictType_EquipLampTelemetry = "EquipLampTelemetry"; //	遥测接口类型	
	public static final String DictType_EquipLampType = "EquipLampType"; //	灯器类型	
	public static final String DictType_EquipLampLens = "EquipLampLens"; //	透镜形状	
	
	//航标
	public static final String AidStatus_Normal = "normal"; //	正常	
	public static final String AidStatus_Unusual = "unusual"; //	异常	
}
