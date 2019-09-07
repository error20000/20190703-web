
alter table "tBase_Message" add ( "sMsg_Reason" NVARCHAR2(64));

alter table "tBase_Dict" modify ( "sDict_Name" NVARCHAR2(255));


INSERT INTO "tBase_DictType" VALUES ('108', 'StoreMapIcon', '地图图标仓库', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('804', 'MsgReason', '消息原因', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('204', 'EquipIcon', '器材ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('803', 'MsgLabel', '消息自定义标签', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('801', 'MsgType', '消息类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('802', 'MsgStatus', '消息状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('101', 'AidStation', '航标站', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('102', 'AidType', '航标种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('103', 'AidLighting', '灯质明灭', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('104', 'AidMark', '航标设置', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('105', 'AidIcon', '航标ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('201', 'EquipType', '器材类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('202', 'EquipStatus', '器材状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('601', 'SystemLogType', '系统日志类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('203', 'EquipLogType', '器材日志类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('106', 'AidStatus', '航标状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('107', 'MapIcon', '地图图标航标', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('205', 'EquipAisMMSIX', 'AIS MMSIX号', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('206', 'EquipRadarNO', '雷达应答器编码', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('207', 'EquipRadarBand', '雷达应答器波段', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('208', 'EquipBatteryType', '蓄电池种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('209', 'EquipTelemetryMode', '遥控遥测方式', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('210', 'EquipSolarEnergyType', '太阳能板种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('211', 'EquipManufacturer', '生产厂家', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('212', 'EquipLampTelemetry', '遥测接口类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('213', 'EquipLampType', '灯器类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('214', 'EquipLampLens', '透镜形状', NULL, NULL, NULL, NULL, '1');
