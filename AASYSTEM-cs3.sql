/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1 aasystem
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : 127.0.0.1:1521
 Source Schema         : AASYSTEM

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 08/12/2019 23:05:42
*/


-- ----------------------------
-- Table structure for tBase_Aid
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Aid";
CREATE TABLE "AASYSTEM"."tBase_Aid" (
  "sAid_ID" NVARCHAR2(32) NOT NULL ,
  "sAid_Name" NVARCHAR2(64) ,
  "sAid_NO" NVARCHAR2(64) ,
  "lAid_Lat" NUMBER ,
  "lAid_Lng" NUMBER ,
  "sAid_Station" NVARCHAR2(64) ,
  "sAid_Type" NVARCHAR2(64) ,
  "sAid_Icon" NVARCHAR2(255) ,
  "dAid_BuildDate" DATE ,
  "dAid_DelDate" DATE ,
  "sAid_Lighting" NVARCHAR2(64) ,
  "sAid_Mark" NVARCHAR2(64) ,
  "sAid_NfcID" NVARCHAR2(32) ,
  "dAid_CreateDate" DATE ,
  "sAid_Status" NVARCHAR2(64) ,
  "lAid_LatDu" NUMBER ,
  "lAid_LatFen" NUMBER ,
  "lAid_LatMiao" NUMBER ,
  "lAid_LngDu" NUMBER ,
  "lAid_LngFen" NUMBER ,
  "lAid_LngMiao" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Name" IS '航标名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_NO" IS '航标编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_Lat" IS '纬度（°）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_Lng" IS '经度（°）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Station" IS '归属航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Type" IS '航标种类';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Icon" IS '航标图标';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."dAid_BuildDate" IS '始建时间';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."dAid_DelDate" IS '撤除时间';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Lighting" IS '灯质明灭';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Mark" IS '航标设置';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_NfcID" IS 'NFC标签ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."dAid_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Status" IS '航标状态';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_LatDu" IS '纬度（度）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_LatFen" IS '纬度（分）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_LatMiao" IS '纬度（秒）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_LngDu" IS '经度（度）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_LngFen" IS '经度（分）';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_LngMiao" IS '经度（秒）';

-- ----------------------------
-- Records of tBase_Aid
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('652886996334673920', '测试航标1', 'ceshi1', '0', '0', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-12-07 14:59:49', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', '0', '0', '0', '0', '0', '0');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('652887204934189056', '测试航标3', 'ceshi3', '0', '0', 'test6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-12-07 15:00:39', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', '0', '0', '0', '0', '0', '0');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('652887109199200256', '测试航标2', 'ceshi2', '0', '0', 'test6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-12-07 15:00:16', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', '0', '0', '0', '0', '0', '0');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('652978838258581504', '测试航标4', 'ceshi4', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-12-07 21:04:46', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tBase_AidEquip
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_AidEquip";
CREATE TABLE "AASYSTEM"."tBase_AidEquip" (
  "sAidEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sAidEquip_AidID" NVARCHAR2(32) ,
  "sAidEquip_EquipID" NVARCHAR2(32) ,
  "dAidEquip_CreateDate" DATE 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."sAidEquip_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."sAidEquip_AidID" IS '航标ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."sAidEquip_EquipID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."dAidEquip_CreateDate" IS '绑定时间';

-- ----------------------------
-- Table structure for tBase_AidMapIcon
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_AidMapIcon";
CREATE TABLE "AASYSTEM"."tBase_AidMapIcon" (
  "sAidIcon_ID" NVARCHAR2(32) NOT NULL ,
  "sAidIcon_Status" NVARCHAR2(64) ,
  "sAidIcon_StatusIcon" NVARCHAR2(64) ,
  "sAidIcon_AidID" NVARCHAR2(32) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_AidMapIcon"."sAidIcon_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidMapIcon"."sAidIcon_Status" IS '航标状态';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidMapIcon"."sAidIcon_StatusIcon" IS '状态图标';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidMapIcon"."sAidIcon_AidID" IS '航标ID';

-- ----------------------------
-- Table structure for tBase_AidStation
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_AidStation";
CREATE TABLE "AASYSTEM"."tBase_AidStation" (
  "sAidStation_ID" NVARCHAR2(32) NOT NULL ,
  "lAidStation_MapLat" NUMBER ,
  "lAidStation_MapLng" NUMBER ,
  "lAidStation_MapLevel" NUMBER ,
  "sAidStation_Station" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_AidStation"."sAidStation_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidStation"."lAidStation_MapLat" IS '航标站纬度';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidStation"."lAidStation_MapLng" IS '航标站经度';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidStation"."lAidStation_MapLevel" IS '航标站默认级别';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidStation"."sAidStation_Station" IS '航标站';

-- ----------------------------
-- Records of tBase_AidStation
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_AidStation" VALUES ('653347190952951808', '121', '121', '13', 'test');
INSERT INTO "AASYSTEM"."tBase_AidStation" VALUES ('653349001613017088', '1', '1', '0', 'test2');
INSERT INTO "AASYSTEM"."tBase_AidStation" VALUES ('653349889454899200', '122', '122', '9', 'test4');

-- ----------------------------
-- Table structure for tBase_AidTypeMapIcon
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_AidTypeMapIcon";
CREATE TABLE "AASYSTEM"."tBase_AidTypeMapIcon" (
  "sAidTypeIcon_ID" NVARCHAR2(32) NOT NULL ,
  "sAidTypeIcon_Status" NVARCHAR2(64) ,
  "sAidTypeIcon_StatusIcon" NVARCHAR2(64) ,
  "sAidTypeIcon_Type" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_AidTypeMapIcon"."sAidTypeIcon_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidTypeMapIcon"."sAidTypeIcon_Status" IS '种类状态';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidTypeMapIcon"."sAidTypeIcon_StatusIcon" IS '状态图标';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidTypeMapIcon"."sAidTypeIcon_Type" IS '种类编码';

-- ----------------------------
-- Table structure for tBase_App
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_App";
CREATE TABLE "AASYSTEM"."tBase_App" (
  "sApp_ID" NVARCHAR2(32) NOT NULL ,
  "sApp_Name" NVARCHAR2(10) ,
  "sApp_NO" NVARCHAR2(32) ,
  "sApp_SecretKey" NVARCHAR2(255) ,
  "lApp_StatusFlag" NUMBER ,
  "dApp_CreateDate" DATE ,
  "sApp_UserID" NVARCHAR2(32) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."sApp_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."sApp_Name" IS '应用名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."sApp_NO" IS '应用编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."sApp_SecretKey" IS '应用秘钥';
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."lApp_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."dApp_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_App"."sApp_UserID" IS '创建人ID';

-- ----------------------------
-- Table structure for tBase_AppMenu
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_AppMenu";
CREATE TABLE "AASYSTEM"."tBase_AppMenu" (
  "sAppMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sAppMenu_AppID" NVARCHAR2(32) ,
  "sAppMenu_MenuID" NVARCHAR2(32) ,
  "sAppMenu_MenuFunID" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_AppMenu"."sAppMenu_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AppMenu"."sAppMenu_AppID" IS '应用ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AppMenu"."sAppMenu_MenuID" IS '菜单ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AppMenu"."sAppMenu_MenuFunID" IS '菜单功能ID 多个逗号分隔';

-- ----------------------------
-- Table structure for tBase_Dict
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Dict";
CREATE TABLE "AASYSTEM"."tBase_Dict" (
  "sDict_ID" NVARCHAR2(32) NOT NULL ,
  "sDict_NO" NVARCHAR2(64) ,
  "sDict_Name" NVARCHAR2(255) ,
  "dDict_CreateDate" DATE ,
  "sDict_UserID" NVARCHAR2(32) ,
  "sDict_DictTypeNO" NVARCHAR2(64) ,
  "dDict_UpdateDate" DATE ,
  "sDict_UpdateUserID" NVARCHAR2(32) ,
  "lDict_SysFlag" NUMBER ,
  "sDict_Describe" NVARCHAR2(255) ,
  "sDict_Picture" NVARCHAR2(255) ,
  "sDict_Link" NVARCHAR2(255) ,
  "sDict_Color" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_NO" IS '字典编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Name" IS '字典名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."dDict_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_UserID" IS '创建人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_DictTypeNO" IS '字典分类编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."dDict_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_UpdateUserID" IS '更新人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."lDict_SysFlag" IS '系统默认  0：否，1：是';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Describe" IS '字典描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Picture" IS '字典图片、Icon';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Link" IS '字典链接';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Color" IS '字典颜色';

-- ----------------------------
-- Records of tBase_Dict
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107004', '2', '图标二', NULL, NULL, 'MapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('612997577486368768', '3', '图标3', TO_DATE('2019-08-19 13:13:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'MapIcon', TO_DATE('2019-08-19 16:18:58', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190819/201908191618549849864.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702002', 'EquipRadar', '雷达应答器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702003', 'EquipTelemetry', '遥测遥控', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702004', 'EquipBattery', '蓄电池', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702005', 'EquipSolarEnergy', '太阳能板', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702006', 'EquipSpareLamp', '备灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702007', 'EquipViceLamp', '副灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702008', 'EquipLamp', '灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('211001', 'test', '测试测试有限公司', NULL, NULL, 'EquipManufacturer', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('208001', '1', '锂电池', NULL, NULL, 'EquipBatteryType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('208002', '2', '铅酸电池', NULL, NULL, 'EquipBatteryType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('212001', '1', '测试遥测接口类型', NULL, NULL, 'EquipLampTelemetry', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('213001', '1', '测试灯器类型', NULL, NULL, 'EquipLampType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('214001', '1', '测试透镜形状', NULL, NULL, 'EquipLampLens', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('206001', '1', '测试雷达应答器编码', NULL, NULL, 'EquipRadarNO', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('207001', '1', '测试雷达应答器波段', NULL, NULL, 'EquipRadarBand', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('210001', '1', '测试太阳能板种类', NULL, NULL, 'EquipSolarEnergyType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('209001', '1', '测试遥控遥测方式', NULL, NULL, 'EquipTelemetryMode', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('205001', '1', '测试MMSIX号', NULL, NULL, 'EquipAisMMSIX', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2001', 'test2', '厦门2', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2003', 'test3', '厦门3', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2004', 'test4', '厦门4', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2005', 'test5', '厦门5', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2006', 'test6', '厦门6', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('805001', '1', '测试消息来源', NULL, NULL, 'MsgSource', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('60588447888729702411', 'test', '测试航标图标', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', TO_DATE('2019-10-31 16:52:52', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190927/201909271603299309258.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('108001', '1', '测试仓库地图图标', NULL, NULL, 'StoreMapIcon', NULL, NULL, '0', NULL, 'upload/20190927/201909271607049806875.jpeg', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801004', '4', '自定义消息', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('803001', '1', '测试消息自定义标签', NULL, NULL, 'MsgLabel', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('804001', '1', '测试消息原因', NULL, NULL, 'MsgReason', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801006', '6', '航标恢复正常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554688', 'SpecialMark', '专用标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145337360384', 'Safe Water', '安全水域标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554689', 'Light Vessel LANBY', '灯船', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554690', 'Preferred Channel Starboard Hand', '推荐航道右侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554691', 'Preferred Channel Port Hand', '推荐航道左侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554692', 'Starboard Hand Mark', '右侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554693', 'leftLabel', '左侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554694', 'Cardinal Mark N', '北方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554695', 'Cardinal Mark E', '东方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145345748992', 'Cardinal Mark S', '南方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145345748993', 'Cardinal Mark W', '西方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145345748994', 'Isolated Danger', '孤立危险物标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626157742175813633', 'EquipSinkingstone', '沉块', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626157742175813634', 'Equipbuoy', '浮体', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626157742175813635', 'EquipAnchorchain', '锚链', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801005', '5', '器材寿命不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801001', '1', '库存不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801002', '2', '航标异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801003', '3', '器材异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802001', '1', '未读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802002', '2', '已读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802003', '3', '待处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802004', '4', '已处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('605884478887297024', '12', '22', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', TO_DATE('2019-10-31 16:52:52', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20191031/201910311652453607714.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('3', 'test1', 'VQ(9)10S(0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35, 0.15+0.35, 0.15+0.35,0.15+0.35,0.15+5.85)
VQ(9)10S(0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35, 0.15+0.35, 0.15+0.35,0.15+0.35,0.15+5.85)', NULL, NULL, 'AidLighting', NULL, NULL, '0', '2+8', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('1', 'test', '灯塔', NULL, NULL, 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2', 'test', '厦门', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('4', 'test2', '互顿蓝黄3秒', NULL, NULL, 'AidLighting', NULL, NULL, '0', '蓝1.0+5.0+黄1.0+5.0', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('5', 'test', 'test航标设置', NULL, NULL, 'AidMark', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702001', 'EquipAIS', 'AIS', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700001', '1', '入库', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601001', 'query', '查询', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601002', 'update', '修改', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601003', 'delete', '删除', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601004', 'add', '新增', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601005', 'other', '其他', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601006', 'upload', '上传', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601007', 'login', '登录', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700002', '2', '出库', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700003', '3', '拆除', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700004', '4', '运输', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700005', '5', '待检测', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700006', '6', '检测', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700007', '7', '维修', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701001', '1', '仓库待用', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701002', '2', '出库中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701003', '3', '拆除', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701004', '4', '运输中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701005', '5', '待检测中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701006', '6', '检测中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701007', '7', '维修中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701008', '8', '报废', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700008', '8', '报废', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'EquipStatus', TO_DATE('2019-08-17 16:02:44', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, NULL, NULL, '#EB5426');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700009', '9', '使用', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701009', '9', '使用中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700010', '0', '空闲', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701010', '0', '空闲中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('106001', 'normal', '正常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107001', 'normal', '正常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, 'upload/20190817/201908171805306689781.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('106002', 'unusual', '异常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107002', 'unusual', '异常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190817/201908171805462081735.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700011', '10', '异常', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701011', '10', '异常中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107003', '1', '图标一', NULL, NULL, 'MapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);

-- ----------------------------
-- Table structure for tBase_DictType
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_DictType";
CREATE TABLE "AASYSTEM"."tBase_DictType" (
  "sDictType_ID" NVARCHAR2(32) NOT NULL ,
  "sDictType_NO" NVARCHAR2(64) ,
  "sDictType_Name" NVARCHAR2(64) ,
  "dDictType_CreateDate" DATE ,
  "sDictType_UserID" NVARCHAR2(32) ,
  "dDictType_UpdateDate" DATE ,
  "sDictType_UpdateUserID" NVARCHAR2(32) ,
  "lDictType_SysFlag" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_NO" IS '字典分类编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_Name" IS '字典分类名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."dDictType_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_UserID" IS '创建人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."dDictType_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_UpdateUserID" IS '更新人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."lDictType_SysFlag" IS '系统默认  0：否，1：是';

-- ----------------------------
-- Records of tBase_DictType
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('805', 'MsgSource', '消息来源', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('204', 'EquipIcon', '器材ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('803', 'MsgLabel', '消息自定义标签', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('801', 'MsgType', '消息类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('802', 'MsgStatus', '消息状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('101', 'AidStation', '航标站', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('102', 'AidType', '航标种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('103', 'AidLighting', '灯质明灭', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('104', 'AidMark', '航标设置', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('105', 'AidIcon', '航标ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('201', 'EquipType', '器材类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('202', 'EquipStatus', '器材状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('601', 'SystemLogType', '系统日志类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('203', 'EquipLogType', '器材日志类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('106', 'AidStatus', '航标状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('107', 'MapIcon', '地图图标航标', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('205', 'EquipAisMMSIX', 'AIS MMSIX号', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('206', 'EquipRadarNO', '雷达应答器编码', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('207', 'EquipRadarBand', '雷达应答器波段', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('208', 'EquipBatteryType', '蓄电池种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('209', 'EquipTelemetryMode', '遥控遥测方式', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('210', 'EquipSolarEnergyType', '太阳能板种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('211', 'EquipManufacturer', '生产厂家', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('212', 'EquipLampTelemetry', '遥测接口类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('213', 'EquipLampType', '灯器类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('214', 'EquipLampLens', '透镜形状', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('108', 'StoreMapIcon', '地图图标仓库', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('804', 'MsgReason', '消息原因', NULL, NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for tBase_Equip
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Equip";
CREATE TABLE "AASYSTEM"."tBase_Equip" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sEquip_Name" NVARCHAR2(64) ,
  "sEquip_StoreLv1" NVARCHAR2(32) ,
  "sEquip_StoreLv2" NVARCHAR2(32) ,
  "sEquip_StoreLv3" NVARCHAR2(32) ,
  "sEquip_StoreLv4" NVARCHAR2(32) ,
  "sEquip_Type" NVARCHAR2(64) ,
  "sEquip_Status" NVARCHAR2(64) ,
  "sEquip_NfcID" NVARCHAR2(32) ,
  "sEquip_AidID" NVARCHAR2(32) ,
  "dEquip_CreateDate" DATE ,
  "sEquip_NO" NVARCHAR2(64) ,
  "sEquip_Icon" NVARCHAR2(64) ,
  "sEquip_Manufacturer" NVARCHAR2(64) ,
  "sEquip_MModel" NVARCHAR2(255) ,
  "dEquip_ArrivalDate" DATE ,
  "dEquip_UseDate" DATE ,
  "dEquip_StoreDate" DATE ,
  "sEquip_MBrand" NVARCHAR2(255) ,
  "dEquip_DumpDate" DATE 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_Name" IS '器材名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_Type" IS '器材类型';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_Status" IS '器材状态';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_NfcID" IS 'NFC标签ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_AidID" IS '航标ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."dEquip_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_NO" IS '器材编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_Icon" IS '器材Icon';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_Manufacturer" IS '生产厂家';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_MModel" IS '厂方型号';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."dEquip_ArrivalDate" IS '到货日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."dEquip_UseDate" IS '使用日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."dEquip_StoreDate" IS '入库日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."sEquip_MBrand" IS '品牌';
COMMENT ON COLUMN "AASYSTEM"."tBase_Equip"."dEquip_DumpDate" IS '报废日期';

-- ----------------------------
-- Records of tBase_Equip
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('652887361553694720', 'test1', NULL, NULL, NULL, NULL, 'Equipbuoy', '0', NULL, NULL, TO_DATE('2019-12-07 15:01:17', 'SYYYY-MM-DD HH24:MI:SS'), 'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('652887440343695360', 'test2', NULL, NULL, NULL, NULL, 'Equipbuoy', '0', NULL, NULL, TO_DATE('2019-12-07 15:01:35', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('652887496031469568', 'test3', NULL, NULL, NULL, NULL, 'Equipbuoy', '0', NULL, NULL, TO_DATE('2019-12-07 15:01:49', 'SYYYY-MM-DD HH24:MI:SS'), 'test3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tBase_EquipLife
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_EquipLife";
CREATE TABLE "AASYSTEM"."tBase_EquipLife" (
  "sELife_ID" NVARCHAR2(32) NOT NULL ,
  "dELife_CreateDate" DATE ,
  "sELife_EquipType" NVARCHAR2(64) ,
  "sELife_EquipManufacturer" NVARCHAR2(64) ,
  "sELife_EquipMBrand" NVARCHAR2(255) ,
  "sELife_AidStation" NVARCHAR2(64) ,
  "lELife_Time" NUMBER ,
  "dELife_UpdateDate" DATE ,
  "lELife_Num" NUMBER ,
  "lELife_Total" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."dELife_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_EquipType" IS '器材分类';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_EquipManufacturer" IS '器材生产厂商';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_EquipMBrand" IS '器材品牌';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_AidStation" IS '器材航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."lELife_Time" IS '平均寿命（秒）';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."dELife_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."lELife_Num" IS '数量';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."lELife_Total" IS '总寿命';

-- ----------------------------
-- Table structure for tBase_EquipLog
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_EquipLog";
CREATE TABLE "AASYSTEM"."tBase_EquipLog" (
  "sELog_ID" NVARCHAR2(32) NOT NULL ,
  "sELog_Type" NVARCHAR2(64) ,
  "dELog_CreateDate" DATE ,
  "sELog_UserID" NVARCHAR2(32) ,
  "sELog_EquipID" NVARCHAR2(32) ,
  "sELog_Describe" NVARCHAR2(255) ,
  "sELog_Remarks" NVARCHAR2(255) ,
  "sELog_IP" NVARCHAR2(255) ,
  "sELog_StoreLv1" NVARCHAR2(32) ,
  "sELog_StoreLv2" NVARCHAR2(32) ,
  "sELog_StoreLv3" NVARCHAR2(32) ,
  "sELog_StoreLv4" NVARCHAR2(32) ,
  "sELog_AidID" NVARCHAR2(32) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_Type" IS '日志类型';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."dELog_CreateDate" IS '日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_UserID" IS '操作员ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_EquipID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_Describe" IS '日志描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_Remarks" IS '日志备注';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_IP" IS '操作员IP';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_AidID" IS '航标ID';

-- ----------------------------
-- Table structure for tBase_Group
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Group";
CREATE TABLE "AASYSTEM"."tBase_Group" (
  "sGroup_ID" NVARCHAR2(32) NOT NULL ,
  "sGroup_Name" NVARCHAR2(10) ,
  "lGroup_SysFlag" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Group"."sGroup_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Group"."sGroup_Name" IS '用户组名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Group"."lGroup_SysFlag" IS '系统默认  0：否，1：是';

-- ----------------------------
-- Records of tBase_Group
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('1', '超级管理组', '1');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('2', '管理员组', '1');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('3', '普通用户组', '1');

-- ----------------------------
-- Table structure for tBase_GroupMenu
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_GroupMenu";
CREATE TABLE "AASYSTEM"."tBase_GroupMenu" (
  "sGroupMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sGroupMenu_GroupID" NVARCHAR2(32) ,
  "sGroupMenu_MenuID" NVARCHAR2(32) ,
  "sGroupMenu_MenuFunID" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_GroupID" IS '用户组ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_MenuID" IS '菜单ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_MenuFunID" IS '菜单功能ID 多个逗号分隔';

-- ----------------------------
-- Table structure for tBase_Menu
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Menu";
CREATE TABLE "AASYSTEM"."tBase_Menu" (
  "sMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sMenu_Name" NVARCHAR2(10) ,
  "sMenu_Parent" NVARCHAR2(32) ,
  "sMenu_Url" NVARCHAR2(255) ,
  "sMenu_Icon" NVARCHAR2(255) ,
  "lMenu_StatusFlag" NUMBER ,
  "lMenu_Order" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."sMenu_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."sMenu_Name" IS '菜单名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."sMenu_Parent" IS '父级菜单Id';
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."sMenu_Url" IS '菜单地址';
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."sMenu_Icon" IS '菜单Icon';
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."lMenu_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "AASYSTEM"."tBase_Menu"."lMenu_Order" IS '排序';

-- ----------------------------
-- Records of tBase_Menu
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('800', '消息列表', NULL, 'msg.html', NULL, '1', '80');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('100', 'NFC标签', NULL, 'nfc.html', NULL, '1', '10');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('200', '仓库管理', NULL, 'store.html', NULL, '1', '20');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('300', '航标管理', NULL, NULL, NULL, '1', '30');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('700', '器材管理', NULL, 'equip.html', NULL, '1', '40');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('400', '地图展示', NULL, 'map.html', NULL, '1', '50');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('500', '统计分析', NULL, NULL, NULL, '1', '60');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('600', '系统管理', NULL, NULL, NULL, '1', '70');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('610', '数据字典', '600', NULL, NULL, '1', '80');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('611', '字典分类', '610', 'dictType.html', NULL, '1', '90');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('612', '字典配置', '610', 'dict.html', NULL, '1', '100');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('620', '系统日志', '600', 'slog.html', NULL, '1', '170');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('630', '应用注册', '600', 'app.html', NULL, '1', '120');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('640', '用户管理', '600', NULL, NULL, '1', '130');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('641', '用户组', '640', 'group.html', NULL, '1', '140');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('642', '用户', '640', 'user.html', NULL, '1', '150');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('650', '系统设置', '600', 'sys.html', NULL, '1', '160');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('330', '航标管理', '300', 'aid.html', NULL, '1', '31');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('320', '航标分类的地图图标', '300', 'aidTypeMapIcon.html', NULL, '1', '33');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('310', '航标的地图图标', '300', 'aidMapIcon.html', NULL, '1', '32');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('510', '首页', '500', 'statis/index.html', NULL, '1', '61');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('520', '器材统计分析', '500', 'statisEquip.html', NULL, '1', '62');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('530', '航标统计分析', '500', 'statisAid.html', NULL, '1', '63');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('540', '仓库统计分析', '500', 'statisStore.html', NULL, '1', '64');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('340', '航标站地图设置', '300', 'aidStation.html', NULL, '1', '34');

-- ----------------------------
-- Table structure for tBase_MenuFun
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_MenuFun";
CREATE TABLE "AASYSTEM"."tBase_MenuFun" (
  "sMFun_ID" NVARCHAR2(32) NOT NULL ,
  "sMFun_Name" NVARCHAR2(10) ,
  "sMFun_MenuID" NVARCHAR2(32) ,
  "sMFun_InterfaceID" NVARCHAR2(255) ,
  "lMFun_StatusFlag" NUMBER ,
  "sMFun_Describe" NVARCHAR2(255) ,
  "sMFun_Button" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."sMFun_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."sMFun_Name" IS '名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."sMFun_MenuID" IS '所属菜单Id';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."sMFun_InterfaceID" IS '接口ID  多个逗号分隔';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."lMFun_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."sMFun_Describe" IS '功能描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuFun"."sMFun_Button" IS '功能按钮';

-- ----------------------------
-- Records of tBase_MenuFun
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3308', '使用器材', '330', NULL, '1', NULL, 'sys:aid:equip');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642010', '分配仓库', '642', NULL, '1', NULL, 'sys:user:store');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2007', '库存预警', '200', NULL, '1', NULL, 'sys:store:limit');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('800001', '查询', '800', NULL, '1', NULL, 'sys:msg:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('620002', '导出', '620', NULL, '1', NULL, 'sys:slog:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3307', '分配用户', '330', NULL, '1', NULL, 'sys:aid:user');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1001', '查询', '100', NULL, '1', NULL, 'sys:nfc:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1002', '新增', '100', NULL, '1', NULL, 'sys:nfc:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1003', '修改', '100', NULL, '1', NULL, 'sys:nfc:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1004', '删除', '100', NULL, '1', NULL, 'sys:nfc:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1005', '导入', '100', NULL, '1', NULL, 'sys:nfc:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1006', '导出', '100', NULL, '1', NULL, 'sys:nfc:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2001', '查询', '200', NULL, '1', NULL, 'sys:store:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2002', '新增', '200', NULL, '1', NULL, 'sys:store:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2003', '修改', '200', NULL, '1', NULL, 'sys:store:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2004', '删除', '200', NULL, '1', NULL, 'sys:store:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2005', '导入', '200', NULL, '1', NULL, 'sys:store:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2006', '导出', '200', NULL, '1', NULL, 'sys:store:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3301', '查询', '330', NULL, '1', NULL, 'sys:aid:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3302', '新增', '330', NULL, '1', NULL, 'sys:aid:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3303', '修改', '330', NULL, '1', NULL, 'sys:aid:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3304', '删除', '330', NULL, '1', NULL, 'sys:aid:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3305', '导入', '330', NULL, '1', NULL, 'sys:aid:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3306', '导出', '330', NULL, '1', NULL, 'sys:aid:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('7001', '查询', '700', NULL, '1', NULL, 'sys:equip:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('7002', '新增', '700', NULL, '1', NULL, 'sys:equip:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('7003', '修改', '700', NULL, '1', NULL, 'sys:equip:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('7004', '删除', '700', NULL, '1', NULL, 'sys:equip:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('7005', '导入', '700', NULL, '1', NULL, 'sys:equip:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('7006', '导出', '700', NULL, '1', NULL, 'sys:equip:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('4001', '查询', '400', NULL, '1', NULL, 'sys:map:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('611001', '查询', '611', NULL, '1', NULL, 'sys:dictType:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('611002', '新增', '611', NULL, '1', NULL, 'sys:dictType:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('611003', '修改', '611', NULL, '1', NULL, 'sys:dictType:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('611004', '删除', '611', NULL, '1', NULL, 'sys:dictType:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('611005', '导入', '611', NULL, '1', NULL, 'sys:dictType:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('611006', '导出', '611', NULL, '1', NULL, 'sys:dictType:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('612001', '查询', '612', NULL, '1', NULL, 'sys:dict:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('612002', '新增', '612', NULL, '1', NULL, 'sys:dict:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('612003', '修改', '612', NULL, '1', NULL, 'sys:dict:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('612004', '删除', '612', NULL, '1', NULL, 'sys:dict:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('612005', '导入', '612', NULL, '1', NULL, 'sys:dict:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('612006', '导出', '612', NULL, '1', NULL, 'sys:dict:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630001', '查询', '630', NULL, '1', NULL, 'sys:app:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630002', '新增', '630', NULL, '1', NULL, 'sys:app:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630003', '修改', '630', NULL, '1', NULL, 'sys:app:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630004', '删除', '630', NULL, '1', NULL, 'sys:app:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630005', '导入', '630', NULL, '1', NULL, 'sys:app:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630006', '导出', '630', NULL, '1', NULL, 'sys:app:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641001', '查询', '641', NULL, '1', NULL, 'sys:group:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641002', '新增', '641', NULL, '1', NULL, 'sys:group:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641003', '修改', '641', NULL, '1', NULL, 'sys:group:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641004', '删除', '641', NULL, '1', NULL, 'sys:group:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641005', '导入', '641', NULL, '1', NULL, 'sys:group:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641006', '导出', '641', NULL, '1', NULL, 'sys:group:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('641007', '授权', '641', NULL, '1', NULL, 'sys:group:auth');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642001', '查询', '642', NULL, '1', NULL, 'sys:user:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642002', '新增', '642', NULL, '1', NULL, 'sys:user:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642003', '修改', '642', NULL, '1', NULL, 'sys:user:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642004', '删除', '642', NULL, '1', NULL, 'sys:user:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642005', '导入', '642', NULL, '1', NULL, 'sys:user:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642006', '导出', '642', NULL, '1', NULL, 'sys:user:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642007', '授权', '642', NULL, '1', '需要查询权限。<br/>可以更改用户权限。', 'sys:user:auth');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('620001', '查询', '620', NULL, '1', NULL, 'sys:slog:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642008', '重置密码', '642', NULL, '1', NULL, 'sys:user:resetPwd');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('630007', '授权', '630', NULL, '1', NULL, 'sys:app:auth');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('642009', '分配航标', '642', NULL, '1', NULL, 'sys:user:aid');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('650001', '查询', '650', NULL, '1', NULL, 'sys:sys:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3101', '查询', '310', NULL, '1', NULL, 'sys:aidMapIcon:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3102', '新增', '310', NULL, '1', NULL, 'sys:aidMapIcon:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3103', '修改', '310', NULL, '1', NULL, 'sys:aidMapIcon:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3104', '删除', '310', NULL, '1', NULL, 'sys:aidMapIcon:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3105', '导入', '310', NULL, '1', NULL, 'sys:aidMapIcon:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3106', '导出', '310', NULL, '1', NULL, 'sys:aidMapIcon:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3201', '查询', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3202', '新增', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3203', '修改', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3204', '删除', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3205', '导入', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3206', '导出', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:export');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3309', '批量删除', '330', NULL, '1', NULL, 'sys:aid:delBatch');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3401', '查询', '340', NULL, '1', NULL, 'sys:aidStation:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3402', '新增', '340', NULL, '1', NULL, 'sys:aidStation:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3403', '修改', '340', NULL, '1', NULL, 'sys:aidStation:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3404', '删除', '340', NULL, '1', NULL, 'sys:aidStation:delete');

-- ----------------------------
-- Table structure for tBase_MenuInterface
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_MenuInterface";
CREATE TABLE "AASYSTEM"."tBase_MenuInterface" (
  "sInterface_ID" NVARCHAR2(32) NOT NULL ,
  "sInterface_Name" NVARCHAR2(10) ,
  "sInterface_Url" NVARCHAR2(255) ,
  "sInterface_MenuID" NVARCHAR2(255) ,
  "lInterface_StatusFlag" NUMBER DEFAULT 1  ,
  "sInterface_MFunID" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."sInterface_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."sInterface_Name" IS '菜单接口名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."sInterface_Url" IS '菜单接口地址';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."sInterface_MenuID" IS '接口所属菜单，多个逗号分隔';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."lInterface_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."sInterface_MFunID" IS '接口所属菜单按钮，多个逗号分隔';

-- ----------------------------
-- Table structure for tBase_Message
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Message";
CREATE TABLE "AASYSTEM"."tBase_Message" (
  "sMsg_ID" NVARCHAR2(32) NOT NULL ,
  "sMsg_Type" NVARCHAR2(64) ,
  "dMsg_CreateDate" DATE ,
  "sMsg_ToUserID" NVARCHAR2(32) ,
  "sMsg_EquipID" NVARCHAR2(32) ,
  "sMsg_Describe" NVARCHAR2(255) ,
  "sMsg_Remarks" NVARCHAR2(255) ,
  "dMsg_UpdateDate" DATE ,
  "sMsg_UserID" NVARCHAR2(32) ,
  "sMsg_AidID" NVARCHAR2(32) ,
  "sMsg_IP" NVARCHAR2(255) ,
  "sMsg_FromUserID" NVARCHAR2(32) ,
  "sMsg_Label" NVARCHAR2(64) ,
  "lMsg_Level" NUMBER ,
  "sMsg_Status" NVARCHAR2(64) ,
  "sMsg_Title" NVARCHAR2(32) ,
  "sMsg_StoreLv1" NVARCHAR2(32) ,
  "sMsg_StoreLv2" NVARCHAR2(32) ,
  "sMsg_StoreLv3" NVARCHAR2(32) ,
  "sMsg_StoreLv4" NVARCHAR2(32) ,
  "dMsg_StoreNum" NUMBER ,
  "sMsg_Reason" NVARCHAR2(64) ,
  "sMsg_Source" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Type" IS '消息类型';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."dMsg_CreateDate" IS '消息日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_ToUserID" IS '接收消息人员ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_EquipID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Describe" IS '消息描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Remarks" IS '消息备注';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."dMsg_UpdateDate" IS '消息更新日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_UserID" IS '操作员ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_AidID" IS '航标ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_IP" IS '操作员IP';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_FromUserID" IS '产生消息人员ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Label" IS '消息自定义标签';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."lMsg_Level" IS '消息重要级别';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Status" IS '消息状态';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Title" IS '消息标题';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."dMsg_StoreNum" IS '库存数量';
COMMENT ON COLUMN "AASYSTEM"."tBase_Message"."sMsg_Reason" IS '消息原因';

-- ----------------------------
-- Table structure for tBase_Nfc
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Nfc";
CREATE TABLE "AASYSTEM"."tBase_Nfc" (
  "sNfc_ID" NVARCHAR2(32) NOT NULL ,
  "sNfc_Name" NVARCHAR2(64) ,
  "sNfc_NO" NVARCHAR2(64) ,
  "lNfc_StatusFlag" NUMBER ,
  "dNfc_CreateDate" DATE 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Nfc"."sNfc_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Nfc"."sNfc_Name" IS '名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Nfc"."sNfc_NO" IS '编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Nfc"."lNfc_StatusFlag" IS '状态 0：未使用，1：已使用';
COMMENT ON COLUMN "AASYSTEM"."tBase_Nfc"."dNfc_CreateDate" IS '创建日期';

-- ----------------------------
-- Table structure for tBase_Store
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Store";
CREATE TABLE "AASYSTEM"."tBase_Store" (
  "sStore_ID" NVARCHAR2(32) NOT NULL ,
  "sStore_Name" NVARCHAR2(64) ,
  "sStore_Level1" NVARCHAR2(32) ,
  "sStore_Level2" NVARCHAR2(32) ,
  "sStore_Level3" NVARCHAR2(32) ,
  "sStore_Parent" NVARCHAR2(32) ,
  "lStore_Limit" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Name" IS '仓库名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Level1" IS '一级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Level2" IS '二级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Level3" IS '三级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Parent" IS '父级ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."lStore_Limit" IS '库存预警值';

-- ----------------------------
-- Table structure for tBase_StoreLimit
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_StoreLimit";
CREATE TABLE "AASYSTEM"."tBase_StoreLimit" (
  "sSLimit_ID" NVARCHAR2(32) NOT NULL ,
  "sSLimit_StoreID" NVARCHAR2(32) ,
  "sSLimit_EquipType" NVARCHAR2(64) ,
  "lSLimit_Num" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."sSLimit_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."sSLimit_StoreID" IS '仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."sSLimit_EquipType" IS '器材种类';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."lSLimit_Num" IS '库存预警值';

-- ----------------------------
-- Table structure for tBase_StoreLog
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_StoreLog";
CREATE TABLE "AASYSTEM"."tBase_StoreLog" (
  "sSLog_ID" NVARCHAR2(32) NOT NULL ,
  "dSLog_CreateDate" DATE ,
  "sSLog_StoreLv1" NVARCHAR2(32) ,
  "sSLog_StoreLv2" NVARCHAR2(32) ,
  "sSLog_StoreLv3" NVARCHAR2(32) ,
  "sSLog_StoreLv4" NVARCHAR2(32) ,
  "sSLog_EquipType" NVARCHAR2(64) ,
  "dSLog_EquipNum" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."sSLog_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."dSLog_CreateDate" IS '日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."sSLog_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."sSLog_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."sSLog_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."sSLog_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."sSLog_EquipType" IS '器材分类';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLog"."dSLog_EquipNum" IS '器材数量';

-- ----------------------------
-- Table structure for tBase_StoreType
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_StoreType";
CREATE TABLE "AASYSTEM"."tBase_StoreType" (
  "sStoreType_ID" NVARCHAR2(32) NOT NULL ,
  "sStoreType_Name" NVARCHAR2(64) ,
  "sStoreType_Address" NVARCHAR2(255) ,
  "lStoreType_Lat" NUMBER ,
  "lStoreType_Lng" NUMBER ,
  "sStoreType_Station" NVARCHAR2(64) ,
  "lStoreType_Limit" NUMBER ,
  "sStoreType_MapIcon" NVARCHAR2(64) ,
  "lStoreType_LatDu" NUMBER ,
  "lStoreType_LatFen" NUMBER ,
  "lStoreType_LatMiao" NUMBER ,
  "lStoreType_LngDu" NUMBER ,
  "lStoreType_LngFen" NUMBER ,
  "lStoreType_LngMiao" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_Name" IS '仓库名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_Address" IS '仓库地址';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Lat" IS '纬度（°）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Lng" IS '经度（°）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_Station" IS '归属航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Limit" IS '库存预警值';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_MapIcon" IS '地图图标';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_LatDu" IS '纬度（度）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_LatFen" IS '纬度（分）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_LatMiao" IS '纬度（秒）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_LngDu" IS '经度（度）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_LngFen" IS '经度（分）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_LngMiao" IS '经度（秒）';

-- ----------------------------
-- Table structure for tBase_System
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_System";
CREATE TABLE "AASYSTEM"."tBase_System" (
  "sSys_ID" NVARCHAR2(32) NOT NULL ,
  "sSys_MapService" NVARCHAR2(255) ,
  "lSys_MapLat" NUMBER ,
  "lSys_MapLng" NUMBER ,
  "lSys_MapLevel" NUMBER ,
  "lSys_MapIconWidth" NUMBER ,
  "lSys_MapIconHeight" NUMBER ,
  "lSys_StoreMode" NUMBER ,
  "lSys_StoreValue" NUMBER ,
  "lSys_EquipMode" NUMBER ,
  "lSys_EquipValue" NUMBER ,
  "lSys_StoreMsg" NUMBER ,
  "lSys_EquipMsg" NUMBER ,
  "lSys_EquipRate" NUMBER ,
  "lSys_MapLevelPoint" NUMBER ,
  "lSys_MapIconWidthPoint" NUMBER ,
  "lSys_MapIconHeightPoint" NUMBER ,
  "lSys_MapLevelDef" NUMBER ,
  "lSys_MapIconWidthDef" NUMBER ,
  "lSys_MapIconHeightDef" NUMBER ,
  "lSys_StoreIconWidth" NUMBER ,
  "lSys_StoreIconHeight" NUMBER ,
  "lSys_StoreIconWidthPoint" NUMBER ,
  "lSys_StoreIconHeightPoint" NUMBER ,
  "lSys_StoreIconWidthDef" NUMBER ,
  "lSys_StoreIconHeightDef" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."sSys_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."sSys_MapService" IS '地图地址';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapLat" IS '默认纬度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapLng" IS '默认经度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapLevel" IS '默认级别';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapIconWidth" IS '图标宽度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapIconHeight" IS '图标高度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreMode" IS '库存盘点模式';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreValue" IS '库存盘点模式值';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_EquipMode" IS '器材寿命盘点模式';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_EquipValue" IS '器材寿命盘点模式值';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreMsg" IS '库存不足是否通知管理员 0：否，1：是';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_EquipMsg" IS '寿命不足是否通知管理员 0：否，1：是';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_EquipRate" IS '不足平均寿命的百分之几';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapLevelPoint" IS '点图标级别';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapIconWidthPoint" IS '点图标宽度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapIconHeightPoint" IS '点图标高度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapLevelDef" IS '默认图标级别';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapIconWidthDef" IS '默认图标宽度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_MapIconHeightDef" IS '默认图标高度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreIconWidth" IS '仓库图标宽度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreIconHeight" IS '仓库图标高度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreIconWidthPoint" IS '仓库点图标宽度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreIconHeightPoint" IS '仓库点图标高度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreIconWidthDef" IS '仓库默认图标宽度';
COMMENT ON COLUMN "AASYSTEM"."tBase_System"."lSys_StoreIconHeightDef" IS '仓库默认图标高度';

-- ----------------------------
-- Records of tBase_System
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_System" VALUES ('1', 'http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer', '24.46', '118.1', '6', '20', '50', '1', '22', '1', '22', '1', '1', '90', '6', '20', '20', '10', '24', '24', '20', '20', '20', '0', '24', '24');

-- ----------------------------
-- Table structure for tBase_SystemLog
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_SystemLog";
CREATE TABLE "AASYSTEM"."tBase_SystemLog" (
  "sSLog_ID" NVARCHAR2(32) NOT NULL ,
  "dSLog_CreateDate" DATE ,
  "sSLog_Type" NVARCHAR2(32) ,
  "sSLog_UserID" NVARCHAR2(32) ,
  "sSLog_IP" NVARCHAR2(255) ,
  "sSLog_UserNick" NVARCHAR2(32) ,
  "sSLog_Uri" NVARCHAR2(255) ,
  "sSLog_Describe" NVARCHAR2(255) ,
  "lSLog_TimeConsume" NUMBER ,
  "sSLog_Method" NVARCHAR2(255) ,
  "sSLog_Request" NVARCHAR2(255) ,
  "sSLog_Response" NVARCHAR2(255) ,
  "sSLog_Exception" NVARCHAR2(255) ,
  "sSLog_Module" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."dSLog_CreateDate" IS '日志日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Type" IS '日志分类';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_IP" IS 'IP';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_UserNick" IS '用户昵称';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Uri" IS '请求地址';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Describe" IS '日志描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."lSLog_TimeConsume" IS '方法耗时  ms';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Method" IS '方法名';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Request" IS '请求参数';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Response" IS '响应参数';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Exception" IS '异常信息';
COMMENT ON COLUMN "AASYSTEM"."tBase_SystemLog"."sSLog_Module" IS '模块';

-- ----------------------------
-- Records of tBase_SystemLog
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652886998792536064', TO_DATE('2019-12-07 14:59:50', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '611', 'add', '{"lAid_LngDu":[""],"sAid_Status":["normal"],"lAid_LatFen":[""],"lAid_LngMiao":[""],"lAid_LatMiao":[""],"sAid_Station":["test"],"lAid_Lng":["0"],"sAid_NO":["ceshi1"],"sAid_Name":["测试航标1"],"lAid_LatDu":[""],"lAid_Lat":["0"],"lAid_LngFen":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888662207365120', TO_DATE('2019-12-07 15:06:27', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '36', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652889074390007808', TO_DATE('2019-12-07 15:08:05', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '12', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896476757753856', TO_DATE('2019-12-07 15:37:30', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '15', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896544885833728', TO_DATE('2019-12-07 15:37:46', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/update', '更新用户', '31', 'update', '{"lUser_StatusFlag":["1"],"sUser_Phone":[""],"sUser_PassWord":["4d42bf9c18cb04139f918ff0ae68f8a0"],"sUser_ID":["652896284897705984"],"sUser_UserID":["1"],"sUser_UserName":["test22"],"sUser_Email":[""],"dUser_CreateDate":["1575704204000"],"sUser_GroupID":[', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652902264251351040', TO_DATE('2019-12-07 16:00:30', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '4', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652902300901179392', TO_DATE('2019-12-07 16:00:38', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '15', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978907204550656', TO_DATE('2019-12-07 21:05:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '14', 'login', '{"username":["test1"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652979044026941440', TO_DATE('2019-12-07 21:05:35', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '12', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652980689137827840', TO_DATE('2019-12-07 21:12:08', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652980784432414720', TO_DATE('2019-12-07 21:12:30', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '14', 'login', '{"username":["test1"]}', '{"msg":"密码错误","code":-110,"data":3}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652981675734597632', TO_DATE('2019-12-07 21:16:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '26', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652982755834986496', TO_DATE('2019-12-07 21:20:20', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888535996563456', TO_DATE('2019-12-07 15:05:57', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/add', '新增用户', '24', 'add', '{"lUser_StatusFlag":["0"],"sUser_PassWord2":["test11"],"sUser_PassWord":["test11"],"sUser_UserName":["test1"],"sUser_Nick":["test1"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888732663283712', TO_DATE('2019-12-07 15:06:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '17', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888784819453952', TO_DATE('2019-12-07 15:06:56', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/update', '更新用户', '28', 'update', '{"lUser_StatusFlag":["1"],"sUser_Phone":[""],"sUser_PassWord":["f696282aa4cd4f614aa995190cf442fe"],"sUser_ID":["652888535963009024"],"sUser_UserID":["1"],"sUser_UserName":["test1"],"sUser_Email":[""],"dUser_CreateDate":["1575702357000"],"sUser_GroupID":["', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888803794485248', TO_DATE('2019-12-07 15:07:00', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888835939631104', TO_DATE('2019-12-07 15:07:08', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '12', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888887357603840', TO_DATE('2019-12-07 15:07:20', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '10', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652889015782998016', TO_DATE('2019-12-07 15:07:51', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '558', 'updateUserMenuAuth', '{"sUser_ID":["652888535963009024"],"330":["3301,3302,3303,3304,3305,3306,3307,3308"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"700":["7001,7002,7003,7004,7005,7006"', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652889036054069248', TO_DATE('2019-12-07 15:07:56', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652891901808082944', TO_DATE('2019-12-07 15:19:19', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '4', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652893046148431872', TO_DATE('2019-12-07 15:23:52', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '7210', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652894335154520064', TO_DATE('2019-12-07 15:28:59', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '9', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652894394768162816', TO_DATE('2019-12-07 15:29:13', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896171995430912', TO_DATE('2019-12-07 15:36:17', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '11', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888694226681856', TO_DATE('2019-12-07 15:06:34', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8', 'login', '{"username":["test1"]}', '{"msg":"账号被封禁","code":-107}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896331559337984', TO_DATE('2019-12-07 15:36:55', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateStation', '更新分配给用户的航标站', '64', 'updateStation', '{"station":["test6"],"sUser_ID":["652896284897705984"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896414761746432', TO_DATE('2019-12-07 15:37:15', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652910585536577536', TO_DATE('2019-12-07 16:33:34', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '38', 'updateUserMenuAuth', '{"sUser_ID":["652888535963009024"],"330":["3301,3302,3303,3304,3305,3306,3307,3308"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"700":[""],"800":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978702916780032', TO_DATE('2019-12-07 21:04:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '24', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978917409292288', TO_DATE('2019-12-07 21:05:05', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '10', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652979023554543616', TO_DATE('2019-12-07 21:05:30', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652980711808040960', TO_DATE('2019-12-07 21:12:13', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652980795593457664', TO_DATE('2019-12-07 21:12:33', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '12', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652982784960233472', TO_DATE('2019-12-07 21:20:27', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '19', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983091517718528', TO_DATE('2019-12-07 21:21:40', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983242600742912', TO_DATE('2019-12-07 21:22:16', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983264012664832', TO_DATE('2019-12-07 21:22:21', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '40', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652887205223596032', TO_DATE('2019-12-07 15:00:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '92', 'add', '{"lAid_LngDu":[""],"sAid_Status":["normal"],"lAid_LatFen":[""],"lAid_LngMiao":[""],"lAid_LatMiao":[""],"sAid_Station":["test6"],"lAid_Lng":["0"],"sAid_NO":["ceshi3"],"sAid_Name":["测试航标3"],"lAid_LatDu":[""],"lAid_Lat":["0"],"lAid_LngFen":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652887363000729600', TO_DATE('2019-12-07 15:01:17', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '388', 'add', '{"sEquip_NO":["test1"],"sEquip_Type":["Equipbuoy"],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_StoreLv1":[" "],"sEquip_Name":["test1"],"sEquip_StoreLv2":[" "]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652887440385638400', TO_DATE('2019-12-07 15:01:35', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '32', 'add', '{"sEquip_NO":["test2"],"sEquip_Type":["Equipbuoy"],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_StoreLv1":[" "],"sEquip_Name":["test2"],"sEquip_StoreLv2":[" "]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652887496081801216', TO_DATE('2019-12-07 15:01:49', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '41', 'add', '{"sEquip_NO":["test3"],"sEquip_Type":["Equipbuoy"],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_StoreLv1":[" "],"sEquip_Name":["test3"],"sEquip_StoreLv2":[" "]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652887911536001024', TO_DATE('2019-12-07 15:03:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/add', '新增用户', '32', 'add', '{"lUser_StatusFlag":["0"],"sUser_PassWord":["test1"],"sUser_GroupID":["3"],"sUser_PassWord2":["test1"],"sUser_UserName":["test1"],"sUser_Nick":["test1"]}', NULL, 'com.jian.system.exception.ServiceException: {"msg":"保存失败，密码不符合要求。（密码至少包含 数字和英文，长度6-20）","code":-101}: com.jian.system.service.UserService.insert(UserService.java:73)', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888598223257600', TO_DATE('2019-12-07 15:06:11', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateStation', '更新分配给用户的航标站', '371', 'updateStation', '{"station":["test"],"sUser_ID":["652888535963009024"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896137925099520', TO_DATE('2019-12-07 15:36:09', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896284922871808', TO_DATE('2019-12-07 15:36:44', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/add', '新增用户', '35', 'add', '{"lUser_StatusFlag":["0"],"sUser_PassWord":["test22"],"sUser_GroupID":["3"],"sUser_PassWord2":["test22"],"sUser_UserName":["test22"],"sUser_Nick":["test22"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896440598659072', TO_DATE('2019-12-07 15:37:21', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '11', 'login', '{"username":["test22"]}', '{"msg":"账号被封禁","code":-107}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978953396420608', TO_DATE('2019-12-07 21:05:14', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652980758851354624', TO_DATE('2019-12-07 21:12:24', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652981638522732544', TO_DATE('2019-12-07 21:15:54', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983866369245184', TO_DATE('2019-12-07 21:24:45', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983903014879232', TO_DATE('2019-12-07 21:24:54', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '10', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652984181684436992', TO_DATE('2019-12-07 21:26:00', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652984202010034176', TO_DATE('2019-12-07 21:26:05', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '9', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652887109622824960', TO_DATE('2019-12-07 15:00:16', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '121', 'add', '{"lAid_LngDu":[""],"sAid_Status":["normal"],"lAid_LatFen":[""],"lAid_LngMiao":[""],"lAid_LatMiao":[""],"sAid_Station":["test6"],"lAid_Lng":["0"],"sAid_NO":["ceshi2"],"sAid_Name":["测试航标2"],"lAid_LatDu":[""],"lAid_Lat":["0"],"lAid_LngFen":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652888865832435712', TO_DATE('2019-12-07 15:07:15', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896394796859392', TO_DATE('2019-12-07 15:37:10', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '26', 'updateUserMenuAuth', '{"sUser_ID":["652896284897705984"],"330":["3301,3302,3303,3304,3305,3306,3307,3308"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"700":[""],"800":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896570936655872', TO_DATE('2019-12-07 15:37:52', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652896597645983744', TO_DATE('2019-12-07 15:37:59', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '14', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978838451519488', TO_DATE('2019-12-07 21:04:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '65', 'add', '{"lAid_LngDu":[""],"sAid_Status":["normal"],"lAid_Lng":["0"],"sAid_NO":["ceshi4"],"lAid_LatFen":[""],"lAid_LngMiao":[""],"sAid_Name":["测试航标4"],"lAid_LatDu":[""],"lAid_LatMiao":[""],"lAid_Lat":["0"],"lAid_LngFen":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978880100958208', TO_DATE('2019-12-07 21:04:56', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '4', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652978976653836288', TO_DATE('2019-12-07 21:05:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983120278061056', TO_DATE('2019-12-07 21:21:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983360527794176', TO_DATE('2019-12-07 21:22:44', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '25', 'updateUserMenuAuth', '{"sUser_ID":["652896284897705984"],"330":["3301"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"700":[""],"800":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983512340627456', TO_DATE('2019-12-07 21:23:21', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652983548990455808', TO_DATE('2019-12-07 21:23:29', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '11', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652999117869416448', TO_DATE('2019-12-07 22:25:21', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366251736793088', TO_DATE('2019-12-08 22:44:13', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '340', 'updateUserMenuAuth', '{"sUser_ID":["652896284897705984"],"340":["3401"],"330":["3301"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":["4001"],"620":[""],"642":[""],"611":[""],"612":[""],"700":[""],"800":[""]}', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653371108543692800', TO_DATE('2019-12-08 23:03:31', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653327361164443648', TO_DATE('2019-12-08 20:09:41', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '89', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366206467670016', TO_DATE('2019-12-08 22:44:02', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '42', 'updateUserMenuAuth', '{"sUser_ID":["652888535963009024"],"340":["3401,3402,3403,3404"],"330":["3301,3302,3303,3304,3305,3306,3307,3308"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":["4001"],"620":[""],"642":[""],"611":[""],"612":[""],"700', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366279851212800', TO_DATE('2019-12-08 22:44:20', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '124', 'updateUserMenuAuth', '{"sUser_ID":["653364550598393856"],"340":["3401,3402,3403,3404"],"330":["3301,3302,3303,3304,3305,3306,3307,3308,3309"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":["4001"],"620":[""],"642":[""],"611":[""],"612":[""]', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652993515604672512', TO_DATE('2019-12-07 22:03:06', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652994789314134016', TO_DATE('2019-12-07 22:08:09', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652998539151933440', TO_DATE('2019-12-07 22:23:03', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652998563994796032', TO_DATE('2019-12-07 22:23:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '43', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652999139365224448', TO_DATE('2019-12-07 22:25:26', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653358119270744064', TO_DATE('2019-12-08 22:11:54', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '134', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653358300741500928', TO_DATE('2019-12-08 22:12:37', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '413', 'updateUserMenuAuth', '{"sUser_ID":["652888535963009024"],"340":["3401,3402,3403,3404"],"330":["3301,3302,3303,3304,3305,3306,3307,3308"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"700":["', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653358446640365568', TO_DATE('2019-12-08 22:13:12', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '23', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653358478433189888', TO_DATE('2019-12-08 22:13:20', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653358552198414336', TO_DATE('2019-12-08 22:13:37', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidStation/update', '更新航标站地图设置', '223', 'update', '{"sAidStation_ID":["653347190952951808"],"sAidStation_Station":["test"],"lAidStation_MapLevel":["13"],"lAidStation_MapLat":["121"],"lAidStation_MapLng":["121"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652986735713583104', TO_DATE('2019-12-07 21:36:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653358399886458880', TO_DATE('2019-12-08 22:13:01', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '62', 'updateUserMenuAuth', '{"sUser_ID":["652896284897705984"],"340":["3401"],"330":["3301"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"700":[""],"800":[""]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652984808577695744', TO_DATE('2019-12-07 21:28:30', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '10', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652990810010157056', TO_DATE('2019-12-07 21:52:21', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652990838984409088', TO_DATE('2019-12-07 21:52:27', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '11', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652991874058944512', TO_DATE('2019-12-07 21:56:34', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '10', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652993492410171392', TO_DATE('2019-12-07 22:03:00', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateAid', '更新分配给用户的航标', '768', 'updateAid', '{"aid":["652978838258581504"],"sUser_ID":["652896284897705984"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652993545614917632', TO_DATE('2019-12-07 22:03:13', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652994813708206080', TO_DATE('2019-12-07 22:08:15', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653347191359799296', TO_DATE('2019-12-08 21:28:29', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidStation/add', '新增航标站地图设置', '135', 'add', '{"sAidStation_MapLevel":["10"],"sAidStation_Station":["test"],"sAidStation_MapLng":["12"],"sAidStation_MapLat":["12"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653348516491427840', TO_DATE('2019-12-08 21:33:44', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidStation/add', '新增航标站地图设置', '63', 'add', '{"sAidStation_Station":["test2"],"lAidStation_MapLevel":["9"],"lAidStation_MapLat":["123"],"lAidStation_MapLng":["123"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653348540659007488', TO_DATE('2019-12-08 21:33:50', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/aidStation/delete', '删除航标站地图设置', '43', 'delete', '{"sAidStation_ID":["653348516382375936"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653349001642377216', TO_DATE('2019-12-08 21:35:40', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidStation/add', '新增航标站地图设置', '37', 'add', '{"sAidStation_Station":["test2"],"lAidStation_MapLevel":[""],"lAidStation_MapLat":["1"],"lAidStation_MapLng":["1"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653349889492647936', TO_DATE('2019-12-08 21:39:12', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidStation/add', '新增航标站地图设置', '31', 'add', '{"sAidStation_Station":["test4"],"lAidStation_MapLevel":["9"],"lAidStation_MapLat":["122"],"lAidStation_MapLng":["122"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652984783449620480', TO_DATE('2019-12-07 21:28:24', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652986708710653952', TO_DATE('2019-12-07 21:36:03', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('652991854517682176', TO_DATE('2019-12-07 21:56:30', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653347803350695936', TO_DATE('2019-12-08 21:30:54', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidStation/update', '更新航标站地图设置', '37', 'update', '{"sAidStation_ID":["653347190952951808"],"sAidStation_Station":["test"],"lAidStation_MapLevel":["10"],"lAidStation_MapLat":["12"],"lAidStation_MapLng":["12"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidStationController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653361772018794496', TO_DATE('2019-12-08 22:26:25', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '8', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653361802297475072', TO_DATE('2019-12-08 22:26:32', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '34', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653361847289774080', TO_DATE('2019-12-08 22:26:43', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '8', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653361881133613056', TO_DATE('2019-12-08 22:26:51', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364247459266560', TO_DATE('2019-12-08 22:36:15', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '11', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364288240484352', TO_DATE('2019-12-08 22:36:25', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '81', 'login', '{"username":["test1"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652888535963009024","sUser_UserName":"test1","sUser_PassWord":"","sUser_Nick":"test1","lUser_StatusFlag":1,"sUser_GroupID":null,"sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"d', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364340610564096', TO_DATE('2019-12-08 22:36:37', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364377272975360', TO_DATE('2019-12-08 22:36:46', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["test22"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"652896284897705984","sUser_UserName":"test22","sUser_PassWord":"","sUser_Nick":"test22","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364418880471040', TO_DATE('2019-12-08 22:36:56', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '8', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364442884472832', TO_DATE('2019-12-08 22:37:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '16', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364551059767296', TO_DATE('2019-12-08 22:37:27', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/add', '新增用户', '154', 'add', '{"lUser_StatusFlag":["1"],"sUser_PassWord":["test33"],"sUser_GroupID":["3"],"sUser_PassWord2":["test33"],"sUser_UserName":["test33"],"sUser_Nick":["test33"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364629438726144', TO_DATE('2019-12-08 22:37:46', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '67', 'updateUserMenuAuth', '{"sUser_ID":["653364550598393856"],"340":["3401,3402,3403,3404"],"330":["3301,3302,3303,3304,3305,3306,3307,3308,3309"],"100":[""],"320":[""],"650":[""],"200":[""],"310":[""],"630":[""],"641":[""],"400":[""],"620":[""],"642":[""],"611":[""],"612":[""],"70', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364805658214400', TO_DATE('2019-12-08 22:38:28', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364805658214401', TO_DATE('2019-12-08 22:38:28', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653364834993176576', TO_DATE('2019-12-08 22:38:35', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '26', 'login', '{"username":["test33"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"653364550598393856","sUser_UserName":"test33","sUser_PassWord":"","sUser_Nick":"test33","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653365085804167168', TO_DATE('2019-12-08 22:39:35', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '5', 'logout', NULL, NULL, 'org.springframework.dao.DuplicateKeyException: 
### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0015543)

### The error may involve com.jian.system.dao.SystemLogMapper.insert-Inl', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653365968638050304', TO_DATE('2019-12-08 22:43:05', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '25', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653365992277147648', TO_DATE('2019-12-08 22:43:11', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '6', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366038099918848', TO_DATE('2019-12-08 22:43:22', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '25', 'login', '{"username":["test33"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"653364550598393856","sUser_UserName":"test33","sUser_PassWord":"","sUser_Nick":"test33","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366057771204608', TO_DATE('2019-12-08 22:43:27', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366130013896704', TO_DATE('2019-12-08 22:43:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366329436274688', TO_DATE('2019-12-08 22:44:31', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653366352119070720', TO_DATE('2019-12-08 22:44:37', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '15', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('653371126449176576', TO_DATE('2019-12-08 23:03:35', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '11', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');

-- ----------------------------
-- Table structure for tBase_ThirdUser
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_ThirdUser";
CREATE TABLE "AASYSTEM"."tBase_ThirdUser" (
  "sThird_ID" NVARCHAR2(32) NOT NULL ,
  "sThird_NO" NVARCHAR2(32) ,
  "sThird_Secret" NVARCHAR2(32) ,
  "sThird_Name" NVARCHAR2(32) ,
  "lThird_StatusFlag" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_ThirdUser"."sThird_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_ThirdUser"."sThird_NO" IS '标识';
COMMENT ON COLUMN "AASYSTEM"."tBase_ThirdUser"."sThird_Secret" IS '密钥（md5）';
COMMENT ON COLUMN "AASYSTEM"."tBase_ThirdUser"."sThird_Name" IS '名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_ThirdUser"."lThird_StatusFlag" IS '状态 0：禁用，1：启用';

-- ----------------------------
-- Table structure for tBase_User
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_User";
CREATE TABLE "AASYSTEM"."tBase_User" (
  "sUser_ID" NVARCHAR2(32) NOT NULL ,
  "sUser_UserName" NVARCHAR2(32) ,
  "sUser_PassWord" NVARCHAR2(32) ,
  "sUser_Nick" NVARCHAR2(10) ,
  "lUser_StatusFlag" NUMBER ,
  "sUser_GroupID" NVARCHAR2(32) ,
  "sUser_QQ" NVARCHAR2(20) ,
  "sUser_Email" NVARCHAR2(255) ,
  "sUser_Phone" NVARCHAR2(20) ,
  "sUser_ThirdID" NVARCHAR2(32) ,
  "dUser_CreateDate" DATE ,
  "sUser_UserID" NVARCHAR2(32) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_UserName" IS '用户名';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_PassWord" IS '密码（md5）';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_Nick" IS '用户昵称';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."lUser_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_GroupID" IS '用户组ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_QQ" IS 'QQ号';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_Email" IS '邮箱';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_Phone" IS '手机号';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_ThirdID" IS '第三方ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."dUser_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_User"."sUser_UserID" IS '创建人ID';

-- ----------------------------
-- Records of tBase_User
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('653364550598393856', 'test33', '9cb45d54b2ccdc1c486e2f3eb87fbe9f', 'test33', '1', '3', NULL, NULL, NULL, NULL, TO_DATE('2019-12-08 22:37:27', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('652888535963009024', 'test1', 'f696282aa4cd4f614aa995190cf442fe', 'test1', '1', NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-12-07 15:05:57', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('652896284897705984', 'test22', '4d42bf9c18cb04139f918ff0ae68f8a0', 'test22', '1', '3', NULL, NULL, NULL, NULL, TO_DATE('2019-12-07 15:36:44', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tBase_UserAid
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserAid";
CREATE TABLE "AASYSTEM"."tBase_UserAid" (
  "sUserAid_ID" NVARCHAR2(32) NOT NULL ,
  "sUserAid_UserID" NVARCHAR2(32) ,
  "sUserAid_AidID" NVARCHAR2(32) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_UserAid"."sUserAid_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserAid"."sUserAid_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserAid"."sUserAid_AidID" IS '航标ID';

-- ----------------------------
-- Records of tBase_UserAid
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('652993489318969344', '652896284897705984', '652978838258581504');

-- ----------------------------
-- Table structure for tBase_UserLog
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserLog";
CREATE TABLE "AASYSTEM"."tBase_UserLog" (
  "sLog_ID" NVARCHAR2(32) NOT NULL ,
  "dLog_Date" DATE ,
  "sLog_Type" NVARCHAR2(32) ,
  "sLog_UserID" NVARCHAR2(32) ,
  "sLog_IP" NVARCHAR2(32) ,
  "sLog_Content" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."sLog_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."dLog_Date" IS '日志日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."sLog_Type" IS '日志分类';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."sLog_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."sLog_IP" IS 'IP';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."sLog_Content" IS '日志内容';

-- ----------------------------
-- Table structure for tBase_UserMenu
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserMenu";
CREATE TABLE "AASYSTEM"."tBase_UserMenu" (
  "sUserMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sUserMenu_UserID" NVARCHAR2(32) ,
  "sUserMenu_MenuID" NVARCHAR2(32) ,
  "sUserMenu_MenuFunID" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_MenuID" IS '菜单ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_MenuFunID" IS '菜单功能ID 多个逗号分隔';

-- ----------------------------
-- Records of tBase_UserMenu
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366251405443072', '652896284897705984', '340', '3401');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366251405443073', '652896284897705984', '330', '3301');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366251405443074', '652896284897705984', '400', '4001');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366206400561152', '652888535963009024', '340', '3401,3402,3403,3404');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366206400561153', '652888535963009024', '330', '3301,3302,3303,3304,3305,3306,3307,3308');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366206400561154', '652888535963009024', '400', '4001');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366279813464064', '653364550598393856', '340', '3401,3402,3403,3404');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366279813464065', '653364550598393856', '330', '3301,3302,3303,3304,3305,3306,3307,3308,3309');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('653366279813464066', '653364550598393856', '400', '4001');

-- ----------------------------
-- Table structure for tBase_UserPosition
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserPosition";
CREATE TABLE "AASYSTEM"."tBase_UserPosition" (
  "sUserPosition_ID" NVARCHAR2(32) NOT NULL ,
  "sUserPosition_UserID" NVARCHAR2(32) ,
  "sUserPosition_Position" NVARCHAR2(1000) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_UserPosition"."sUserPosition_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserPosition"."sUserPosition_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserPosition"."sUserPosition_Position" IS '样式';

-- ----------------------------
-- Records of tBase_UserPosition
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_UserPosition" VALUES ('1', '0', '[{"id":"1","x":4,"y":1,"sizex":6,"sizey":1,"unresize":true,"undrag":true},{"id":"2","x":1,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"3","x":10,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"chartAidMap","x":4,"y":2,"sizex":6,"sizey":5},{"id":"msgList","x":10,"y":2,"sizex":3,"sizey":2},{"id":"chartAid","x":1,"y":2,"sizex":3,"sizey":2},{"id":"chartEquipType","x":1,"y":4,"sizex":3,"sizey":3},{"id":"aidList","x":10,"y":4,"sizex":3,"sizey":3},{"id":"chartStoreTime","x":1,"y":7,"sizex":6,"sizey":3},{"id":"chartStoreInout","x":7,"y":7,"sizex":6,"sizey":3}]');
INSERT INTO "AASYSTEM"."tBase_UserPosition" VALUES ('2', '1', '[{"id":"1","x":4,"y":1,"sizex":6,"sizey":1,"unresize":true,"undrag":true},{"id":"2","x":1,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"3","x":10,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"chartAidMap","x":4,"y":2,"sizex":6,"sizey":5},{"id":"msgList","x":10,"y":2,"sizex":3,"sizey":2},{"id":"chartAid","x":1,"y":2,"sizex":3,"sizey":2},{"id":"chartEquipType","x":1,"y":4,"sizex":3,"sizey":3},{"id":"aidList","x":10,"y":4,"sizex":3,"sizey":3},{"id":"chartStoreTime","x":1,"y":7,"sizex":6,"sizey":3},{"id":"chartStoreInout","x":7,"y":7,"sizex":6,"sizey":3}]');

-- ----------------------------
-- Table structure for tBase_UserStation
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserStation";
CREATE TABLE "AASYSTEM"."tBase_UserStation" (
  "sUserStation_ID" NVARCHAR2(32) NOT NULL ,
  "sUserStation_UserID" NVARCHAR2(32) ,
  "sUserStation_Station" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStation"."sUserStation_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStation"."sUserStation_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStation"."sUserStation_Station" IS '航标站标识';

-- ----------------------------
-- Records of tBase_UserStation
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_UserStation" VALUES ('652896331475451904', '652896284897705984', 'test6');
INSERT INTO "AASYSTEM"."tBase_UserStation" VALUES ('652888596780417024', '652888535963009024', 'test');

-- ----------------------------
-- Table structure for tBase_UserStore
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserStore";
CREATE TABLE "AASYSTEM"."tBase_UserStore" (
  "sUserStore_ID" NVARCHAR2(32) NOT NULL ,
  "sUserStore_UserID" NVARCHAR2(32) ,
  "sUserStore_StoreLv1ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv2ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv3ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv4ID" NVARCHAR2(32) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv1ID" IS '一级仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv2ID" IS '二级仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv3ID" IS '三级仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv4ID" IS '四级仓库ID';

-- ----------------------------
-- Table structure for tEquip_Ais
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Ais";
CREATE TABLE "AASYSTEM"."tEquip_Ais" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sAis_MMSIX" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_Ais"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Ais"."sAis_MMSIX" IS 'MMSIX号';

-- ----------------------------
-- Table structure for tEquip_Battery
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Battery";
CREATE TABLE "AASYSTEM"."tEquip_Battery" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sBattery_NO" NVARCHAR2(255) ,
  "sBattery_Type" NVARCHAR2(64) ,
  "lBattery_Volt" NUMBER ,
  "lBattery_Watt" NUMBER ,
  "sBattery_Connect" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_Battery"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Battery"."sBattery_NO" IS '编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Battery"."sBattery_Type" IS '种类';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Battery"."lBattery_Volt" IS '工作电压（V）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Battery"."lBattery_Watt" IS '容量（W）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Battery"."sBattery_Connect" IS '连接方式';

-- ----------------------------
-- Table structure for tEquip_Lamp
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Lamp";
CREATE TABLE "AASYSTEM"."tEquip_Lamp" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sLamp_NO" NVARCHAR2(255) ,
  "sLamp_Brand" NVARCHAR2(255) ,
  "sLamp_Type" NVARCHAR2(64) ,
  "lLamp_InputVolt" NUMBER ,
  "lLamp_Watt" NUMBER ,
  "sLamp_Lens" NVARCHAR2(64) ,
  "lLamp_TelemetryFlag" NUMBER ,
  "sLamp_Telemetry" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."sLamp_NO" IS '编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."sLamp_Brand" IS '品牌';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."sLamp_Type" IS '类型';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."lLamp_InputVolt" IS '输入电压（V）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."lLamp_Watt" IS '功率（W）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."sLamp_Lens" IS '透镜形状';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."lLamp_TelemetryFlag" IS '遥测遥控接口 0：否，1：是';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lamp"."sLamp_Telemetry" IS '遥测接口类型';

-- ----------------------------
-- Table structure for tEquip_Radar
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Radar";
CREATE TABLE "AASYSTEM"."tEquip_Radar" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sRadar_NO" NVARCHAR2(64) ,
  "sRadar_Band" NVARCHAR2(64) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_Radar"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Radar"."sRadar_NO" IS '编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Radar"."sRadar_Band" IS '波段';

-- ----------------------------
-- Table structure for tEquip_SolarEnergy
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_SolarEnergy";
CREATE TABLE "AASYSTEM"."tEquip_SolarEnergy" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sSolar_NO" NVARCHAR2(255) ,
  "sSolar_Type" NVARCHAR2(64) ,
  "lSolar_Volt" NUMBER ,
  "lSolar_Watt" NUMBER ,
  "sSolar_Connect" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_SolarEnergy"."sEquip_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_SolarEnergy"."sSolar_NO" IS '编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_SolarEnergy"."sSolar_Type" IS '种类';
COMMENT ON COLUMN "AASYSTEM"."tEquip_SolarEnergy"."lSolar_Volt" IS '额定电压（V）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_SolarEnergy"."lSolar_Watt" IS '功率（W）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_SolarEnergy"."sSolar_Connect" IS '连接方式';

-- ----------------------------
-- Table structure for tEquip_SpareLamp
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_SpareLamp";
CREATE TABLE "AASYSTEM"."tEquip_SpareLamp" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "lSLamp_Watt" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_SpareLamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_SpareLamp"."lSLamp_Watt" IS '功率（W）';

-- ----------------------------
-- Table structure for tEquip_Telemetry
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Telemetry";
CREATE TABLE "AASYSTEM"."tEquip_Telemetry" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sTelemetry_Mode" NVARCHAR2(64) ,
  "lTelemetry_Watt" NUMBER ,
  "sTelemetry_NO" NVARCHAR2(255) ,
  "lTelemetry_Volt" NUMBER ,
  "sTelemetry_SIM" NVARCHAR2(255) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_Telemetry"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Telemetry"."sTelemetry_Mode" IS '遥控遥测方式';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Telemetry"."lTelemetry_Watt" IS '功率（W）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Telemetry"."sTelemetry_NO" IS '遥控遥测编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Telemetry"."lTelemetry_Volt" IS '电压（V）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Telemetry"."sTelemetry_SIM" IS 'SIM(MMIS) 卡号';

-- ----------------------------
-- Table structure for tEquip_ViceLamp
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_ViceLamp";
CREATE TABLE "AASYSTEM"."tEquip_ViceLamp" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "lVLamp_Watt" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "AASYSTEM"."tEquip_ViceLamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_ViceLamp"."lVLamp_Watt" IS '功率（W）';

-- ----------------------------
-- Primary Key structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012861" PRIMARY KEY ("sAid_ID");

-- ----------------------------
-- Checks structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0024594" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012908" PRIMARY KEY ("sAidEquip_ID");

-- ----------------------------
-- Checks structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0024595" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0018045" PRIMARY KEY ("sAidIcon_ID");

-- ----------------------------
-- Checks structure for table tBase_AidMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0024596" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidStation
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidStation" ADD CONSTRAINT "SYS_C0024794" PRIMARY KEY ("sAidStation_ID");

-- ----------------------------
-- Primary Key structure for table tBase_AidTypeMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0018049" PRIMARY KEY ("sAidTypeIcon_ID");

-- ----------------------------
-- Checks structure for table tBase_AidTypeMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0024597" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113800" PRIMARY KEY ("sApp_ID");

-- ----------------------------
-- Checks structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0024598" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016114" PRIMARY KEY ("sAppMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0024599" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_AppMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."AppMenu_AppID_Index"
  ON "AASYSTEM"."tBase_AppMenu" ("sAppMenu_AppID" ASC)
  LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012842" PRIMARY KEY ("sDict_ID");

-- ----------------------------
-- Checks structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0024600" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012843" PRIMARY KEY ("sDictType_ID");

-- ----------------------------
-- Checks structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0024601" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012881" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0024602" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_EquipLife
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLife" ADD CONSTRAINT "SYS_C0022120" PRIMARY KEY ("sELife_ID");

-- ----------------------------
-- Checks structure for table tBase_EquipLife
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLife" ADD CONSTRAINT "SYS_C0024603" CHECK ("sELife_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012888" PRIMARY KEY ("sELog_ID");

-- ----------------------------
-- Checks structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0024604" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012844" PRIMARY KEY ("sGroup_ID");

-- ----------------------------
-- Checks structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0024605" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012845" PRIMARY KEY ("sGroupMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0024606" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_GroupMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."GroupMenu_GroupID_Index"
  ON "AASYSTEM"."tBase_GroupMenu" ("sGroupMenu_GroupID" ASC)
  LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012846" PRIMARY KEY ("sMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0024607" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0024608" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012847" PRIMARY KEY ("sInterface_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0024609" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012916" PRIMARY KEY ("sMsg_ID");

-- ----------------------------
-- Checks structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0024610" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012897" PRIMARY KEY ("sNfc_ID");

-- ----------------------------
-- Checks structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0024611" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012857" PRIMARY KEY ("sStore_ID");

-- ----------------------------
-- Checks structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0024612" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreLimit
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022484" PRIMARY KEY ("sSLimit_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreLimit
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0024613" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019974" PRIMARY KEY ("sSLog_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0024614" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012853" PRIMARY KEY ("sStoreType_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0024615" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0017770" PRIMARY KEY ("sSys_ID");

-- ----------------------------
-- Checks structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0024616" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015543" PRIMARY KEY ("sSLog_ID");

-- ----------------------------
-- Checks structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0024617" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012848" PRIMARY KEY ("sThird_ID");

-- ----------------------------
-- Checks structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0024618" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012849" PRIMARY KEY ("sUser_ID");

-- ----------------------------
-- Checks structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0024619" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012902" PRIMARY KEY ("sUserAid_ID");

-- ----------------------------
-- Checks structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0024620" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_UserAid
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserAid_UserID_Index"
  ON "AASYSTEM"."tBase_UserAid" ("sUserAid_UserID" ASC)
  LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tBase_UserLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0012850" PRIMARY KEY ("sLog_ID");

-- ----------------------------
-- Checks structure for table tBase_UserLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0024621" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012851" PRIMARY KEY ("sUserMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0024622" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_UserMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserMenu_UserID_Index"
  ON "AASYSTEM"."tBase_UserMenu" ("sUserMenu_UserID" ASC)
  LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tBase_UserPosition
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserPosition" ADD CONSTRAINT "SYS_C0022754" PRIMARY KEY ("sUserPosition_ID");

-- ----------------------------
-- Checks structure for table tBase_UserPosition
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserPosition" ADD CONSTRAINT "SYS_C0024623" CHECK ("sUserPosition_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserStation
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStation" ADD CONSTRAINT "SYS_C0022036" PRIMARY KEY ("sUserStation_ID");

-- ----------------------------
-- Checks structure for table tBase_UserStation
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStation" ADD CONSTRAINT "SYS_C0024624" CHECK ("sUserStation_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserStore
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStore" ADD CONSTRAINT "SYS_C0021700" PRIMARY KEY ("sUserStore_ID");

-- ----------------------------
-- Checks structure for table tBase_UserStore
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStore" ADD CONSTRAINT "SYS_C0024625" CHECK ("sUserStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_UserStore
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserStore_UserID_Index"
  ON "AASYSTEM"."tBase_UserStore" ("sUserStore_UserID" ASC)
  LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tEquip_Ais
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0018834" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Ais
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0024626" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Battery
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0018845" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Battery
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0024627" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Lamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0012866" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Lamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0024628" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Radar
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0018837" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Radar
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0024629" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_SolarEnergy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0012872" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_SolarEnergy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0024630" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_SpareLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018849" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_SpareLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0024631" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Telemetry
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018841" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Telemetry
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0024632" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_ViceLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018854" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_ViceLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0024633" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
