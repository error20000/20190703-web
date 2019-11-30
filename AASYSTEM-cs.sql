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

 Date: 30/11/2019 16:53:36
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
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('620011995176894464', '测试测试时测试测试名字很长的内容', '1', '1.0169753', '1.0170056', NULL, NULL, NULL, TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-09-07 21:46:18', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('605889035314921472', '1', '1', '1', '1', 'test', 'test', '12', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', 'test', NULL, TO_DATE('2019-07-30 22:26:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('605833582404960256', '1', '1', '1', '1', 'test', 'test', NULL, NULL, NULL, 'test1', 'test', NULL, TO_DATE('2019-07-30 18:46:21', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604617148949594112', '12', '12', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 10:12:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748640124141568', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748743446626304', '123', '123', '24.46', '118.11', 'test', NULL, 'test', TO_DATE('2019-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '24', '27', '36', '118', '6', '36');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748877744046080', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:56:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604743636243972096', '11test', '11', '24.46', '118.5', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:35:18', 'SYYYY-MM-DD HH24:MI:SS'), 'unusual', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604745958013534208', '11', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:44:32', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604074845818322944', '1test', '1', '24.46', '118.1', 'test', 'test', '12', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', 'test', '604078755886923776', TO_DATE('2019-07-25 22:17:46', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('620016285035528192', '2', '2', '2.0392582', '4.1027055', NULL, NULL, NULL, TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-09-07 22:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('620022175348293632', '2', '2', '1.0565431', '3.0601237', NULL, NULL, NULL, TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-09-07 22:26:46', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', '1', '2', '83.555', '3', '3', '36.445');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('625655802769702912', '测试左侧标', '1111', '24.477222', '118.12722', 'test', 'leftLabel', NULL, TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-09-23 11:32:47', 'SYYYY-MM-DD HH24:MI:SS'), 'unusual', '24', '28', '38', '118', '7', '38');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('623926627063037952', '1test222', '1fdg', '24.46028', '118.110275', 'test', 'test', '12', TO_DATE('2019-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2070-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test1', 'test', NULL, TO_DATE('2019-09-18 17:01:39', 'SYYYY-MM-DD HH24:MI:SS'), 'normal', '24', '27', '37', '118', '6', '37');

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
-- Records of tBase_AidEquip
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('624567201021558786', '604748743446626304', '624567201017364480', TO_DATE('2019-09-20 11:27:04', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('618951030515695616', '604748743446626304', '618233851264630784', TO_DATE('2019-09-04 23:30:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('611256305901895680', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('624573598136270851', '604748743446626304', '624573598136270848', TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('624574591053856769', '604748743446626304', '624574591045468160', TO_DATE('2019-09-20 11:56:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('628248045565247488', '625655802769702912', '624573598144659457', TO_DATE('2019-09-30 15:13:26', 'SYYYY-MM-DD HH24:MI:SS'));

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
-- Records of tBase_AidMapIcon
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_AidMapIcon" VALUES ('612996464179675136', 'normal', 'unusual', '604743636243972096');
INSERT INTO "AASYSTEM"."tBase_AidMapIcon" VALUES ('612997650043633664', 'normal', '3', '604074845818322944');

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
-- Records of tBase_AidTypeMapIcon
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_AidTypeMapIcon" VALUES ('612996387226779648', 'normal', 'normal', 'test');
INSERT INTO "AASYSTEM"."tBase_AidTypeMapIcon" VALUES ('623947874702458880', 'unusual', 'unusual', 'test');
INSERT INTO "AASYSTEM"."tBase_AidTypeMapIcon" VALUES ('623948015702376448', NULL, NULL, 'test');

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
-- Records of tBase_App
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_App" VALUES ('607151741296705536', 'test', '1564797855451', 'dc4285c24caf9ca41c3c9af72b9b0c0b', '1', TO_DATE('2019-08-03 10:04:15', 'SYYYY-MM-DD HH24:MI:SS'), '1');

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
-- Records of tBase_AppMenu
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_AppMenu" VALUES ('607158891700027392', '607151741296705536', '100', '1002,1003,1006,1005');
INSERT INTO "AASYSTEM"."tBase_AppMenu" VALUES ('607158891700027393', '607151741296705536', '200', '2005,2006');

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
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801004', '4', '自定义消息', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, 'http://www.baidu.com', NULL);
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
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624567201017364480', '2radar', '1', '12', NULL, NULL, 'EquipRadar', '9', NULL, '604748743446626304', TO_DATE('2019-09-20 11:27:04', 'SYYYY-MM-DD HH24:MI:SS'), '2radar', NULL, 'test', '2', TO_DATE('2019-10-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-09-20 11:27:04', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-09-20 11:27:04', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618233851264630784', '1', NULL, NULL, NULL, NULL, 'EquipAIS', '9', NULL, '604748743446626304', TO_DATE('2019-09-03 00:00:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, 'test', '1', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-09-04 23:30:24', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618234038343172096', '2', NULL, NULL, NULL, NULL, 'EquipRadar', '0', NULL, NULL, TO_DATE('2019-09-03 00:01:20', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, 'test', '2', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '2', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618234272909623296', '3', NULL, NULL, NULL, NULL, 'EquipTelemetry', '0', NULL, NULL, TO_DATE('2019-09-03 00:02:16', 'SYYYY-MM-DD HH24:MI:SS'), '3', NULL, 'test', '3', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618234509829079040', '4', NULL, NULL, NULL, NULL, 'EquipBattery', '0', NULL, NULL, TO_DATE('2019-09-03 00:03:13', 'SYYYY-MM-DD HH24:MI:SS'), '4', NULL, 'test', '4', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618234729317007360', '5', NULL, NULL, NULL, NULL, 'EquipSolarEnergy', '0', NULL, NULL, TO_DATE('2019-09-03 00:04:05', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, 'test', '5', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '5', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618237640889597952', '6', NULL, NULL, NULL, NULL, 'EquipSpareLamp', '0', NULL, NULL, TO_DATE('2019-09-03 00:15:39', 'SYYYY-MM-DD HH24:MI:SS'), '6', NULL, 'test', '6', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '6', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618237751652777984', '7', NULL, NULL, NULL, NULL, 'EquipViceLamp', '0', NULL, NULL, TO_DATE('2019-09-03 00:16:06', 'SYYYY-MM-DD HH24:MI:SS'), '7', NULL, 'test', '7', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '7', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618238026161586176', NULL, NULL, NULL, NULL, NULL, 'EquipLamp', '0', NULL, NULL, TO_DATE('2019-09-03 00:17:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, 'test', '8', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '8', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618238487442751488', '8', NULL, NULL, NULL, NULL, 'EquipLamp', '0', NULL, NULL, TO_DATE('2019-09-03 00:19:01', 'SYYYY-MM-DD HH24:MI:SS'), '8', NULL, 'test', '8', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '8', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('618239505467441152', '9', NULL, NULL, NULL, NULL, 'EquipLamp', '0', NULL, NULL, TO_DATE('2019-09-03 00:23:04', 'SYYYY-MM-DD HH24:MI:SS'), '9', NULL, 'test', '9', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '9', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('617859966383947776', '11111111111111111111122222', NULL, NULL, NULL, NULL, 'EquipAIS', '0', NULL, NULL, TO_DATE('2019-09-01 23:14:55', 'SYYYY-MM-DD HH24:MI:SS'), '11111111111111111111122222', NULL, 'test', '111122', TO_DATE('2019-09-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '111122', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('614529104644931584', '12111', '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-08-23 18:39:15', 'SYYYY-MM-DD HH24:MI:SS'), '12111', NULL, 'test', '22', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('2', '2', ' ', ' ', ' ', ' ', '2', '2', NULL, '620011995176894464', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, 'test', '111111', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-10-31 17:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('3', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3', NULL, 'test', '22', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('4', '3', '3', '3', '3', '3', '3', '8', NULL, NULL, NULL, '3', NULL, 'test', '33', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('5', '3', '3', '3', '3', '3', '3', '8', NULL, NULL, NULL, '3', NULL, 'test', '44', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('6', '3', '3', '3', '3', '3', '3', '8', NULL, NULL, NULL, '3', NULL, 'test', '55', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('7', '3', '3', '3', '3', '3', '3', '7', NULL, NULL, NULL, '3', NULL, 'test', '66', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('8', '3', '3', '3', '3', '3', '3', '7', NULL, NULL, NULL, '3', NULL, NULL, '77', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('9', '3', '3', '3', '3', '3', '3', '7', NULL, NULL, NULL, '3', NULL, NULL, '88', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10', '10', '3', '3', '3', '3', '3', '10', NULL, NULL, NULL, '3', NULL, NULL, '22', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('11', '3', '3', '3', '3', '3', '3', '10', NULL, NULL, NULL, '3', NULL, NULL, '11', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('12', '3', '3', '3', '3', '3', '3', '10', NULL, NULL, NULL, '3', NULL, NULL, '33', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('13', '3', '3', '3', '3', '3', '3', '10', NULL, NULL, NULL, '3', NULL, NULL, '44', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('14', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3', NULL, NULL, '55', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('15', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3', NULL, NULL, '66', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('16', '16', '1', '12', '121', '1212', '3', '3', NULL, NULL, NULL, '3', NULL, NULL, '77', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('610646900542013440', '123333123', NULL, NULL, NULL, NULL, 't', '0', NULL, NULL, TO_DATE('2019-08-13 01:32:46', 'SYYYY-MM-DD HH24:MI:SS'), '123333123', NULL, NULL, '88', NULL, NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('606098577566990336', '606098577566990336', '1', '12', '121', '1212', 't', '8', '603723565073694720', NULL, TO_DATE('2019-07-31 12:19:21', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, '99', NULL, NULL, NULL, '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('611145406239211520', 'reres', '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '9', NULL, '604748743446626304', TO_DATE('2019-08-14 10:33:39', 'SYYYY-MM-DD HH24:MI:SS'), 're', NULL, NULL, '11', NULL, NULL, NULL, '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('611149995122360320', 'wewewe', '604434599291912192', '604613628313731072', NULL, NULL, 't', '1', NULL, NULL, TO_DATE('2019-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), 'wewe', NULL, NULL, '11', NULL, NULL, NULL, '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('614596394342154240', 'e2', NULL, NULL, NULL, NULL, 'EquipLamp', '0', NULL, NULL, TO_DATE('2019-08-23 23:06:39', 'SYYYY-MM-DD HH24:MI:SS'), 'e2', NULL, 'test', '22', TO_DATE('2019-08-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('614595567070216192', 'ee', '1', '12', '121', '1212', 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10000', 'ee1', '2', '12', '121', '1212', 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10003', 'ee13', '3', '12', '121', '1212', 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10004', 'ee14', '4', '12', '121', '1212', 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10005', 'ee15', '5', '12', '121', '1212', 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598136270848', 'relamp', '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '9', NULL, '604748743446626304', TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), 'relamp', NULL, NULL, '11', NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598144659456', '5solar', NULL, NULL, NULL, NULL, 'EquipSolarEnergy', '0', NULL, NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '5solar', NULL, 'test', '5', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '5', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598144659457', '6slamp', '604434599291912192', NULL, NULL, NULL, 'EquipSpareLamp', '9', NULL, '625655802769702912', TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '6slamp', NULL, 'test', '6', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-09-30 15:13:26', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '6', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598144659458', 'eeAis', '5', NULL, NULL, NULL, 'EquipAIS', '1', NULL, NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), 'eeAis', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598148853761', '3t', NULL, NULL, NULL, NULL, 'EquipTelemetry', '0', NULL, NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '3t', NULL, 'test', '3', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '3', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598148853762', '4Battary', NULL, NULL, NULL, NULL, 'EquipBattery', '0', NULL, NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '4Battary', NULL, 'test', '4', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '4', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624573598148853763', '7vlamp', NULL, NULL, NULL, NULL, 'EquipViceLamp', '0', NULL, NULL, TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '7vlamp', NULL, 'test', '7', TO_DATE('2019-09-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '7', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('624574591045468160', 'relamp2', '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '9', NULL, '604748743446626304', TO_DATE('2019-09-20 11:56:26', 'SYYYY-MM-DD HH24:MI:SS'), 'relamp2', NULL, NULL, '11', NULL, TO_DATE('2019-09-20 11:56:26', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-09-20 11:56:26', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL);

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
-- Records of tBase_EquipLog
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('639510418942853120', '1', TO_DATE('2019-10-31 17:05:55', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材入库', NULL, '192.168.59.168', '1', '13', '131', '604428989146071040', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('639532698464944128', '2', TO_DATE('2019-10-31 18:34:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材出库', NULL, '192.168.59.168', '1', '13', '131', '604428989146071040', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('633030404563009536', '10', TO_DATE('2019-10-13 19:56:37', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618234038343172096', '器材异常', '测试1111', '192.168.1.6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('633032711660896256', '10', TO_DATE('2019-10-13 20:05:51', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材异常', '分别是不饿呀呢吧', '192.168.1.6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('633075628563759104', '10', TO_DATE('2019-10-13 22:56:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材异常', '123', '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638488225240842240', '1', TO_DATE('2019-10-28 21:24:02', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材入库', '方法过得', '192.168.1.6', '1', '12', '121', '1211', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638488581114953728', '2', TO_DATE('2019-10-28 21:25:38', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材出库', NULL, '192.168.1.6', '1', '12', '121', '1211', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638488638811799552', '1', TO_DATE('2019-10-28 21:25:47', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材入库', '高大上', '192.168.1.6', '607149452645367808', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638497580287787008', '2', TO_DATE('2019-10-28 22:01:23', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材出库', NULL, '192.168.1.6', '607149452645367808', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638498290924519424', '9', TO_DATE('2019-10-28 22:04:06', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材使用中', '测试', '192.168.1.6', NULL, NULL, NULL, NULL, '626209721233178624');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('624429661903912960', '1', TO_DATE('2019-09-20 02:20:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '624429661891330048', '器材入库', NULL, '127.0.0.1', '1', '12', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('624429661903912961', '9', TO_DATE('2019-09-20 02:20:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '624429661891330048', '器材使用中', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('618951026266865664', '9', TO_DATE('2019-09-04 23:30:24', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '618233851264630784', '器材使用中', '111111', '192.168.1.33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('626890775266852864', '9', TO_DATE('2019-09-26 21:20:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618237751652777984', '器材使用中', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('614529104644931585', '1', TO_DATE('2019-08-23 18:39:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614529104644931584', '器材入库', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('1', NULL, TO_DATE('2019-08-01 15:59:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '1000', '10100101001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('2', NULL, TO_DATE('2019-08-02 16:01:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '11111', '11111111111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('3', NULL, TO_DATE('2019-08-03 16:02:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '222222', '222222222222', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611154333303570432', '1', TO_DATE('2019-08-14 11:09:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611256305071423488', '9', TO_DATE('2019-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材使用中', NULL, '192.168.106.67', '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611145683755335680', '1', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', 'of', '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611147685268815872', '9', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', 'you', '192.168.106.67', '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611148412338831360', '8', TO_DATE('2025-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', 'uu', '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149096329150464', '1', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149879342792704', '9', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', '器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库', '192.168.106.67', '607149452645367808', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149995122360321', '8', TO_DATE('2020-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611152641623326720', '2', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材出库', 'GBM', '192.168.106.67', '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611163237706104832', '4', TO_DATE('2019-08-14 11:44:30', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材运输中', 'good', '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('614941143708205056', '1', TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('6112563050714234881', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材报废', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10000', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10000', '器材报废', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10001', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10000', '器材入库', NULL, '192.168.106.67', '2', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10002', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10003', '器材入库', NULL, '192.168.106.67', '3', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10003', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10003', '器材入库', NULL, '192.168.106.67', '3', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10004', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10004', '器材入库', NULL, '192.168.106.67', '4', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10005', '8', TO_DATE('2022-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10004', '器材入库', NULL, '192.168.106.67', '4', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10006', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10005', '器材入库', NULL, '192.168.106.67', '5', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10007', '8', TO_DATE('2023-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10005', '器材入库', NULL, '192.168.106.67', '5', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('632880679704592384', '2', TO_DATE('2019-09-13 10:01:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618234038343172096', '器材出库', '测试', '192.168.1.6', NULL, NULL, NULL, NULL, NULL);

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
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('604790269384065024', 'test', '0');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('1', '超级管理组', '1');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('2', '管理员组', '1');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('3', '普通用户组', '1');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('623569632606814208', 'test2', '0');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('623569632606814212', '超级管理组2', '0');

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
-- Records of tBase_GroupMenu
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612672', '604790269384065024', '100', '1001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612673', '604790269384065024', '200', '2001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612674', '604790269384065024', '300', '3001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612675', '604790269384065024', '630', '630001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612676', '604790269384065024', '641', '641001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612677', '604790269384065024', '400', '4001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612678', '604790269384065024', '620', '620001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612679', '604790269384065024', '642', '642001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612680', '604790269384065024', '500', '2');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612681', '604790269384065024', '611', '611001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612682', '604790269384065024', '612', '612001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606971062147612683', '604790269384065024', '700', '7001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955070528946176', '2', '641', '641001,641002,641003,641004,641005,641006,641007');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955070528946177', '2', '642', '642001,642002,642003,642004,642005,642006,642007');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955261797597184', '3', '100', '1001,1002,1003,1004');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955261797597185', '3', '200', '2001,2002,2003,2004');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955261797597186', '3', '300', '3001,3002,3003,3004');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955261797597187', '3', '400', '4001');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('606955261797597188', '3', '700', '7001,7002,7003,7004');

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

-- ----------------------------
-- Table structure for tBase_MenuInterface
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_MenuInterface";
CREATE TABLE "AASYSTEM"."tBase_MenuInterface" (
  "sInterface_ID" NVARCHAR2(32) NOT NULL ,
  "sInterface_Name" NVARCHAR2(10) ,
  "sInterface_Url" NVARCHAR2(255) ,
  "sInterface_MenuID" NVARCHAR2(255) ,
  "lInterface_StatusFlag" NUMBER DEFAULT 1  
 
 
 
 
 
 
 
 
 
 
 
 
                 ,
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
-- Records of tBase_Message
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651648', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651649', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651650', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651651', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651652', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651653', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651654', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651655', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651656', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651657', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651658', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651659', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651660', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651661', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651662', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651663', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651664', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651665', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651666', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651667', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651668', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651669', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651670', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651671', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651672', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651673', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651674', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651675', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651676', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651677', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651678', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651679', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651680', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651681', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651682', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651683', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651684', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651685', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651686', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651687', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651688', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618928283370651689', '1', TO_DATE('2019-09-04 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620006738111758336', '4', TO_DATE('2019-09-07 21:25:25', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, NULL, NULL, '604748743446626304', NULL, NULL, '1', '10', '3', '新建任务', NULL, NULL, NULL, NULL, '0', '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840784', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840785', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840786', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840787', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840788', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840789', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840790', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('1', '1', TO_DATE('2019-08-17 00:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', 'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('2', '1', TO_DATE('2019-08-15 00:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', 'test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('3', '3', TO_DATE('2019-08-18 00:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常', 'cccc', TO_DATE('2019-08-18 14:57:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '604748743446626304', '192.168.1.16', NULL, '1', '1', '4', '器材异常', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('4', '3', TO_DATE('2019-08-19 15:41:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, TO_DATE('2019-08-20 11:09:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '192.168.106.67', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696714', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696715', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696716', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696717', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696718', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696719', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696720', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696721', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696722', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696723', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696724', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696725', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696726', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696727', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696728', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696729', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696730', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696731', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696732', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696733', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696734', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696735', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696736', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696737', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696738', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696739', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696740', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696741', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696742', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696743', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696744', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696745', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840791', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840792', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840793', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840794', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840795', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840796', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840797', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840798', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840799', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840800', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840801', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840802', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840803', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840804', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877888', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877889', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877890', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877891', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877892', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877893', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877894', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877895', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877896', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877897', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877898', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877899', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877900', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877901', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877902', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877903', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877904', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877905', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877906', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877907', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877908', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877909', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877910', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877911', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877912', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877913', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877914', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877915', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877916', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877917', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877918', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877919', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877920', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877921', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877922', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877923', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877924', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877925', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877926', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877927', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877928', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618210434259877929', '1', TO_DATE('2019-09-02 22:27:33', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696704', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696705', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696706', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696707', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696708', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696709', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696710', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696711', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696712', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942336', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942337', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942338', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942339', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942340', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942341', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942342', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942343', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942344', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942345', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136640', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136641', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136642', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136643', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136644', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136645', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136646', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136647', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136648', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136649', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136650', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136651', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136652', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136653', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136654', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136655', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136656', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136657', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136658', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136659', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136660', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136661', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136662', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136663', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136664', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136665', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136666', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136667', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136668', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136669', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136670', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136671', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('618565911082696713', '1', TO_DATE('2019-09-03 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840768', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840769', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840770', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840771', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840772', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840773', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840774', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840775', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072334880768', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072334880769', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072334880770', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072334880771', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075072', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075073', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075074', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075075', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075076', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075077', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075078', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075079', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075080', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075081', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075082', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075083', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075084', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075085', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075086', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075087', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075088', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075089', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075090', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075091', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075092', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072339075093', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269376', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269377', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269378', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269379', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269380', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269381', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269382', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269383', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269384', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269385', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269386', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269387', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269388', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269389', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269390', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('619653072343269391', '1', TO_DATE('2019-09-06 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840776', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840777', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840778', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840779', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840780', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840781', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840782', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840783', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477573', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477574', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477575', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477576', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477577', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477578', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671872', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671873', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671874', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671875', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671876', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671877', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671878', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671879', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671880', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671881', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671882', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671883', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671884', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671885', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671886', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671887', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671888', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671889', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671890', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671891', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671892', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881998671893', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882002866176', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882002866177', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882002866178', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882002866179', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882002866180', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882002866181', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882007060480', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882007060481', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021882007060482', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620648878923841536', '4', TO_DATE('2019-09-09 15:57:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618233851264630784', '66666666666666666999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999', NULL, NULL, NULL, '604748743446626304', NULL, '1', NULL, '10', '3', '自定义消息', NULL, NULL, NULL, NULL, '0', '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077248', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077249', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077250', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077251', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077252', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077253', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077254', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077255', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077256', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077257', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077258', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077259', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077260', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077261', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077262', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077263', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077264', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077265', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077266', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077267', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077268', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077269', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077270', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077271', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077272', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077273', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077274', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077275', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077276', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077277', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077278', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077279', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077280', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077281', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077282', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077283', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077284', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077285', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077286', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077287', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077288', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('621102603329077289', '1', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('640933035469963264', NULL, TO_DATE('2019-11-04 15:19:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '10', '3', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620626226481987584', '4', TO_DATE('2019-09-09 14:27:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, '618233851264630784', NULL, '1', '1', '10', '3', '自定义消息', NULL, NULL, NULL, NULL, '0', '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620629547003412480', '4', TO_DATE('2019-09-09 14:40:14', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618233851264630784', NULL, NULL, NULL, NULL, '604748743446626304', NULL, '1', '1', '10', '3', '自定义消息', NULL, NULL, NULL, NULL, '0', '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620631024971284480', '4', TO_DATE('2019-09-09 14:46:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '10', '3', '自定义消息', '1', '12', '121', '1212', '0', '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892416', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892417', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892418', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892419', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892420', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892421', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892422', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892423', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892424', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892425', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892426', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892427', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892428', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892429', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892430', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892431', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892432', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892433', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892434', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892435', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892436', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892437', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892438', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892439', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892440', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892441', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892442', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892443', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892444', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892445', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892446', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892447', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892448', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892449', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892450', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892451', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892452', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892453', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892454', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892455', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892456', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892457', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892458', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892459', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892460', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892461', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892462', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892463', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892464', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892465', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892466', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892467', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892468', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('625813645128892469', '1', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163623182336', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, TO_DATE('2019-11-01 16:15:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, '192.168.59.168', NULL, NULL, '1', '2', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163623182337', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163623182338', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376640', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376641', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376642', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376643', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376644', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376645', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376646', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376647', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376648', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376649', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376650', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376651', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376652', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376653', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376654', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '4', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376655', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376656', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376657', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376658', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376659', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376660', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', NULL, NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376661', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376662', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376663', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376664', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376665', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376666', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '1', '12', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376667', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376668', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376669', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376670', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376671', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376672', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376673', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376674', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376675', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376676', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376677', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376678', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376679', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376680', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376681', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376682', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376683', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376684', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376685', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376686', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376687', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376688', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376689', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('626918163627376690', '1', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840805', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840806', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840807', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840808', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620015444471840809', '1', TO_DATE('2019-09-07 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392384', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392385', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392386', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392387', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392388', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392389', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392390', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392391', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392392', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392393', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392394', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392395', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392396', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392397', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392398', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392399', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392400', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392401', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392402', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797157392403', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586688', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586689', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586690', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586691', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586692', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586693', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586694', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586695', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586696', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586697', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586698', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586699', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586700', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586701', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586702', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586703', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586704', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586705', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586706', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586707', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586708', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620024797161586709', '1', TO_DATE('2019-09-07 22:37:11', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477568', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477569', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477570', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477571', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('620021881994477572', '1', TO_DATE('2019-09-07 22:25:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1', NULL, NULL);

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
-- Records of tBase_Nfc
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('618251520986578944', '04A2DEC2C64880', '04A2DEC2C64880', '0', TO_DATE('2019-09-03 01:10:49', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606884269125533696', '12', '12', '1', TO_DATE('2019-08-02 16:21:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606886687372476416', 'ttt222222', 'tttt222222222', '0', TO_DATE('2019-08-02 16:31:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606885149241507840', 'ttt', 'ttt', '0', TO_DATE('2019-08-02 16:24:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606885697294434304', 'ttt', 'ttt', '0', TO_DATE('2019-08-02 16:27:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('604752194377351168', '123111', '123111', '0', TO_DATE('2019-07-27 19:09:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('603723565073694720', '04A2DEC2C64880', '04A2DEC2C64880', '1', TO_DATE('1970-01-01 08:00:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('604078755886923776', '12', '12', '1', TO_DATE('2019-07-25 22:33:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('618574880287227904', '049FDEC2C64880', '049FDEC2C64880', '0', TO_DATE('2019-09-03 22:35:44', 'SYYYY-MM-DD HH24:MI:SS'));

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
-- Records of tBase_Store
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('612320667446018048', 'teee', '1', NULL, NULL, '1', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('612328289813397504', '112', '612326895639330816', NULL, NULL, '612326895639330816', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604428777530851328', 'test', '1', '13', '131', '131', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604428989146071040', '33', '1', '13', '131', '131', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604436805260935168', 'test', '1', '12', NULL, '12', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('11', '112', '1', NULL, NULL, '1', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('12', '12', '1', NULL, NULL, '1', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('121', '121', '1', '12', NULL, '12', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('1211', '1211', '1', '12', '121', '121', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('1212', '1212', '1', '12', '121', '121', '1');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('13', '13', '1', NULL, NULL, '1', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('131', '131', '1', '13', NULL, '13', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604445267793543168', '66', '1', '11', NULL, '11', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604613628313731072', 'ttt', '604434599291912192', NULL, NULL, '604434599291912192', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624255323942682653', '12133.0', '1', '12', NULL, '12', '2');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624255323942682655', '1233.0', '1', NULL, NULL, '1', '3');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624255323942682656', '12133.0', '1', '624255323942682655', NULL, '624255323942682655', '2');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624255323946876931', '121233.0', '1', '624255323942682655', '624255323942682656', '624255323942682656', '33');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624256115747586048', '1233import', '624256115739197442', NULL, NULL, '624256115739197442', '3');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624256115747586049', '12133import', '624256115739197442', '624256115747586048', NULL, '624256115747586048', '2');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('624256115747586050', '121233import', '624256115739197442', '624256115747586048', '624256115747586049', '624256115747586049', '33');

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
-- Records of tBase_StoreLog
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121114402684928', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470400', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470401', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470402', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470403', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470404', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470405', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642121115002470406', TO_DATE('2019-11-07 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284416', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284417', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284418', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284419', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284420', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284421', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284422', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643208267396284423', TO_DATE('2019-11-10 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968384', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968385', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968386', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968387', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968388', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968389', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968390', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968391', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968392', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968393', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968394', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('621102603261968395', TO_DATE('2019-09-10 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954432', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954433', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954434', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', NULL, NULL, 'EquipRadar', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954435', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954436', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954437', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954438', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954439', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954440', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954441', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954442', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '3');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954443', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954444', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('625813644935954445', TO_DATE('2019-09-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655040', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655041', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655042', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', NULL, NULL, 'EquipRadar', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655043', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655044', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655045', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655046', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655047', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655048', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655049', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655050', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '3');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655051', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655052', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('626918161949655053', TO_DATE('2019-09-26 23:08:57', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149376', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149377', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149378', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149379', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149380', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149381', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996114149382', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('639221996118343680', TO_DATE('2019-10-30 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466166845440', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039744', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039745', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039746', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039747', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039748', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039749', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039750', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039751', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039752', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039753', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('617847466171039754', TO_DATE('2019-09-01 22:25:14', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529984', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529985', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529986', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529987', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529988', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529989', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529990', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529991', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529992', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529993', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529994', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620021879599529995', TO_DATE('2019-09-07 22:25:35', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049280', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049281', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049282', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049283', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049284', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049285', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049286', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431630049287', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431634243584', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431634243585', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431634243586', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618210431634243587', TO_DATE('2019-09-02 22:27:32', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653064999043072', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610816', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610817', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610818', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610819', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610820', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610821', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610822', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610823', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065464610824', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065552691200', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('619653065552691201', TO_DATE('2019-09-06 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('2', TO_DATE('2019-08-02 22:23:40', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('3', TO_DATE('2019-08-03 22:24:06', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('4', TO_DATE('2019-08-04 22:24:24', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('5', TO_DATE('2019-08-06 23:59:46', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('6', TO_DATE('2019-08-07 23:59:46', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('7', TO_DATE('2019-08-08 23:59:46', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('8', TO_DATE('2019-08-09 23:59:46', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('9', TO_DATE('2019-08-10 23:59:46', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('10', TO_DATE('2019-08-11 23:59:46', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('1', TO_DATE('2019-08-01 22:23:17', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, 'EquipLamp', '4');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361024', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361025', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361026', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361027', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361028', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361029', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361030', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361031', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361032', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361033', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361034', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618565906175361035', TO_DATE('2019-09-03 22:00:04', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779904', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779905', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779906', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779907', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779908', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779909', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779910', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779911', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779912', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779913', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779914', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('618928278710779915', TO_DATE('2019-09-04 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442794119168', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442794119169', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442794119170', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442794119171', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313472', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313473', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313474', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313475', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313476', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313477', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313478', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620015442798313479', TO_DATE('2019-09-07 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795488059392', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253696', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253697', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253698', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253699', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253700', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '2', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253701', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253702', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253703', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', '3', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253704', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 'EquipLamp', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253705', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAis', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('620024795492253706', TO_DATE('2019-09-07 22:37:10', 'SYYYY-MM-DD HH24:MI:SS'), '3', '3', '3', '3', '3', '13');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491933519872', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491933519873', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491933519874', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491933519875', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491933519876', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491933519877', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491937714176', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642483491937714177', TO_DATE('2019-11-08 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898279223296', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430912', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430913', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430914', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430915', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430916', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430917', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('642845898715430918', TO_DATE('2019-11-09 22:00:05', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656310460416', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654720', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654721', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654722', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654723', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654724', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654725', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('643570656314654726', TO_DATE('2019-11-11 22:00:01', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762048', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762049', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762050', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762051', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762052', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762053', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762054', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('647919305173762055', TO_DATE('2019-11-23 22:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135424', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '3', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135425', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '4', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135426', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '604434599291912192', '604613628313731072', NULL, NULL, 't', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135427', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '5', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135428', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135429', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '5', NULL, NULL, NULL, 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335836135430', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '2', '12', '121', '1212', 'EquipAIS', '1');
INSERT INTO "AASYSTEM"."tBase_StoreLog" VALUES ('641396335840329728', TO_DATE('2019-11-05 22:00:03', 'SYYYY-MM-DD HH24:MI:SS'), '1', '12', '121', '1212', 'EquipAIS', '1');

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
-- Records of tBase_StoreType
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('620991253420441600', '12121', NULL, '1.016975', '2.034289', NULL, '0', NULL, '1', '1', '1.11', '2', '2', '3.44');
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('612326895639330816', '11', '11', '24.470152', '118.160126', 'test2', '11', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('604434599291912192', '12', '123', '24.48', '118.17', 'test2', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('1', '1', '1', '24.49', '118.18', 'test', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('607149452645367808', 'rwrwr', 'rrr', '24.46', '118.15', 'test2', '11', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('2', '2', '2', '24.49', '118.181', 'test2', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('3', '3', '3', '24.49', '118.182', 'test3', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('4', '4', '4', '24.49', '118.183', 'test4', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('5', '5', '5', '1.0343194', '22.051233', 'test5', '11', NULL, '1', '2', '3.55', '22', '3', '4.44');
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('620025201677041664', '1321', NULL, '1.03435', '3.068611', NULL, '0', NULL, '1', '2', '3.66', '3', '4', '6.999');
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('624256115739197442', '1import', '1import', '1.0341667', '6.118889', 'test', '100', NULL, '1', '2', '3', '6', '7', '8');

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
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970950960807936', TO_DATE('2019-08-02 22:05:51', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/group/update', '更新用户组', '178', 'update', '{"sGroup_ID":["604790269384065024"],"sGroup_Name":["test"],"lGroup_SysFlag":["0"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606971062298607616', TO_DATE('2019-08-02 22:06:18', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '64', 'updateGroupMenuAuth', '{"100":["1001"],"200":["2001"],"300":["3001"],"400":["4001"],"500":["2"],"611":["611001"],"612":["612001"],"620":["620001"],"630":["630001"],"641":["641001"],"642":["642001"],"700":["7001"],"sGroup_ID":["604790269384065024"]}', '{"msg":"成功 ","code":1,"data":12}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606971155399573504', TO_DATE('2019-08-02 22:06:40', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/update', '更新用户', '175', 'update', '{"sUser_ID":["606138587578105856"],"sUser_UserName":["test"],"sUser_PassWord":["098f6bcd4621d373cade4e832627b4f6"],"sUser_Nick":["test"],"lUser_StatusFlag":["1"],"sUser_GroupID":["604790269384065024"],"sUser_QQ":[""],"sUser_Email":[""],"sUser_Phone":[""],', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606971177792962560', TO_DATE('2019-08-02 22:06:45', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606971193982976000', TO_DATE('2019-08-02 22:06:49', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '15', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607150517478490112', TO_DATE('2019-08-03 09:59:23', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607150536688402432', TO_DATE('2019-08-03 09:59:28', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607151743343525888', TO_DATE('2019-08-03 10:04:15', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/app/add', '新增应用', '523', 'add', '{"sApp_NO":["******"],"sApp_Name":["test"],"sApp_SecretKey":["******"],"lApp_StatusFlag":["1"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AppController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607158738461130752', TO_DATE('2019-08-03 10:32:03', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateAppMenuAuth', '更新应用菜单权限', '112', 'updateAppMenuAuth', '{"100":["1002,1003"],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sApp_ID":["607151741296705536"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607158891758747648', TO_DATE('2019-08-03 10:32:40', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateAppMenuAuth', '更新应用菜单权限', '42', 'updateAppMenuAuth', '{"100":["1002,1003,1006,1005"],"200":["2005,2006"],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sApp_ID":["607151741296705536"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607189064176631808', TO_DATE('2019-08-03 12:32:33', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8512', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606951321232211968', TO_DATE('2019-08-02 20:47:51', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '28', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606951340140134400', TO_DATE('2019-08-02 20:47:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '50', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606942957081198592', TO_DATE('2019-08-02 20:14:37', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '25', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606943262367809536', TO_DATE('2019-08-02 20:15:50', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '25', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606947871593332736', TO_DATE('2019-08-02 20:34:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '4853', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957207463919616', TO_DATE('2019-08-02 21:11:14', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '8', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970910389305344', TO_DATE('2019-08-02 22:05:42', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/group/delete', '删除用户组', '51', 'delete', '{"sGroup_ID":["604790286601682944"]}', NULL, NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606978875536179200', TO_DATE('2019-08-02 22:37:21', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '9', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606978899636649984', TO_DATE('2019-08-02 22:37:26', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '51', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607147011682074624', TO_DATE('2019-08-03 09:45:27', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '295', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607149452712476672', TO_DATE('2019-08-03 09:55:09', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '66', 'add', '{"level":["1"],"name":["rwrwr"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"sStoreType_Address":["rrr"],"lStoreType_Lat":["qq"],"lStoreType_Lng":["qq"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607150076539699200', TO_DATE('2019-08-03 09:57:38', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '62', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607150095929966592', TO_DATE('2019-08-03 09:57:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970838360522752', TO_DATE('2019-08-02 22:05:24', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '5', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606882681145262080', TO_DATE('2019-08-02 16:15:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '27', 'login', '{"username":["test"]}', '{"msg":"密码错误","code":-110,"data":2}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606882669829029888', TO_DATE('2019-08-02 16:15:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1511', 'login', '{"username":["test"]}', '{"msg":"密码错误","code":-110,"data":3}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606882686623023104', TO_DATE('2019-08-02 16:15:07', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18', 'login', '{"username":["test"]}', '{"msg":"密码错误","code":-110,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606882697016508416', TO_DATE('2019-08-02 16:15:10', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '27', 'login', '{"username":["test"]}', '{"msg":"密码错误","code":-110,"data":0}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606882705816158208', TO_DATE('2019-08-02 16:15:12', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '12', 'login', '{"username":["test"]}', '{"msg":"账号登录失败，请1分钟后重试。","code":-108}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606882963048628224', TO_DATE('2019-08-02 16:16:13', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18', 'login', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606883091486605312', TO_DATE('2019-08-02 16:16:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', '606138587578105856', '127.0.0.1', 'test', '/api/user/login', '用户登录', '25', 'login', '{"username":["test"]}', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606883992884477952', TO_DATE('2019-08-02 16:20:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', '606138587578105856', '127.0.0.1', 'test', '/api/user/login', '用户登录', '1452', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606883994335707136', TO_DATE('2019-08-02 16:20:19', 'SYYYY-MM-DD HH24:MI:SS'), 'other', '606138587578105856', '127.0.0.1', 'test', '/api/user/isLogin', '检测用户是否已登录', '27', 'isLogin', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606884269289111552', TO_DATE('2019-08-02 16:21:25', 'SYYYY-MM-DD HH24:MI:SS'), 'add', '606138587578105856', '127.0.0.1', 'test', '/api/nfc/add', '新增NFC', '62', 'add', NULL, NULL, NULL, 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885532256960513', TO_DATE('2019-08-02 16:26:26', 'SYYYY-MM-DD HH24:MI:SS'), 'query', NULL, '127.0.0.1', NULL, '/api/user/authMenu', '查询用户权限', '704', 'authMenu', NULL, NULL, '{"msg":"未登录","code":-111}', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606886660008837120', TO_DATE('2019-08-02 16:30:55', 'SYYYY-MM-DD HH24:MI:SS'), 'login', '606138587578105856', '127.0.0.1', 'test', '/api/user/login', '用户登录', '482', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606886660952555520', TO_DATE('2019-08-02 16:30:55', 'SYYYY-MM-DD HH24:MI:SS'), 'other', '606138587578105856', '127.0.0.1', 'test', '/api/user/isLogin', '检测用户是否已登录', '2', 'isLogin', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606886687414419456', TO_DATE('2019-08-02 16:31:01', 'SYYYY-MM-DD HH24:MI:SS'), 'add', '606138587578105856', '127.0.0.1', 'test', '/api/nfc/add', '新增NFC', '35', 'add', '{"sNfc_Name":["ttt"],"sNfc_NO":["tttt"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606886856369373184', TO_DATE('2019-08-02 16:31:41', 'SYYYY-MM-DD HH24:MI:SS'), 'update', '606138587578105856', '127.0.0.1', 'test', '/api/nfc/update', '更新NFC', '26', 'update', '{"sNfc_ID":["606886687372476416"],"sNfc_Name":["ttt222222"],"sNfc_NO":["tttt222222222"],"lNfc_StatusFlag":["0"],"dNfc_CreateDate":["1564734661000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606887416283791360', TO_DATE('2019-08-02 16:33:55', 'SYYYY-MM-DD HH24:MI:SS'), 'update', '606138587578105856', '127.0.0.1', 'test', '/api/aid/bind', '航标绑定NFC', '75', 'bind', '{"sNfc_ID":["606886687372476416"],"type":["aid"],"id":["605889035314921472"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885061295341568', TO_DATE('2019-08-02 16:24:33', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/nfc/add', '新增NFC', '748', 'add', NULL, NULL, '{"msg":"未登录","code":-111}', 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885112646205440', TO_DATE('2019-08-02 16:24:46', 'SYYYY-MM-DD HH24:MI:SS'), 'other', '606138587578105856', '127.0.0.1', 'test', '/api/user/isLogin', '检测用户是否已登录', '40', 'isLogin', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885149317005312', TO_DATE('2019-08-02 16:24:54', 'SYYYY-MM-DD HH24:MI:SS'), 'add', '606138587578105856', '127.0.0.1', 'test', '/api/nfc/add', '新增NFC', '51', 'add', NULL, NULL, 'String index out of range: 255', 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885554914590720', TO_DATE('2019-08-02 16:26:31', 'SYYYY-MM-DD HH24:MI:SS'), 'login', '606138587578105856', '127.0.0.1', 'test', '/api/user/login', '用户登录', '461', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885555837337600', TO_DATE('2019-08-02 16:26:31', 'SYYYY-MM-DD HH24:MI:SS'), 'other', '606138587578105856', '127.0.0.1', 'test', '/api/user/isLogin', '检测用户是否已登录', '7', 'isLogin', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885697332183040', TO_DATE('2019-08-02 16:27:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', '606138587578105856', '127.0.0.1', 'test', '/api/nfc/add', '新增NFC', '31', 'add', NULL, NULL, 'String index out of range: 255', 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957158034046976', TO_DATE('2019-08-02 21:11:03', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '94', 'updateGroupMenuAuth', '{"100":["1001,1002,1003"],"200":[""],"300":[""],"400":[""],"500":["2"],"611":[""],"612":["612001,612002,612003,612004,612005,612006"],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sGroup_ID":["604790269384065024"]}', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957177000689664', TO_DATE('2019-08-02 21:11:07', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '45', 'updateGroupMenuAuth', '{"100":["1001,1002,1003"],"200":[""],"300":[""],"400":[""],"500":["2"],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sGroup_ID":["604790269384065024"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606958051605348352', TO_DATE('2019-08-02 21:14:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/changePWD', '修改用户密码', '51', 'changePWD', '{"oldPwd":["test"],"newPwd":["test"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606958072081940480', TO_DATE('2019-08-02 21:14:41', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '17', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUse', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606958088964014080', TO_DATE('2019-08-02 21:14:45', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606958109524492288', TO_DATE('2019-08-02 21:14:50', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606958527944065024', TO_DATE('2019-08-02 21:16:29', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/group/update', '更新用户组', '31', 'update', '{"sGroup_ID":["2"],"sGroup_Name":["管理员组"],"lGroup_SysFlag":["1"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606942605703380992', TO_DATE('2019-08-02 20:13:13', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '2652', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955070625415168', TO_DATE('2019-08-02 21:02:45', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '107', 'updateGroupMenuAuth', '{"100":[""],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":["641001,641002,641003,641004,641005,641006,641007"],"642":["642001,642002,642003,642004,642005,642006,642007"],"700":[""],"sGroup_ID":["2"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955262049255424', TO_DATE('2019-08-02 21:03:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '93', 'updateGroupMenuAuth', '{"100":["1001,1002,1003,1004"],"200":["2001,2002,2003,2004"],"300":["3001,3002,3003,3004"],"400":["4001"],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":["7001,7002,7003,7004"],"sGroup_ID":["3"]}', '{"msg":"成功 ","code":1,"data":5}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955336863055872', TO_DATE('2019-08-02 21:03:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/update', '更新用户', '51', 'update', '{"sUser_ID":["606138587578105856"],"sUser_UserName":["test"],"sUser_PassWord":["098f6bcd4621d373cade4e832627b4f6"],"sUser_Nick":["test"],"lUser_StatusFlag":["1"],"sUser_GroupID":["3"],"sUser_QQ":[""],"sUser_Email":[""],"sUser_Phone":[""],"sUser_ThirdID":[', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955421478944768', TO_DATE('2019-08-02 21:04:09', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '254', 'updateUserMenuAuth', '{"100":[""],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sUser_ID":["606138587578105856"]}', NULL, NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606956655367684096', TO_DATE('2019-08-02 21:09:03', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '76', 'updateUserMenuAuth', '{"100":["1001,1002,1003,1006,1004,1005"],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606956712871591936', TO_DATE('2019-08-02 21:09:17', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '40', 'updateUserMenuAuth', '{"100":[""],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957136592764928', TO_DATE('2019-08-02 21:10:58', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '41', 'updateGroupMenuAuth', '{"100":["1001,1002,1003"],"200":[""],"300":[""],"400":[""],"500":["2"],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sGroup_ID":["604790269384065024"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957227156176896', TO_DATE('2019-08-02 21:11:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '25', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUse', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957363504611328', TO_DATE('2019-08-02 21:11:52', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/nfc/delBind', '解除NFC绑定', '132', 'delBind', '{"sNfc_ID":["606886687372476416"],"id":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.NfcController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885111446634496', TO_DATE('2019-08-02 16:24:45', 'SYYYY-MM-DD HH24:MI:SS'), 'login', '606138587578105856', '127.0.0.1', 'test', '/api/user/login', '用户登录', '462', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612409512208367616', TO_DATE('2019-08-17 22:16:45', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '16', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140154614087680', TO_DATE('2019-08-14 10:12:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '1032', 'appLogin', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140269663846400', TO_DATE('2019-08-14 10:13:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '1003', 'appLogin', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140422613336064', TO_DATE('2019-08-14 10:13:51', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '384', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140576674316288', TO_DATE('2019-08-14 10:14:27', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '0', 'appAdd', '{"sEquip_NO":["rere"],"sEquip_Type":["t"],"sEquip_Name":["rere"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611141409113636864', TO_DATE('2019-08-14 10:17:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '0', 'appAdd', '{"sEquip_NO":["rere"],"sEquip_Type":["t"],"sEquip_Name":["rere"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611181461013266432', TO_DATE('2019-08-14 12:56:55', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '116', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611181628475047936', TO_DATE('2019-08-14 12:57:35', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/useToAid', 'app器材使用中', '271', 'appUseToAid', '{"sEquip_ID":["611145406239211520"],"remarks":[""]}', NULL, '{"msg":"缺少sAid_ID参数 ","code":-206}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611181682896142336', TO_DATE('2019-08-14 12:57:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/useToAid', 'app器材使用中', '46', 'appUseToAid', '{"sEquip_ID":["611145406239211520"],"remarks":[""]}', NULL, '{"msg":"缺少sAid_ID参数 ","code":-206}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611253229476380672', TO_DATE('2019-08-14 17:42:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '6161', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613027616470859776', TO_DATE('2019-08-19 15:12:53', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidMapIcon/add', '新增航标', '51', 'add', '{"sAidIcon_Status":["normal"],"sAidIcon_StatusIcon":["3"],"sAidIcon_AidID":["604743636243972096"]}', NULL, '{"msg":"604743636243972096--normal已存在","code":-105}', 'com.jian.system.controller.AidMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611253470594334720', TO_DATE('2019-08-14 17:43:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '284', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612267861603254272', TO_DATE('2019-08-17 12:53:53', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1273', 'login', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612328163841671168', TO_DATE('2019-08-17 16:53:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '61', 'update', '{"lStoreType_Lng":["11"],"lStoreType_Limit":["11"],"sStoreType_Name":["11"],"lStoreType_Lat":["11"],"sStoreType_Station":["test"],"sStore_Name":["11"],"sStoreType_Address":["11"],"sStore_ID":["612326895639330816"],"sStoreType_ID":["612326895639330816"],"l', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612328289859534848', TO_DATE('2019-08-17 16:54:00', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '53', 'add', '{"level":["2"],"name":["112"],"sStore_Level1":["612326895639330816"],"sStore_Level2":[""],"sStore_Level3":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346282836492288', TO_DATE('2019-08-17 18:05:30', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '61', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346306962128896', TO_DATE('2019-08-17 18:05:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '58', 'update', '{"sDict_ID":["107001"],"sDict_NO":["normal"],"sDict_Name":["正常地图图标"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["AidMapIconByStatus"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["1"],"sDict_Describe":[""],"sDict', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346358392684544', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '80', 'update', '{"sDict_ID":["107002"],"sDict_NO":["unusual"],"sDict_Name":["异常地图图标"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["AidMapIconByStatus"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["1"],"sDict_Describe":[""],"sDic', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359412853506048', TO_DATE('2019-08-17 18:57:41', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '43', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359475424133120', TO_DATE('2019-08-17 18:57:56', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '57', 'update', '{"lStoreType_Lng":["11"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sStore_Level2]":[""', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612390256250978304', TO_DATE('2019-08-17 21:00:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '87', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312847153627136', TO_DATE('2019-08-17 15:52:38', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/dict/delete', '删除数据字典', '48', 'delete', '{"sDict_ID":["612311872565149696"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611145406629281792', TO_DATE('2019-08-14 10:33:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '177', 'appAdd', '{"sEquip_NO":["re"],"sEquip_Name":["reres"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607221818150879232', TO_DATE('2019-08-03 14:42:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '190', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607321054481743872', TO_DATE('2019-08-03 21:17:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '527', 'login', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607321120403619840', TO_DATE('2019-08-03 21:17:18', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '29', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607193665906933760', TO_DATE('2019-08-03 12:50:51', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/updateUser', '更新航标分配的用户', '32', 'updateUser', '{"user":[""],"sAid_ID":["604617148949594112"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607252996442554368', TO_DATE('2019-08-03 16:46:36', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607283228440526848', TO_DATE('2019-08-03 18:46:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '135', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('609645962469572608', TO_DATE('2019-08-10 07:15:24', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1191', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610645738518478848', TO_DATE('2019-08-13 01:28:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '891', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610646900848197632', TO_DATE('2019-08-13 01:32:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '117', 'add', '{"sEquip_NO":["123333"],"sEquip_Name":["123333"],"sEquip_Type":["t"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612311872724533248', TO_DATE('2019-08-17 15:48:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '64', 'add', '{"sDict_NO":["12"],"sDict_Name":["12"],"sDict_DictTypeNO":["AidType"],"sDict_Describe":["12"],"sDict_Picture":["12"],"sDict_Link":["12"],"color":["#5F0404"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312687468085248', TO_DATE('2019-08-17 15:52:00', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '40', 'add', '{"sDict_NO":["12"],"sDict_Name":["12"],"sDict_DictTypeNO":["AidLighting"],"sDict_Describe":["12"],"sDict_Picture":["12"],"sDict_Link":["12"],"sDict_Color":["#8B0E0E"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312813884407808', TO_DATE('2019-08-17 15:52:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '36', 'update', '{"sDict_ID":["612312687417753600"],"sDict_NO":["12"],"sDict_Name":["12"],"dDict_CreateDate":["1566028320000"],"sDict_UserID":["1"],"sDict_DictTypeNO":["AidLighting"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describe":', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612996387251945472', TO_DATE('2019-08-19 13:08:47', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/add', '新增航标', '21', 'add', '{"sAidTypeIcon_Status":["normal"],"sAidTypeIcon_StatusIcon":["normal"],"sAidTypeIcon_Type":["test"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612996464217423872', TO_DATE('2019-08-19 13:09:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidMapIcon/add', '新增航标', '36', 'add', '{"sAidIcon_Status":["normal"],"sAidIcon_StatusIcon":["unusual"],"sAidIcon_AidID":["604743636243972096"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612997566228856832', TO_DATE('2019-08-19 13:13:28', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '38', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612997577507340288', TO_DATE('2019-08-19 13:13:31', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '27', 'add', '{"sDict_NO":["3"],"sDict_Name":["图标3"],"sDict_DictTypeNO":["MapIcon"],"sDict_Describe":[""],"sDict_Picture":["upload/20190819/201908191313287121266.png"],"sDict_Link":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612997650064605184', TO_DATE('2019-08-19 13:13:48', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidMapIcon/add', '新增航标', '33', 'add', '{"sAidIcon_Status":["normal"],"sAidIcon_StatusIcon":["3"],"sAidIcon_AidID":["604074845818322944"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613027506332631040', TO_DATE('2019-08-19 15:12:27', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '107', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607193608474329088', TO_DATE('2019-08-03 12:50:37', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/updateUser', '更新航标分配的用户', '44', 'updateUser', '{"user":["1,606138587578105856"],"sAid_ID":["604617148949594112"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607216787167117312', TO_DATE('2019-08-03 14:22:43', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateAid', '更新分配给用户的航标', '132', 'updateAid', '{"aid":["604074845818322944,604748743446626304,604748877744046080,604743636243972096,604745958013534208"],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":5}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610178318276231168', TO_DATE('2019-08-11 18:30:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18771', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611163240247853056', TO_DATE('2019-08-14 11:44:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/transport', 'app器材运输', '703', 'appTransport', '{"sEquip_ID":["611145406239211520"],"remarks":["good"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611173089077624832', TO_DATE('2019-08-14 12:23:39', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/dump', 'app器材已报废', '41', 'appDump', '{"sEquip_ID":["611145406239211520"],"remarks":["ghhhhn？n"]}', NULL, '{"msg":"未登录","code":-111}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611174086063685632', TO_DATE('2019-08-14 12:27:37', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '2656', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612296764807970816', TO_DATE('2019-08-17 14:48:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1546', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346348007587840', TO_DATE('2019-08-17 18:05:46', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '3', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612407471822077952', TO_DATE('2019-08-17 22:08:39', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '16', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612660206102380544', TO_DATE('2019-08-18 14:52:55', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.16', NULL, '/api/msg/app/read', 'app消息已读', '200', 'appRead', '{"sMsg_ID":["3"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612661106808193024', TO_DATE('2019-08-18 14:56:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.16', NULL, '/api/msg/app/handle', 'app处理消息', '50', 'appHandle', '{"remarks":["tyu"],"sMsg_ID":["3"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612661200861265920', TO_DATE('2019-08-18 14:56:52', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.16', NULL, '/api/msg/app/handle', 'app处理消息', '20', 'appHandle', '{"remarks":["yhj"],"sMsg_ID":["3"]}', NULL, '{"msg":"保存失败，消息已处理","code":-101}', 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612661259661213696', TO_DATE('2019-08-18 14:57:06', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.16', NULL, '/api/msg/app/unhandle', 'app设为待处理消息', '16', 'appUnHandle', '{"remarks":["fhbn"],"sMsg_ID":["3"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612661346592358400', TO_DATE('2019-08-18 14:57:27', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.16', NULL, '/api/msg/app/handle', 'app处理消息', '20', 'appHandle', '{"remarks":["cccc"],"sMsg_ID":["3"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312764043493376', TO_DATE('2019-08-17 15:52:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '53', 'update', '{"sDict_ID":["612311872565149696"],"sDict_NO":["12"],"sDict_Name":["12"],"dDict_CreateDate":["1566028126000"],"sDict_UserID":["1"],"sDict_DictTypeNO":["AidType"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describe":["12', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612407490113437696', TO_DATE('2019-08-17 22:08:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '17', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612409486266597376', TO_DATE('2019-08-17 22:16:39', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359960893849600', TO_DATE('2019-08-17 18:59:51', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '94', 'update', '{"lStoreType_Lng":["118.15"],"lStoreType_Limit":["0"],"sStoreType_Name":["rwrwr"],"lStoreType_Lat":["24.46"],"sStoreType_Station":[""],"sStore_Name":["rwrwr"],"sStoreType_Address":["rrr"],"sStoreType_MapIcon":["2"],"sStore_ID":["607149452645367808"],"sSto', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611256318023434240', TO_DATE('2019-08-14 17:54:22', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/useToAid', 'app器材使用中', '3833', 'appUseToAid', '{"sEquip_ID":["611145406239211520"],"remarks":[""],"sAid_ID":["604748743446626304"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611139143233175552', TO_DATE('2019-08-14 10:08:46', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '8158', 'appLogin', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312836068081664', TO_DATE('2019-08-17 15:52:36', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/dict/delete', '删除数据字典', '32', 'delete', '{"sDict_ID":["612312687417753600"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612320667638956032', TO_DATE('2019-08-17 16:23:43', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '84', 'add', '{"level":["2"],"name":["teee"],"sStore_Level1":["604434599291912192"],"sStore_Level2":[""],"sStore_Level3":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612320710060146688', TO_DATE('2019-08-17 16:23:53', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '42', 'update', '{"sStore_Level3":[""],"sStore_Parent":["604434599291912192"],"sStore_Level1":["1"],"sStore_Level2":[""],"sStore_Name":["teee"],"sStore_ID":["612320667446018048"],"level":["2"],"name":["teee"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612326896121675776', TO_DATE('2019-08-17 16:48:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '165', 'add', '{"level":["1"],"name":["11"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"sStoreType_Address":["11"],"lStoreType_Lat":["11"],"lStoreType_Lng":["11"],"sStoreType_Station":["test"],"lStoreType_Limit":["11"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612327390399430656', TO_DATE('2019-08-17 16:50:26', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '80', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359929927303168', TO_DATE('2019-08-17 18:59:44', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '78', 'update', '{"lStoreType_Lng":["11"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sStore_Level2]":[""', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611154333391650816', TO_DATE('2019-08-14 11:09:07', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '52', 'appInStore', '{"remarks":[""],"sEquip_StoreLv4":[" "],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_StoreLv3":[" "],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["156575001', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612957883767717888', TO_DATE('2019-08-19 10:35:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/login', '用户登录', '14027', 'login', '{}', '{"msg":"缺少username参数 ","code":-206}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612984780966854656', TO_DATE('2019-08-19 12:22:40', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1588', 'login', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612985123972841472', TO_DATE('2019-08-19 12:24:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1013', 'login', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612985265752899584', TO_DATE('2019-08-19 12:24:36', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '172', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612315385487687680', TO_DATE('2019-08-17 16:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '43', 'update', '{"sDict_ID":["700008"],"sDict_NO":["8"],"sDict_Name":["报废"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["EquipStatus"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["1"],"sDict_Describe":[""],"sDict_Picture":[""],"', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398627536502784', TO_DATE('2019-08-17 21:33:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '58', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398724747886592', TO_DATE('2019-08-17 21:33:53', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '80', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.12"],"lSys_MapLat":["242"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398795115724800', TO_DATE('2019-08-17 21:34:10', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '48', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398864783114240', TO_DATE('2019-08-17 21:34:27', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '36', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612673345506246656', TO_DATE('2019-08-18 15:45:08', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.16', NULL, '/api/msg/app/unhandle', 'app设为待处理消息', '51', 'appUnHandle', '{"remarks":["gggg"],"sMsg_ID":["3"]}', NULL, '{"msg":"保存失败，已处理消息，不可设为待处理","code":-101}', 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612735045173510144', TO_DATE('2019-08-18 19:50:18', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.1.16', NULL, '/api/user/app/login', 'app用户登录', '2189', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612737266892144640', TO_DATE('2019-08-18 19:59:08', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.1.16', NULL, '/api/user/app/login', 'app用户登录', '1187', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612401665785462784', TO_DATE('2019-08-17 21:45:34', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '44', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612402087157825536', TO_DATE('2019-08-17 21:47:15', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '30', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1dfsdf"],"lSys_MapLat":["24.46"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612268075147853824', TO_DATE('2019-08-17 12:54:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '647', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611145684027965440', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '83', 'appInStore', '{"remarks":["of"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611147685331730432', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '27', 'appInStore', '{"remarks":["you"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611148412376580096', TO_DATE('2019-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '21', 'appInStore', '{"remarks":["uu"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149096371093504', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '19', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149879384735744', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '33', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149995176886272', TO_DATE('2019-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '19', 'appAdd', '{"sEquip_NO":["wewe"],"sEquip_Type":["t"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["wewewe"],"sEquip_StoreLv1":["604434599291912192"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611152592948428800', TO_DATE('2019-08-14 11:02:12', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '44', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["1"]}', NULL, '{"msg":"保存失败，器材已入库","code":-101}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611152641715601408', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/outStore', 'app器材出库', '50', 'appOutStore', '{"sEquip_ID":["611145406239211520"],"remarks":["GBM"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970864532979712', TO_DATE('2019-08-02 22:05:31', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618234276877434880', TO_DATE('2019-09-03 00:02:17', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '951', 'appAdd', '{"sEquip_Name":["3"],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sSolar_Connect":[""],"sLamp_NO":[""],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_SIM":["3"],"sTelemetry_NO":["3"],"sBattery_NO":[""],"sEquip_Manufacturer":["test"],"sEquip_MBrand":["3', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618234513025138688', TO_DATE('2019-09-03 00:03:14', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '814', 'appAdd', '{"sEquip_Name":["4"],"sBattery_Connect":["4"],"lVLamp_Watt":[""],"sBattery_Type":["1"],"sSolar_Connect":[""],"sLamp_NO":[""],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_SIM":[""],"sTelemetry_NO":[""],"sBattery_NO":["4"],"sEquip_Manufacturer":["test', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618234731980390400', TO_DATE('2019-09-03 00:04:06', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '651', 'appAdd', '{"sEquip_Name":["5"],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sSolar_Connect":["5"],"sLamp_NO":[""],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_SIM":[""],"sTelemetry_NO":[""],"sBattery_NO":[""],"sEquip_Manufacturer":["test"],"sEquip_MBrand":["5"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618237642277912576', TO_DATE('2019-09-03 00:15:40', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '337', 'appAdd', '{"lSolar_Volt":[""],"sBattery_Connect":[""],"sEquip_Type":["EquipSpareLamp"],"sEquip_Name":["6"],"lVLamp_Watt":[""],"sEquip_MModel":["6"],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618237752818794496', TO_DATE('2019-09-03 00:16:06', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '282', 'appAdd', '{"lSolar_Volt":[""],"sBattery_Connect":[""],"sEquip_Type":["EquipViceLamp"],"sEquip_Name":["7"],"lVLamp_Watt":["7"],"sEquip_MModel":["7"],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618238026912366592', TO_DATE('2019-09-03 00:17:11', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '183', 'appAdd', '{"sEquip_Name":[""],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sSolar_Connect":[""],"sLamp_NO":["8"],"sLamp_Telemetry":["1"],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_NO":[""],"sTelemetry_SIM":[""],"sBattery_NO":[""],"sEquip_Manufacturer":["test', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618238487681826816', TO_DATE('2019-09-03 00:19:01', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '65', 'appAdd', '{"sEquip_Name":["8"],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sSolar_Connect":[""],"sLamp_NO":["8"],"sLamp_Telemetry":["1"],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_NO":[""],"sTelemetry_SIM":[""],"sBattery_NO":[""],"sEquip_Manufacturer":["tes', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618239506906087424', TO_DATE('2019-09-03 00:23:04', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '357', 'appAdd', '{"sEquip_Name":["9"],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sSolar_Connect":[""],"sLamp_NO":["9"],"sLamp_Telemetry":["1"],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_NO":[""],"sTelemetry_SIM":[""],"sBattery_NO":[""],"sEquip_Manufacturer":["tes', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618566173134422016', TO_DATE('2019-09-03 22:01:08', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '260', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615124866206531584', TO_DATE('2019-08-25 10:06:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '33', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"],"lSys_MapLevel":["1"],"lSys_MapIconWidth":["20"],"lSys_MapIconHeight":["20"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613027760922689536', TO_DATE('2019-08-19 15:13:27', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/add', '新增航标', '64', 'add', '{"sAidTypeIcon_Status":["normal"],"sAidTypeIcon_StatusIcon":[""],"sAidTypeIcon_Type":["test"]}', NULL, '{"msg":"test--normal已存在","code":-105}', 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613033029576687616', TO_DATE('2019-08-19 15:34:23', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/update', '更新航标', '42', 'update', '{"sAidTypeIcon_ID":["612996387226779648"],"sAidTypeIcon_Status":["normal"],"sAidTypeIcon_StatusIcon":["normal"],"sAidTypeIcon_Type":["test"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613033058521579520', TO_DATE('2019-08-19 15:34:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/update', '更新航标', '37', 'update', '{"sAidTypeIcon_ID":["612996387226779648"],"sAidTypeIcon_Status":["normal"],"sAidTypeIcon_StatusIcon":["3"],"sAidTypeIcon_Type":["test"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613044245967667200', TO_DATE('2019-08-19 16:18:58', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '153', 'update', '{"sDict_ID":["612997577486368768"],"sDict_NO":["3"],"sDict_Name":["图标3"],"dDict_CreateDate":["1566191611000"],"sDict_UserID":["1"],"sDict_DictTypeNO":["MapIcon"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describe":[""]', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613053622250373120', TO_DATE('2019-08-19 16:56:13', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/login', '用户登录', '809', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613033498311131136', TO_DATE('2019-08-19 15:36:15', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/update', '更新航标', '23', 'update', '{"sAidTypeIcon_ID":["612996387226779648"],"sAidTypeIcon_Status":["unusual"],"sAidTypeIcon_StatusIcon":["normal"],"sAidTypeIcon_Type":["test"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613033535883706368', TO_DATE('2019-08-19 15:36:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/update', '更新航标', '23', 'update', '{"sAidTypeIcon_ID":["612996387226779648"],"sAidTypeIcon_Status":["normal"],"sAidTypeIcon_StatusIcon":["normal"],"sAidTypeIcon_Type":["test"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613027579212857344', TO_DATE('2019-08-19 15:12:44', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidMapIcon/add', '新增航标', '44', 'add', '{"sAidIcon_Status":["normal"],"sAidIcon_StatusIcon":["3"],"sAidIcon_AidID":["604743636243972096"]}', NULL, '{"msg":"604743636243972096--normal已存在","code":-105}', 'com.jian.system.controller.AidMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613033102834401280', TO_DATE('2019-08-19 15:34:41', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/update', '更新航标', '31', 'update', '{"sAidTypeIcon_ID":["612996387226779648"],"sAidTypeIcon_Status":["unusual"],"sAidTypeIcon_StatusIcon":["3"],"sAidTypeIcon_Type":["test"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613044233137291264', TO_DATE('2019-08-19 16:18:54', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '106', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614581748260405248', TO_DATE('2019-08-23 22:08:27', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/equip/update', '更新器材', '53', 'update', '{"sEquip_ID":["2"],"sEquip_NO":["2"],"sEquip_Name":["2"],"sEquip_StoreLv1":["2"],"sEquip_StoreLv2":["2"],"sEquip_StoreLv3":["2"],"sEquip_StoreLv4":["2"],"sEquip_Type":["2"],"sEquip_Status":["2"],"sEquip_NfcID":[""],"sEquip_AidID":[""],"dEquip_CreateDate":', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614961305354240000', TO_DATE('2019-08-24 23:16:40', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '31', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614573274117963776', TO_DATE('2019-08-23 21:34:46', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '179', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614595444298743808', TO_DATE('2019-08-23 23:02:52', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '89', 'add', '{"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["1"],"sLamp_Telemetry":["1"],"lLamp_InputVolt":["wew"],"lLamp_Watt":["rwer"],"sLamp_Lens":["1"],"sLamp_Type":["1"],"dEquip_ArrivalDate":["1565107200000"],"sEquip_MModel":["ee"],"sEquip_Manufacturer":["te', NULL, 'For input string: "wew"', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614596394417651712', TO_DATE('2019-08-23 23:06:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '51', 'add', '{"sEquip_NO":["e2"],"sEquip_Name":["e2"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["1"],"sEquip_Manufacturer":["test"],"sEquip_MModel":["222"],"dEquip_ArrivalDate":["1566316800000"],"sLamp_NO":["e2"],"sLamp_Brand":["e2"],"sLamp_Type":["1"],"sLamp', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615099256130240512', TO_DATE('2019-08-25 08:24:50', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '169', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615124769234223104', TO_DATE('2019-08-25 10:06:13', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '25', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"],"lSys_MapLevel":["0"],"lSys_MapIconWidth":["20"],"lSys_MapIconHeight":["20"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615251868691464192', TO_DATE('2019-08-25 18:31:16', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '166', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615282515531268096', TO_DATE('2019-08-25 20:33:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '107', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614595567812608000', TO_DATE('2019-08-23 23:03:22', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '207', 'add', '{"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["1"],"sLamp_Telemetry":["1"],"lLamp_InputVolt":["12"],"lLamp_Watt":["12"],"sLamp_Lens":["1"],"sLamp_Type":["1"],"dEquip_ArrivalDate":["1565107200000"],"sEquip_MModel":["ee"],"sEquip_Manufacturer":["test"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615312884875919360', TO_DATE('2019-08-25 22:33:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615557301478096896', TO_DATE('2019-08-26 14:44:57', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '63', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615500609071611904', TO_DATE('2019-08-26 10:59:40', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '341', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615594888456568832', TO_DATE('2019-08-26 17:14:18', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '115', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614742989222182912', TO_DATE('2019-08-24 08:49:10', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615172990409113600', TO_DATE('2019-08-25 13:17:50', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '20', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610647002140639232', TO_DATE('2019-08-13 01:33:10', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/equip/update', '更新器材', '712', 'update', '{"sEquip_ID":["610646900542013440"],"sEquip_NO":["123333123"],"sEquip_Name":["123333123"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Type":["t"],"sEquip_Status":["0"],"sEquip_NfcID":[""],"sEquip', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607193531026505728', TO_DATE('2019-08-03 12:50:18', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/updateUser', '更新航标分配的用户', '149', 'updateUser', '{"user":["1,606138587578105856,22"],"sAid_ID":["604617148949594112"]}', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618576677202558976', TO_DATE('2019-09-03 22:42:52', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.3', NULL, '/api/equip/app/dump', 'app器材已报废', '97', 'appDump', '{"sEquip_ID":["606098577566990336"],"remarks":["才吃饭"]}', NULL, '{"msg":"保存失败，器材已报废","code":-101}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613328663466737664', TO_DATE('2019-08-20 11:09:08', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/msg/app/read', 'app消息已读', '159', 'appRead', '{"sMsg_ID":["4"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613397148909699072', TO_DATE('2019-08-20 15:41:16', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '3165', 'appLogin', '{"username":["admin"]}', NULL, 'Redis command timed out; nested exception is io.lettuce.core.RedisCommandTimeoutException: Command timed out', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613398323432259584', TO_DATE('2019-08-20 15:45:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '115', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613399369986605056', TO_DATE('2019-08-20 15:50:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '46', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613804630559686656', TO_DATE('2019-08-21 18:40:27', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '5', 'appLogin', '{"username":[""]}', '{"msg":"缺少username参数 ","code":-206}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614528628398489600', TO_DATE('2019-08-23 18:37:22', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '461', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614529116825190400', TO_DATE('2019-08-23 18:39:18', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '2976', 'add', '{"sEquip_Type":["EquipAIS"],"sEquip_NO":["12111"],"sEquip_Name":["12111"],"sEquip_StoreLv1":["612326895639330816"],"sEquip_StoreLv2":["612328289813397504"],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('613793374465425408', TO_DATE('2019-08-21 17:55:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '2584', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615706316375064576', TO_DATE('2019-08-27 00:37:05', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '38', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615673527281909760', TO_DATE('2019-08-26 22:26:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1142', 'login', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615673863266631680', TO_DATE('2019-08-26 22:28:07', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '119', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614862960497524736', TO_DATE('2019-08-24 16:45:53', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '174', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614931052502188032', TO_DATE('2019-08-24 21:16:27', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '16', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614941144207327232', TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/equip/update', '更新器材', '147', 'update', '{"sEquip_ID":["614595567070216192"],"sLamp_NO":["ee"],"sLamp_Brand":["ee"],"sLamp_Type":["1"],"lLamp_InputVolt":["12"],"lLamp_Watt":["12"],"sLamp_Lens":["1"],"lLamp_TelemetryFlag":["1"],"sLamp_Telemetry":["1"],"sEquip_NO":["ee"],"sEquip_Name":["ee"],"sEqu', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615125065343696896', TO_DATE('2019-08-25 10:07:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '26', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"],"lSys_MapLevel":["11"],"lSys_MapIconWidth":["20"],"lSys_MapIconHeight":["20"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615130950656851968', TO_DATE('2019-08-25 10:30:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '15', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615209641550282752', TO_DATE('2019-08-25 15:43:28', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '33', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614826722348498944', TO_DATE('2019-08-24 14:21:53', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('614898747033255936', TO_DATE('2019-08-24 19:08:05', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '17', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615124666536689664', TO_DATE('2019-08-25 10:05:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '72', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"],"lSys_MapLevel":["23"],"lSys_MapIconWidth":["20"],"lSys_MapIconHeight":["20"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615857722474102784', TO_DATE('2019-08-27 10:38:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '213', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615912999059718144', TO_DATE('2019-08-27 14:18:22', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '70', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('615969291392516096', TO_DATE('2019-08-27 18:02:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '49', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('617677989684969472', TO_DATE('2019-09-01 11:11:48', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '48', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('617859256468635648', TO_DATE('2019-09-01 23:12:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '168', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('617859967268945920', TO_DATE('2019-09-01 23:14:55', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '275', 'add', '{"sEquip_NO":["111111111111111111111"],"sEquip_Type":["EquipAIS"],"sEquip_Manufacturer":["test"],"sEquip_MModel":["1111"],"sEquip_MBrand":["1111"],"sAis_MMSIX":["1"],"dEquip_ArrivalDate":["1567440000000"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"s', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('617860084227112960', TO_DATE('2019-09-01 23:15:23', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/equip/update', '更新器材', '61', 'update', '{"sEquip_ID":["617859966383947776"],"sAis_MMSIX":["1"],"sEquip_NO":["11111111111111111111122222"],"sEquip_Name":["11111111111111111111122222"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Type":["', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618233856910163968', TO_DATE('2019-09-03 00:00:37', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '3578', 'appAdd', '{"sEquip_Name":["1"],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sSolar_Connect":[""],"sLamp_NO":[""],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_SIM":[""],"sTelemetry_NO":[""],"sBattery_NO":[""],"sEquip_Manufacturer":["test"],"sEquip_MBrand":["1"]', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618234054361219072', TO_DATE('2019-09-03 00:01:24', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.25', NULL, '/api/equip/app/add', 'app新增器材', '3829', 'appAdd', '{"sEquip_Name":["2"],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sRadar_Band":["1"],"sSolar_Connect":[""],"sLamp_NO":[""],"dEquip_ArrivalDate":["1567353600000"],"sTelemetry_SIM":[""],"sTelemetry_NO":[""],"sBattery_NO":[""],"sEquip_Manufacturer":["test"],"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620016688892477440', TO_DATE('2019-09-07 22:04:57', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '119', 'update', '{"lStoreType_Lng":["118.16012222222223"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sSt', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620017156205051904', TO_DATE('2019-09-07 22:06:49', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '55', 'update', '{"lStoreType_Lng":["118.16012222222223"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sSt', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620022295938727936', TO_DATE('2019-09-07 22:27:14', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/update', '更新航标', '75', 'update', '{"sAid_ID":["620022175348293632"],"sAid_Name":["2"],"sAid_NO":["2"],"lAid_Lat":["1.0565430555555557"],"lAid_Lng":["3.060123611111111"],"sAid_Station":[""],"sAid_Type":[""],"sAid_Icon":[""],"dAid_BuildDate":[""],"dAid_DelDate":[""],"sAid_Lighting":[""],"sA', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620025173545844736', TO_DATE('2019-09-07 22:38:40', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '42', 'add', '{"level":["1"],"name":["1"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"lStoreType_LatDu":["1"],"lStoreType_LatFen":["2"],"lStoreType_LatMiao":["3.66"],"lStoreType_LngDu":["3"],"lStoreType_LngFen":["4"],"lStoreType_LngMiao":["6.999"],"', NULL, '{"msg":"1已存在","code":-105}', 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618951033569148928', TO_DATE('2019-09-04 23:30:25', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.33', NULL, '/api/equip/app/useToAid', 'app器材使用中', '5798', 'appUseToAid', '{"sEquip_ID":["618233851264630784"],"remarks":["111111"],"sAid_ID":["604748743446626304"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('618951170609643520', TO_DATE('2019-09-04 23:30:58', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.1.33', NULL, '/api/equip/app/useToAid', 'app器材使用中', '66', 'appUseToAid', '{"sEquip_ID":["618233851264630784"],"remarks":["ggg"],"sAid_ID":["604748743446626304"]}', NULL, '{"msg":"保存失败，器材已在使用","code":-101}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619678615696572416', TO_DATE('2019-09-06 23:41:35', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.34', NULL, '/api/equip/app/add', 'app新增器材', '10209', 'appAdd', '{"lSolar_Volt":[""],"sEquip_Name":[""],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sEquip_MModel":[""],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""],"lBattery_Volt":[""],"sSolar_NO":', NULL, '{"msg":"器材分类不能为空","code":-211}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619839968172310528', TO_DATE('2019-09-07 10:22:44', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '164', 'add', '{"sDict_NO":["dddddddddddddddddddddddsssssssssssssssssssssssssssssssssssaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWEEEEEEEEEEEEEEEEEEEEErrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrreeeeeeewwwwwwfretuytuyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', NULL, '
### Error updating database.  Cause: java.sql.SQLException: ORA-12899: 列 "AASYSTEM"."tBase_Dict"."sDict_NO" 的值太大 (实际值: 265, 最大值: 64)

### The error may involve com.jian.system.dao.DictMapper.insert-Inline
### The error occurred while setting parameter', 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619840014032830464', TO_DATE('2019-09-07 10:22:55', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '63', 'add', '{"sDict_NO":["dddddddddddddddddddddddsssssssssssssssssssssssssssssssssssaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWEEEEEEEEEEEEEEEEEEEEErrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrreeeeeeewwwwwwfretuytuyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', NULL, '
### Error updating database.  Cause: java.sql.SQLException: ORA-12899: 列 "AASYSTEM"."tBase_Dict"."sDict_NO" 的值太大 (实际值: 265, 最大值: 64)

### The error may involve com.jian.system.dao.DictMapper.insert-Inline
### The error occurred while setting parameter', 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620010196378320896', TO_DATE('2019-09-07 21:39:10', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '523', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620022175507677184', TO_DATE('2019-09-07 22:26:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '69', 'add', '{"sAid_Status":["normal"],"lAid_LatDu":["1"],"lAid_LatFen":["2"],"lAid_LatMiao":["3.55"],"lAid_LngDu":["3"],"lAid_LngFen":["3"],"lAid_LngMiao":["36.44"],"sAid_NO":["2"],"sAid_Name":["2"],"lAid_Lat":["1.0343194444444446"],"lAid_Lng":["3.060122222222222"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620648884175110144', TO_DATE('2019-09-09 15:57:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/msg/app/add', 'app新增消息', '1268', 'appAdd', '{"sMsg_Type":["4"],"dMsg_StoreNum":["0"],"sMsg_Describe":["6666666666666666699999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620682232813584384', TO_DATE('2019-09-09 18:09:36', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '574', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620991103704760320', TO_DATE('2019-09-10 14:36:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '472', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620991221522759680', TO_DATE('2019-09-10 14:37:24', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '142', 'add', '{"level":["1"],"name":["1"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"lStoreType_LatDu":["1"],"lStoreType_LatFen":["1"],"lStoreType_LatMiao":["1.11"],"lStoreType_LngDu":["2"],"lStoreType_LngFen":["2"],"lStoreType_LngMiao":["3.44"],"l', NULL, '{"msg":"1已存在","code":-105}', 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620991253718237184', TO_DATE('2019-09-10 14:37:32', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '202', 'add', '{"level":["1"],"name":["12121"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"lStoreType_LatDu":["1"],"lStoreType_LatFen":["1"],"lStoreType_LatMiao":["1.11"],"lStoreType_LngDu":["2"],"lStoreType_LngFen":["2"],"lStoreType_LngMiao":["3.44"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('621648661507473408', TO_DATE('2019-09-12 10:09:50', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '156', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('621355523521904640', TO_DATE('2019-09-11 14:45:01', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '140', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623112699621933056', TO_DATE('2019-09-16 11:07:24', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '162', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623168487992328192', TO_DATE('2019-09-16 14:49:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '908', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623168855602102272', TO_DATE('2019-09-16 14:50:33', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '88', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623170293187215360', TO_DATE('2019-09-16 14:56:15', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '811', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623174546622513152', TO_DATE('2019-09-16 15:13:09', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '706', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623174791427260416', TO_DATE('2019-09-16 15:14:08', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '58', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623174992858710016', TO_DATE('2019-09-16 15:14:56', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '380', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623185044889927680', TO_DATE('2019-09-16 15:54:52', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dictType/import', '导入字典分类', '371', 'imports', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623468436357382144', TO_DATE('2019-09-17 10:40:58', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1724', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623468520675475456', TO_DATE('2019-09-17 10:41:18', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '1093', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623470024518008832', TO_DATE('2019-09-17 10:47:17', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '440', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623471072729104384', TO_DATE('2019-09-17 10:51:27', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '631', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623471314581061632', TO_DATE('2019-09-17 10:52:24', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '436', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623471493984026624', TO_DATE('2019-09-17 10:53:07', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '421', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620626229434777600', TO_DATE('2019-09-09 14:27:03', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/msg/app/add', 'app新增消息', '728', 'appAdd', '{"sMsg_Label":["1"],"dMsg_StoreNum":["0"],"sMsg_Reason":["1"],"lMsg_Level":["2147483647"],"sMsg_AidID":["618233851264630784"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620629547645140992', TO_DATE('2019-09-09 14:40:14', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/msg/app/add', 'app新增消息', '154', 'appAdd', '{"sMsg_EquipID":["618233851264630784"],"sMsg_Label":["1"],"dMsg_StoreNum":["0"],"sMsg_Reason":["1"],"lMsg_Level":["2147483647"],"sMsg_AidID":["604748743446626304"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620631025894031360', TO_DATE('2019-09-09 14:46:07', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/msg/app/add', 'app新增消息', '220', 'appAdd', '{"dMsg_StoreNum":["0"],"sMsg_StoreLv1":["1"],"sMsg_StoreLv2":["12"],"sMsg_EquipID":["614595567070216192"],"sMsg_StoreLv3":["121"],"sMsg_Label":["1"],"sMsg_StoreLv4":["1212"],"lMsg_Level":["2147483647"],"sMsg_Reason":["1"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623163144616804352', TO_DATE('2019-09-16 14:27:51', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '135', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623176878278049792', TO_DATE('2019-09-16 15:22:25', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dictType/excel', '导出字典分类', '629', 'excel', '{"token":["9dcfb6203eb0b4196d25495d345ad166.1.1568615271465.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictTypeController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623471926207053824', TO_DATE('2019-09-17 10:54:50', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '464', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623472136115191808', TO_DATE('2019-09-17 10:55:40', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '495', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623472463501590528', TO_DATE('2019-09-17 10:56:58', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '422', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623472606263115776', TO_DATE('2019-09-17 10:57:32', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '403', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623491822680801280', TO_DATE('2019-09-17 12:13:54', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '89', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623492135236141056', TO_DATE('2019-09-17 12:15:08', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '83', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623492785277763584', TO_DATE('2019-09-17 12:17:43', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '387', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623493167542435840', TO_DATE('2019-09-17 12:19:15', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '486', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623493945044762624', TO_DATE('2019-09-17 12:22:20', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '374', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623494239568789504', TO_DATE('2019-09-17 12:23:30', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '402', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623494582037905408', TO_DATE('2019-09-17 12:24:52', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '366', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623495441979277312', TO_DATE('2019-09-17 12:28:17', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '364', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623527397479677952', TO_DATE('2019-09-17 14:35:16', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '110', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623527581513154560', TO_DATE('2019-09-17 14:36:00', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '291', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623528262903005184', TO_DATE('2019-09-17 14:38:42', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '46', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623528579812032512', TO_DATE('2019-09-17 14:39:58', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '51', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623528733159981056', TO_DATE('2019-09-17 14:40:34', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '43', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623528903809433600', TO_DATE('2019-09-17 14:41:15', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '53', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623530664179793920', TO_DATE('2019-09-17 14:48:14', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '52', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623533190383927296', TO_DATE('2019-09-17 14:58:17', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '34', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623537730084667392', TO_DATE('2019-09-17 15:16:19', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '178', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623538321041129472', TO_DATE('2019-09-17 15:18:40', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '2169', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623539618305802240', TO_DATE('2019-09-17 15:23:49', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '1739', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623540383808225280', TO_DATE('2019-09-17 15:26:52', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '1959', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623541073993531392', TO_DATE('2019-09-17 15:29:36', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '57', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623541268194000896', TO_DATE('2019-09-17 15:30:23', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '46', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623544621674266624', TO_DATE('2019-09-17 15:43:42', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '85', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623549112960155648', TO_DATE('2019-09-17 16:01:33', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '78', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623472859984953344', TO_DATE('2019-09-17 10:58:33', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '410', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623477806453489664', TO_DATE('2019-09-17 11:18:12', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '3077', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623479585433976832', TO_DATE('2019-09-17 11:25:16', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '2314', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623479741868933120', TO_DATE('2019-09-17 11:25:54', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '515', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623479907615244288', TO_DATE('2019-09-17 11:26:33', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '449', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623480008874131456', TO_DATE('2019-09-17 11:26:57', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '374', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, 'dx2 must be between 0 and 1023, but was: 1720', 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623480377087885312', TO_DATE('2019-09-17 11:28:25', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '491', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623480581874778112', TO_DATE('2019-09-17 11:29:14', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '376', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623480958607163392', TO_DATE('2019-09-17 11:30:44', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '374', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623481247322079232', TO_DATE('2019-09-17 11:31:53', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '387', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623487043690823680', TO_DATE('2019-09-17 11:54:55', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '458', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623487263791120384', TO_DATE('2019-09-17 11:55:47', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '379', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623487528065826816', TO_DATE('2019-09-17 11:56:50', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '381', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623488602642317312', TO_DATE('2019-09-17 12:01:06', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '408', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623488870264078336', TO_DATE('2019-09-17 12:02:10', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '408', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623489044239613952', TO_DATE('2019-09-17 12:02:52', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '384', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623490155604344832', TO_DATE('2019-09-17 12:07:16', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '359', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623490410429284352', TO_DATE('2019-09-17 12:08:17', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '426', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623490866882805760', TO_DATE('2019-09-17 12:10:06', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '379', 'excel', '{"token":["6fd5b5dd2e388d873c9879bdb92f8286.1.1568688058022.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620016579077210112', TO_DATE('2019-09-07 22:04:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/update', '更新航标', '48', 'update', '{"sAid_ID":["620016285035528192"],"sAid_Name":["2"],"sAid_NO":["2"],"lAid_Lat":["2.039258333333333"],"lAid_Lng":["4.102705555555556"],"sAid_Station":[""],"sAid_Type":[""],"sAid_Icon":[""],"dAid_BuildDate":[""],"dAid_DelDate":[""],"sAid_Lighting":[""],"sAi', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620017858071494656', TO_DATE('2019-09-07 22:09:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '55', 'update', '{"lStoreType_Lng":["118.16012222222223"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sSt', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620025201928699904', TO_DATE('2019-09-07 22:38:47', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '91', 'add', '{"level":["1"],"name":["1321"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"lStoreType_LatDu":["1"],"lStoreType_LatFen":["2"],"lStoreType_LatMiao":["3.66"],"lStoreType_LngDu":["3"],"lStoreType_LngFen":["4"],"lStoreType_LngMiao":["6.999"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619642575157985280', TO_DATE('2019-09-06 21:18:22', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '4933', 'login', '{"username":["admin"]}', NULL, 'Redis command timed out; nested exception is io.lettuce.core.RedisCommandTimeoutException: Command timed out', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619642657278263296', TO_DATE('2019-09-06 21:18:41', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '100', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620006776577720320', TO_DATE('2019-09-07 21:25:34', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.45', NULL, '/api/msg/app/add', 'app新增消息', '9202', 'appAdd', '{"sMsg_Label":["1"],"dMsg_StoreNum":["0"],"sMsg_Reason":["1"],"lMsg_Level":["2147483647"],"sMsg_AidID":["604748743446626304"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620011995525021696', TO_DATE('2019-09-07 21:46:18', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '102', 'add', '{"sAid_Status":["normal"],"sAid_NO":["1"],"sAid_Name":["1"],"lAid_Lat":["1.0169753055555555"],"lAid_Lng":["1.0169753055555555"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619838528213221376', TO_DATE('2019-09-07 10:17:01', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '226', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619838727920812032', TO_DATE('2019-09-07 10:17:48', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '640', 'add', '{"sDict_NO":["tttttttttttttttttttttttttttttttttttttttttdddddddddddddddddddddddddddddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffcccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', NULL, '
### Error updating database.  Cause: java.sql.SQLException: ORA-12899: 列 "AASYSTEM"."tBase_Dict"."sDict_NO" 的值太大 (实际值: 328, 最大值: 64)

### The error may involve com.jian.system.dao.DictMapper.insert-Inline
### The error occurred while setting parameter', 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619680565183905792', TO_DATE('2019-09-06 23:49:19', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.34', NULL, '/api/equip/app/add', 'app新增器材', '88', 'appAdd', '{"lSolar_Volt":[""],"sEquip_Name":[""],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sEquip_MModel":[""],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""],"lBattery_Volt":[""],"sSolar_NO":', NULL, '{"msg":"器材分类不能为空","code":-211}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619680589783498752', TO_DATE('2019-09-06 23:49:25', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.34', NULL, '/api/equip/app/add', 'app新增器材', '39', 'appAdd', '{"lSolar_Volt":[""],"sEquip_Name":[""],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sEquip_MModel":[""],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""],"lBattery_Volt":[""],"sSolar_NO":', NULL, '{"msg":"器材分类不能为空","code":-211}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619680637871194112', TO_DATE('2019-09-06 23:49:37', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.34', NULL, '/api/equip/app/add', 'app新增器材', '69', 'appAdd', '{"lSolar_Volt":[""],"sEquip_Name":[""],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sEquip_MModel":[""],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""],"lBattery_Volt":[""],"sSolar_NO":', NULL, '{"msg":"器材分类不能为空","code":-211}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('619681414400442368', TO_DATE('2019-09-06 23:52:42', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.1.34', NULL, '/api/equip/app/add', 'app新增器材', '26', 'appAdd', '{"lSolar_Volt":[""],"sEquip_Name":[""],"sBattery_Connect":[""],"lVLamp_Watt":[""],"sEquip_MModel":[""],"lTelemetry_Watt":[""],"lSolar_Watt":[""],"lLamp_Watt":[""],"sSolar_Connect":[""],"lBattery_Watt":[""],"sLamp_NO":[""],"lBattery_Volt":[""],"sSolar_NO":', NULL, '{"msg":"器材分类不能为空","code":-211}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620014645884747776', TO_DATE('2019-09-07 21:56:50', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/update', '更新航标', '653', 'update', '{"sAid_ID":["620011995176894464"],"sAid_Name":["1"],"sAid_NO":["1"],"lAid_Lat":["1.0169753333333333"],"lAid_Lng":["1.0170055555555555"],"sAid_Station":[""],"sAid_Type":[""],"sAid_Icon":[""],"dAid_BuildDate":[""],"dAid_DelDate":[""],"sAid_Lighting":[""],"s', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620016820279050240', TO_DATE('2019-09-07 22:05:29', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '54', 'update', '{"lStoreType_Lng":["118.16012222222223"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sSt', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620025018209796096', TO_DATE('2019-09-07 22:38:03', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '92', 'update', '{"lStoreType_Lng":["22.051233333333332"],"sStoreType_Name":["5"],"sStore_Name":["5"],"sStoreType_Address":["5"],"sStoreType_MapIcon":[""],"sStoreType_ID":["5"],"lStoreType_LatFen":["02"],"lStoreType_LatMiao":["03"],"lStoreType_Limit":["11"],"lStoreType_La', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620025080373575680', TO_DATE('2019-09-07 22:38:18', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '51', 'update', '{"lStoreType_Lng":["22.051233333333332"],"sStoreType_Name":["5"],"sStore_Name":["5"],"sStoreType_Address":["5"],"sStoreType_MapIcon":[""],"sStoreType_ID":["5"],"lStoreType_LatFen":["2"],"lStoreType_LatMiao":["3.55"],"lStoreType_Limit":["11"],"lStoreType_L', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('620016285287186432', TO_DATE('2019-09-07 22:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '128', 'add', '{"sAid_Status":["normal"],"sAid_NO":["2"],"sAid_Name":["2"],"lAid_Lat":["2.039258333333333"],"lAid_Lng":["4.102694444444444"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623581126232899584', TO_DATE('2019-09-17 18:08:46', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/user/excel', '导出用户', '231', 'excel', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623581848064229376', TO_DATE('2019-09-17 18:11:38', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/import', '导入用户', '29', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623582424596480000', TO_DATE('2019-09-17 18:13:55', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/user/delete', '删除用户', '32', 'delete', '{"sUser_ID":["623582269331734528"]}', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623922305034092544', TO_DATE('2019-09-18 16:44:29', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/import', '导入航标', '365', 'imports', '{"token":["2bf198426b376963e3d705b3b4a292cc.1.1568796235086.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623937343778193408', TO_DATE('2019-09-18 17:44:14', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '6', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624249751210033152', TO_DATE('2019-09-19 14:25:38', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '96', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624254185331752960', TO_DATE('2019-09-19 14:43:15', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/import', '导入仓库', '75', 'imports', '{"token":["23d27506b57975170ff60745f7c1207f.1.1568874338668.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624573598824136704', TO_DATE('2019-09-20 11:52:29', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/import', '导入器材', '275', 'imports', '{"token":["87e1a3cbc68de564ae5b05812fd5acc8.1.1568948779644.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624574591129354240', TO_DATE('2019-09-20 11:56:26', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/import', '导入器材', '94', 'imports', '{"token":["87e1a3cbc68de564ae5b05812fd5acc8.1.1568948779644.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624613034924441600', TO_DATE('2019-09-20 14:29:12', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '59', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625655802924892160', TO_DATE('2019-09-23 11:32:47', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/add', '新增航标', '51', 'add', '{"sAid_Status":["normal"],"lAid_LatDu":["24"],"lAid_LatFen":["27"],"lAid_LatMiao":["38"],"lAid_LngDu":["118"],"lAid_LngFen":["6"],"lAid_LngMiao":["38"],"sAid_NO":["1111"],"sAid_Name":["测试左侧标"],"sAid_Station":["test"],"sAid_Type":["leftLabel"],"lAid_Lat":[', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625657022620106752', TO_DATE('2019-09-23 11:37:38', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/update', '更新航标', '38', 'update', '{"sAid_ID":["625655802769702912"],"sAid_Name":["测试左侧标"],"sAid_NO":["1111"],"lAid_Lat":["24.47722222222222"],"lAid_Lng":["118.12722222222222"],"sAid_Station":["test"],"sAid_Type":["leftLabel"],"sAid_Icon":[""],"dAid_BuildDate":[""],"dAid_DelDate":[""],"sAi', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625665013842968576', TO_DATE('2019-09-23 12:09:23', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '37', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('626918840508350464', TO_DATE('2019-09-26 23:11:39', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '46', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623551437019807744', TO_DATE('2019-09-17 16:10:47', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '2255', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623551654528024576', TO_DATE('2019-09-17 16:11:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '135', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623551849286336512', TO_DATE('2019-09-17 16:12:25', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '54', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623553102292713472', TO_DATE('2019-09-17 16:17:24', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/dict/excel', '导出字典', '1147', 'excel', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623553559220191232', TO_DATE('2019-09-17 16:19:13', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/import', '导入字典', '67', 'imports', '{"token":["4ef540f1ff691c3b639bc2dee2772f95.1.1568702116118.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623553834647552000', TO_DATE('2019-09-17 16:20:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '35', 'update', '{"sDict_ID":["623553559102750740"],"sDict_NO":["322"],"sDict_Name":["图标3"],"dDict_CreateDate":["1568708353000"],"sDict_UserID":["1"],"sDict_DictTypeNO":["StoreMapIcon"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describ', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623564785643945984', TO_DATE('2019-09-17 17:03:50', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '103', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623564909824704512', TO_DATE('2019-09-17 17:04:19', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/group/excel', '导出用户组', '244', 'excel', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', NULL, NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623565009728831488', TO_DATE('2019-09-17 17:04:43', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '232', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0012844)\n\r\n### The error may involve com.jian.system.dao.GroupMapper.batchInsert-Inline\r\n### The error occurred whi', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623566091062345728', TO_DATE('2019-09-17 17:09:01', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '52', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0012844)\n\r\n### The error may involve com.jian.system.dao.GroupMapper.batchInsert-Inline\r\n### The error occurred whi', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623566403483467776', TO_DATE('2019-09-17 17:10:15', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '45', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0012844)\n\r\n### The error may involve com.jian.system.dao.GroupMapper.batchInsert-Inline\r\n### The error occurred whi', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623566802605047808', TO_DATE('2019-09-17 17:11:51', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '34', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623567577691455488', TO_DATE('2019-09-17 17:14:55', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/group/delete', '删除用户组', '40', 'delete', '{"sGroup_ID":["623567217102946304"]}', NULL, NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623567715327541248', TO_DATE('2019-09-17 17:15:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '46', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623568004923260928', TO_DATE('2019-09-17 17:16:37', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/group/delete', '删除用户组', '32', 'delete', '{"sGroup_ID":["623567715273015296"]}', NULL, NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623569632648757248', TO_DATE('2019-09-17 17:23:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '32', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623569729260355584', TO_DATE('2019-09-17 17:23:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '27', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623581593985875968', TO_DATE('2019-09-17 18:10:37', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/import', '导入用户', '68', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623582402056290304', TO_DATE('2019-09-17 18:13:50', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/update', '更新用户', '32', 'update', '{"sUser_ID":["623582269331734528"],"sUser_UserName":["test23"],"sUser_PassWord":["098f6bcd4621d373cade4e832627b4f6"],"sUser_Nick":["test2233"],"lUser_StatusFlag":["1"],"sUser_GroupID":["604790269384065024"],"sUser_QQ":[""],"sUser_Email":[""],"sUser_Phone"', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623900615705100288', TO_DATE('2019-09-18 15:18:18', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '31', 'excel', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623933933863567360', TO_DATE('2019-09-18 17:30:41', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '21', 'updateUserMenuAuth', '{}', '{"msg":"sUser_ID不能为空","code":-211,"data":""}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623937364229619712', TO_DATE('2019-09-18 17:44:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '15', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624204795774763008', TO_DATE('2019-09-19 11:27:00', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '195', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624204928151191552', TO_DATE('2019-09-19 11:27:32', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/store/excel', '导出仓库', '371', 'excel', '{"token":["0e348e666c572753cb0fac38310cf35a.1.1568863620453.7200000"]}', NULL, NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624302674979848192', TO_DATE('2019-09-19 17:55:56', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/equip/excel', '导出航标', '29', 'excel', '{"token":["c0317e2e83b4b48cea480049febd489f.1.1568886277440.7200000"],"store":[""]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624561979306016768', TO_DATE('2019-09-20 11:06:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '186', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624562010582941696', TO_DATE('2019-09-20 11:06:27', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/equip/excel', '导出器材', '634', 'excel', '{"token":["87e1a3cbc68de564ae5b05812fd5acc8.1.1568948779644.7200000"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623565352344748032', TO_DATE('2019-09-17 17:06:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '39', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0012844)\n\r\n### The error may involve com.jian.system.dao.GroupMapper.batchInsert-Inline\r\n### The error occurred whi', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623565517147340800', TO_DATE('2019-09-17 17:06:44', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '43', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0012844)\n\r\n### The error may involve com.jian.system.dao.GroupMapper.batchInsert-Inline\r\n### The error occurred whi', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623567217144889344', TO_DATE('2019-09-17 17:13:29', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '41', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623567955392724992', TO_DATE('2019-09-17 17:16:25', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/group/import', '导入用户组', '49', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623567984958373888', TO_DATE('2019-09-17 17:16:32', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/group/delete', '删除用户组', '36', 'delete', '{"sGroup_ID":["623567955313033220"]}', NULL, NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623567995754512384', TO_DATE('2019-09-17 17:16:35', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/group/delete', '删除用户组', '33', 'delete', '{"sGroup_ID":["623567955313033216"]}', NULL, NULL, 'com.jian.system.controller.GroupController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623900117556002816', TO_DATE('2019-09-18 15:16:19', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '262', 'excel', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623900425120120832', TO_DATE('2019-09-18 15:17:32', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '44', 'excel', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623933765860720640', TO_DATE('2019-09-18 17:30:01', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '2', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623947696532619264', TO_DATE('2019-09-18 18:25:23', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/import', '导入航标分类地图图标', '84', 'imports', '{"token":["88626068e3f8f83d3f88827567ed6bbd.1.1568799859821.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623948134535397376', TO_DATE('2019-09-18 18:27:07', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/import', '导入航标分类地图图标', '52', 'imports', '{"token":["88626068e3f8f83d3f88827567ed6bbd.1.1568799859821.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623985502671863808', TO_DATE('2019-09-18 20:55:36', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '72', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624249833506471936', TO_DATE('2019-09-19 14:25:58', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/import', '导入仓库', '331', 'imports', '{"token":["23d27506b57975170ff60745f7c1207f.1.1568874338668.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624255324307587072', TO_DATE('2019-09-19 14:47:47', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/import', '导入仓库', '131', 'imports', '{"token":["23d27506b57975170ff60745f7c1207f.1.1568874338668.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624256116032798720', TO_DATE('2019-09-19 14:50:56', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/import', '导入仓库', '131', 'imports', '{"token":["23d27506b57975170ff60745f7c1207f.1.1568874338668.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623890042988789760', TO_DATE('2019-09-18 14:36:17', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '54', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624299729680859136', TO_DATE('2019-09-19 17:44:14', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/equip/excel', '导出航标', '27', 'excel', '{"token":["23d27506b57975170ff60745f7c1207f.1.1568874338668.7200000"],"store":[""]}', NULL, '{"msg":"未登录","code":-111}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624299826107908096', TO_DATE('2019-09-19 17:44:37', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '275', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624300387645521920', TO_DATE('2019-09-19 17:46:51', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/equip/excel', '导出航标', '360', 'excel', '{"token":["c0317e2e83b4b48cea480049febd489f.1.1568886277440.7200000"],"store":[""]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625664987234304000', TO_DATE('2019-09-23 12:09:17', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '73', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625669529988497408', TO_DATE('2019-09-23 12:27:20', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '19', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625669557251473408', TO_DATE('2019-09-23 12:27:26', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '50', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625705978846773248', TO_DATE('2019-09-23 14:52:10', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625791484729229312', TO_DATE('2019-09-23 20:31:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '111', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('626121016317313024', TO_DATE('2019-09-24 18:21:23', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '440', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('626797941922725888', TO_DATE('2019-09-26 15:11:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '208', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('626828491790221312', TO_DATE('2019-09-26 17:12:38', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '56', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623581756896837632', TO_DATE('2019-09-17 18:11:16', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/import', '导入用户', '61', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623582269369483264', TO_DATE('2019-09-17 18:13:18', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/user/import', '导入用户', '31', 'imports', '{"token":["dbb496e0d90293594df9481af5bb33ea.1.1568711030147.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623582446184562688', TO_DATE('2019-09-17 18:14:00', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/user/delete', '删除用户', '41', 'delete', '{"sUser_ID":["623581756758425600"]}', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623858053984288768', TO_DATE('2019-09-18 12:29:10', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '2414', 'excel', '{"token":["c4ea3eccd6cdb28ca7e07634800d94e4.1.1568779722126.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623858464585678848', TO_DATE('2019-09-18 12:30:48', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '67', 'excel', '{"token":["c4ea3eccd6cdb28ca7e07634800d94e4.1.1568779722126.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623900342009987072', TO_DATE('2019-09-18 15:17:13', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '56', 'excel', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623906316275941376', TO_DATE('2019-09-18 15:40:57', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '39', 'excel', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623906947371892736', TO_DATE('2019-09-18 15:43:27', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '2321', 'excel', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623915549818093568', TO_DATE('2019-09-18 16:17:38', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/import', '导入航标', '224', 'imports', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623916011191533568', TO_DATE('2019-09-18 16:19:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/import', '导入航标', '64', 'imports', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623918701015465984', TO_DATE('2019-09-18 16:30:10', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/import', '导入航标', '91', 'imports', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623925498644267008', TO_DATE('2019-09-18 16:57:10', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '70', 'excel', '{"token":["2bf198426b376963e3d705b3b4a292cc.1.1568796235086.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623926494699192320', TO_DATE('2019-09-18 17:01:08', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '1638', 'excel', '{"token":["2bf198426b376963e3d705b3b4a292cc.1.1568796235086.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623926627235004416', TO_DATE('2019-09-18 17:01:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/import', '导入航标', '143', 'imports', '{"token":["2bf198426b376963e3d705b3b4a292cc.1.1568796235086.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623933618649038848', TO_DATE('2019-09-18 17:29:26', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '51', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623933637464686592', TO_DATE('2019-09-18 17:29:31', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '30', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623933783661346816', TO_DATE('2019-09-18 17:30:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '16', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623852900707205120', TO_DATE('2019-09-18 12:08:42', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '207', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623852964175413248', TO_DATE('2019-09-18 12:08:57', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aid/excel', '导出航标', '24', 'excel', '{"token":["c4ea3eccd6cdb28ca7e07634800d94e4.1.1568779722126.7200000"]}', NULL, 'nested exception is org.apache.ibatis.binding.BindingException: Parameter ''item'' not found. Available parameters are [sUser_ID, map, param1, param2]', 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623922139258421248', TO_DATE('2019-09-18 16:43:49', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aid/import', '导入航标', '1186', 'imports', '{"token":["be356e6ad2587f1873a9c079125f3455.1.1568788577550.7200000"]}', NULL, '{"msg":"未登录","code":-111}', 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623922161043636224', TO_DATE('2019-09-18 16:43:55', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '99', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623934066525208576', TO_DATE('2019-09-18 17:31:13', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '70', 'updateUserMenuAuth', '{"100":[""],"200":[""],"310":["3101"],"320":["3201"],"330":["3301"],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"650":[""],"700":[""],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623934097227513856', TO_DATE('2019-09-18 17:31:20', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '3', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623934117368561664', TO_DATE('2019-09-18 17:31:25', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623945496876023808', TO_DATE('2019-09-18 18:16:38', 'SYYYY-MM-DD HH24:MI:SS'), 'export', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/excel', '导出航标分类地图图标', '211', 'excel', '{"token":["88626068e3f8f83d3f88827567ed6bbd.1.1568799859821.7200000"]}', NULL, NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623947874916368384', TO_DATE('2019-09-18 18:26:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/import', '导入航标分类地图图标', '123', 'imports', '{"token":["88626068e3f8f83d3f88827567ed6bbd.1.1568799859821.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('623948015727542272', TO_DATE('2019-09-18 18:26:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/aidTypeMapIcon/import', '导入航标分类地图图标', '43', 'imports', '{"token":["88626068e3f8f83d3f88827567ed6bbd.1.1568799859821.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.AidTypeMapIconController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624253657428262912', TO_DATE('2019-09-19 14:41:10', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/import', '导入仓库', '40', 'imports', '{"token":["23d27506b57975170ff60745f7c1207f.1.1568874338668.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('624567202179186688', TO_DATE('2019-09-20 11:27:04', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/import', '导入器材', '516', 'imports', '{"token":["87e1a3cbc68de564ae5b05812fd5acc8.1.1568948779644.7200000"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('625654693179162624', TO_DATE('2019-09-23 11:28:22', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '200', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('632266232166350848', TO_DATE('2019-10-11 17:20:16', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '63', 'update', '{"lSys_MapIconWidthPoint":["24"],"lSys_EquipMsg":["1"],"lSys_MapLevelPoint":["7"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapIconHeightPoint":["24"],"lSys_StoreValue1":["22"],"lSys_EquipValue":[', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('633333203825852416', TO_DATE('2019-10-14 16:00:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1111', 'login', '{"username":["admin"]}', NULL, 'org.springframework.data.redis.RedisConnectionFailureException: Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379: com.jian.system.utils.RedisCache.initGetCacheObj(RedisCache.java', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('633333272784404480', TO_DATE('2019-10-14 16:00:18', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '147', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636518334141038592', TO_DATE('2019-10-23 10:56:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '119', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636523944756641792', TO_DATE('2019-10-23 11:18:54', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '21', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"chartStoreTime\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636526656244154368', TO_DATE('2019-10-23 11:29:40', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '19', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636528342371139584', TO_DATE('2019-10-23 11:36:22', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '14', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636528342392111104', TO_DATE('2019-10-23 11:36:22', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '19', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627178708767080448', TO_DATE('2019-09-27 16:24:16', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1462', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627179449854459904', TO_DATE('2019-09-27 16:27:13', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1519', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627181156286070784', TO_DATE('2019-09-27 16:34:00', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1617', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627181381541167104', TO_DATE('2019-09-27 16:34:53', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '28', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('631177887336103936', TO_DATE('2019-10-08 17:15:35', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '279', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('634036041505832960', TO_DATE('2019-10-16 14:32:52', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '14', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636514220610945024', TO_DATE('2019-10-23 10:40:16', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '102', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636518345784426496', TO_DATE('2019-10-23 10:56:39', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '30', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636528353985167360', TO_DATE('2019-10-23 11:36:25', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '19', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636530642972049408', TO_DATE('2019-10-23 11:45:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '21', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('628196281558237184', TO_DATE('2019-09-30 11:47:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '206', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('632261761889730560', TO_DATE('2019-10-11 17:02:30', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '72', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('632633567460982784', TO_DATE('2019-10-12 17:39:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '135', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('633975096129617920', TO_DATE('2019-10-16 10:30:41', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '134', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('634451015046791168', TO_DATE('2019-10-17 18:01:49', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '60', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636530648860852224', TO_DATE('2019-10-23 11:45:32', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '29', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636535497044262912', TO_DATE('2019-10-23 12:04:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '20', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636535848761819136', TO_DATE('2019-10-23 12:06:12', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, NULL, NULL, NULL, '更新用户统计布局', '45', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636536157584228352', TO_DATE('2019-10-23 12:07:26', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '15', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627182228585054208', TO_DATE('2019-09-27 16:38:15', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '31', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636535848686321664', TO_DATE('2019-10-23 12:06:12', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '27', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636536127926304768', TO_DATE('2019-10-23 12:07:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '11', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636536127930499072', TO_DATE('2019-10-23 12:07:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '12', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636536157588422656', TO_DATE('2019-10-23 12:07:26', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '16', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636537638509084672', TO_DATE('2019-10-23 12:13:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '11', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636537638509084673', TO_DATE('2019-10-23 12:13:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '11', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636575629860405248', TO_DATE('2019-10-23 14:44:17', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '11', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636619074675146752', TO_DATE('2019-10-23 17:36:55', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '82', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627164882814369792', TO_DATE('2019-09-27 15:29:20', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '214', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627175892690403328', TO_DATE('2019-09-27 16:13:05', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '37', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627177015526555648', TO_DATE('2019-09-27 16:17:32', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1647', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627177263795798016', TO_DATE('2019-09-27 16:18:32', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1437', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627185143068491776', TO_DATE('2019-09-27 16:49:50', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1694', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627185491636125696', TO_DATE('2019-09-27 16:51:13', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1457', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627185849603194880', TO_DATE('2019-09-27 16:52:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1475', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627186327355392000', TO_DATE('2019-09-27 16:54:33', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1485', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627186952398962688', TO_DATE('2019-09-27 16:57:02', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1633', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, 'java.lang.NullPointerException
com.jian.system.service.EquipService.insert(EquipService.java:145)
com.jian.system.service.EquipService$$FastClassBySpringCGLIB$$2364ef08.invoke(<generated>)
com.jian.system.service.EquipService$$EnhancerBySpringCGLIB$$c8', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627187502570012672', TO_DATE('2019-09-27 16:59:13', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1527', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, 'java.lang.NullPointerException
com.jian.system.service.EquipService.insert(EquipService.java:145)
', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627173483582849024', TO_DATE('2019-09-27 16:03:30', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '883', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627174382019543040', TO_DATE('2019-09-27 16:07:05', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '30', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627174451317833728', TO_DATE('2019-09-27 16:07:21', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '435', 'add', '{"sDict_NO":["111"],"sDict_Name":[""],"sDict_DictTypeNO":["MapIcon"],"sDict_Describe":[""],"sDict_Picture":["upload/20190927/201909271607049806875.jpeg"],"sDict_Link":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627174577306337280', TO_DATE('2019-09-27 16:07:51', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '10', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627174600760885248', TO_DATE('2019-09-27 16:07:57', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '37', 'update', '{"sDict_ID":["108001"],"sDict_NO":["1"],"sDict_Name":["测试仓库地图图标"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["StoreMapIcon"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describe":[""],"sDict_Picture"', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627183775855411200', TO_DATE('2019-09-27 16:44:24', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1568', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627187818199777280', TO_DATE('2019-09-27 17:00:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '1528', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, 'java.lang.NullPointerException: com.jian.system.service.EquipService.insert(EquipService.java:145)', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627196024154226688', TO_DATE('2019-09-27 17:33:04', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '930', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', NULL, 'com.jian.system.exception.ServiceException: {"msg":"未登录","code":-111}: com.jian.system.utils.TokenUtils.getLoginUser(TokenUtils.java:119)', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627196053229142016', TO_DATE('2019-09-27 17:33:11', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '152', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('628241914369409024', TO_DATE('2019-09-30 14:49:04', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '91', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('628248046836121600', TO_DATE('2019-09-30 15:13:26', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/useEquip', '航标使用器材', '1560', 'useEquip', '{"sAid_ID":["625655802769702912"],"sEquip_IDs":["624573598144659457"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('631897028317675520', TO_DATE('2019-10-10 16:53:11', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '130', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('626919576487067648', TO_DATE('2019-09-26 23:14:34', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateStore', '更新分配给用户的仓库', '116', 'updateStore', '{"sUser_ID":["606138587578105856"],"store":["[{\"sStore_Level1\":\"1\",\"sStore_Level2\":\"12\",\"sStore_Level3\":\"121\",\"sStore_Level4\":\"1211\"},{\"sStore_Level1\":\"1\",\"sStore_Level2\":\"12\",\"sStore_Level3\":\"121\",\"sStore_Level4\":\"1212\"},{', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('632174797115097088', TO_DATE('2019-10-11 11:16:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '117', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('633613518477721600', TO_DATE('2019-10-15 10:33:54', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '106', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('634069836506333184', TO_DATE('2019-10-16 16:47:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '79', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('634399360100073472', TO_DATE('2019-10-17 14:36:34', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '201', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636272068303781888', TO_DATE('2019-10-22 18:38:02', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '467', 'updatePosition', '{"style":["[{\"id\":\"chartEquipDistribution\",\"x\":1,\"y\":1,\"sizex\":12,\"sizey\":5},{\"id\":\"chartStoreTime\",\"x\":1,\"y\":6,\"sizex\":12,\"sizey\":5},{\"id\":\"chartEquipLife\",\"x\":1,\"y\":11,\"sizex\":12,\"sizey\":5},{\"id\":\"chartEquipBrandRe', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636522400074170368', TO_DATE('2019-10-23 11:12:46', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '25', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636522405698732032', TO_DATE('2019-10-23 11:12:47', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '29', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636523913873981440', TO_DATE('2019-10-23 11:18:47', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '19', 'updatePosition', '{"style":["[{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"chartStoreTime\",\"x\":4,\"y\":1,\"sizex\":3,\"sizey\"', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('626919726655733760', TO_DATE('2019-09-26 23:15:10', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateStore', '更新分配给用户的仓库', '27', 'updateStore', '{"sUser_ID":["606138587578105856"],"store":["[{\"sStore_Level1\":\"1\",\"sStore_Level2\":\"12\",\"sStore_Level3\":\"121\",\"sStore_Level4\":\"1211\"},{\"sStore_Level1\":\"1\",\"sStore_Level2\":\"12\",\"sStore_Level3\":\"121\",\"sStore_Level4\":\"1212\"}]"', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627196116944814080', TO_DATE('2019-09-27 17:33:27', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '136', 'add', '{"sEquip_NO":["12"],"sEquip_Type":["EquipLamp"],"lLamp_TelemetryFlag":["0"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Name":["12"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('627196231524810752', TO_DATE('2019-09-27 17:33:54', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/equip/delete', '删除器材', '73', 'delete', '{"sEquip_ID":["627196116546355200"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('632225687121428480', TO_DATE('2019-10-11 14:39:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '31', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('635897868460228608', TO_DATE('2019-10-21 17:51:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '478', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636242068649279488', TO_DATE('2019-10-22 16:38:49', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '117', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636523954139299840', TO_DATE('2019-10-23 11:18:56', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '26', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636526623159484416', TO_DATE('2019-10-23 11:29:33', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '11', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636526665664561152', TO_DATE('2019-10-23 11:29:43', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '17', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636951022517878784', TO_DATE('2019-10-24 15:35:57', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '60', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639078883148169216', TO_DATE('2019-10-30 12:31:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '57', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639109106661064704', TO_DATE('2019-10-30 14:31:25', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '6', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639507092876558336', TO_DATE('2019-10-31 16:52:52', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '358', 'update', '{"sDict_Name":["22"],"dDict_CreateDate":["1564495716000"],"lDict_SysFlag":["0"],"sDict_UpdateUserID":[""],"sDict_Link":[""],"sDict_Picture":["upload/20191031/201910311652453607714.png"],"sDict_NO":["12"],"sDict_ID":["605884478887297024"],"sDict_Describe":', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639510014075076608', TO_DATE('2019-10-31 17:04:28', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '39', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639860058259193856', TO_DATE('2019-11-01 16:15:25', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.59.168', NULL, '/api/msg/app/read', 'app消息已读', '5788', 'appRead', '{"sMsg_ID":["626918163623182336"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639866466694332416', TO_DATE('2019-11-01 16:40:53', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '1804', 'appLogin', '{"username":["admin"]}', NULL, 'org.springframework.dao.QueryTimeoutException: Redis command timed out; nested exception is io.lettuce.core.RedisCommandTimeoutException: Command timed out: com.jian.system.utils.RedisCache.initSetCacheObj(RedisCache.java:36)', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639867003921760256', TO_DATE('2019-11-01 16:43:01', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '484', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640980091991490560', TO_DATE('2019-11-04 18:26:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '93', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640980402835554304', TO_DATE('2019-11-04 18:27:16', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.201.216', NULL, '/api/user/app/changePWD', 'app修改用户密码', '106', 'appChangePWD', '{"oldPwd":["admin"],"newPwd":["admin123"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636963044135534592', TO_DATE('2019-10-24 16:23:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637299966456365056', TO_DATE('2019-10-25 14:42:32', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '272', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('638714371605790720', TO_DATE('2019-10-29 12:22:52', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '1850', 'appLogin', '{"username":["admin"]}', NULL, 'org.springframework.data.redis.RedisConnectionFailureException: Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379: com.jian.system.utils.RedisCache.initGetCacheObj(RedisCache.java', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('638714507568349184', TO_DATE('2019-10-29 12:23:25', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '212', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639067665368875008', TO_DATE('2019-10-30 11:46:44', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '76', 'update', '{"lSys_MapIconWidthPoint":["20"],"lSys_EquipMsg":["1"],"lSys_MapLevelPoint":["6"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapIconHeightPoint":["20"],"lSys_StoreValue1":["22"],"lSys_EquipValue":[', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639068337271209984', TO_DATE('2019-10-30 11:49:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '37', 'update', '{"lSys_MapIconWidthPoint":["20"],"lSys_EquipMsg":["1"],"lSys_MapLevelPoint":["6"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapIconHeightPoint":["20"],"lSys_StoreValue1":["22"],"lSys_EquipValue":[', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639788769595097088', TO_DATE('2019-11-01 11:32:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '2458', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640980500260847616', TO_DATE('2019-11-04 18:27:40', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '81', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640980527649652736', TO_DATE('2019-11-04 18:27:46', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '35', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('644131357059973120', TO_DATE('2019-11-13 11:08:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.200.211', NULL, '/api/user/app/login', 'app用户登录', '12143', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636988551178747904', TO_DATE('2019-10-24 18:05:05', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '68', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637299966460559360', TO_DATE('2019-10-25 14:42:32', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '273', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637299991399890945', TO_DATE('2019-10-25 14:42:38', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '13', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637299991399890944', TO_DATE('2019-10-25 14:42:38', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '13', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300021624045569', TO_DATE('2019-10-25 14:42:45', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '56', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', 'org.springframework.dao.DuplicateKeyException: 
### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: ORA-00001: 违反唯一约束条件 (AASYSTEM.SYS_C0015543)

### The error may involve com.jian.system.dao.SystemLogMapper.insert-Inl', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639151259055554560', TO_DATE('2019-10-30 17:18:55', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '9', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('641972606634819584', TO_DATE('2019-11-07 12:09:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '12742', 'appLogin', '{"username":["admin "]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('645944785542053888', TO_DATE('2019-11-18 11:13:57', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1083', 'login', '{"username":["admin"]}', NULL, 'org.springframework.data.redis.RedisConnectionFailureException: Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379: com.jian.system.utils.RedisCache.initGetCacheObj(RedisCache.java', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('638378978381398016', TO_DATE('2019-10-28 14:10:08', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/login', '用户登录', '59', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('638409490953142272', TO_DATE('2019-10-28 16:11:23', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/login', '用户登录', '71', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639469613880442880', TO_DATE('2019-10-31 14:23:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '59', 'appLogin', '{"username":[""]}', '{"msg":"缺少username参数 ","code":-206}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639470758946406400', TO_DATE('2019-10-31 14:28:29', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '854', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639471416365809664', TO_DATE('2019-10-31 14:31:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '35', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639479743577587712', TO_DATE('2019-10-31 15:04:11', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1293', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639887148660555776', TO_DATE('2019-11-01 18:03:04', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '105', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('641335657372844032', TO_DATE('2019-11-05 17:58:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '7705', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('641335737060425728', TO_DATE('2019-11-05 17:59:15', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '350', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('644854377684664320', TO_DATE('2019-11-15 11:01:04', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.200.211', NULL, '/api/user/app/login', 'app用户登录', '12478', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636883187384975360', TO_DATE('2019-10-24 11:06:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '77', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636932411493449728', TO_DATE('2019-10-24 14:22:00', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '72', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637249129927409664', TO_DATE('2019-10-25 11:20:32', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '185', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300418631696384', TO_DATE('2019-10-25 14:44:20', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '12', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300418702999552', TO_DATE('2019-10-25 14:44:20', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '6', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300434448416768', TO_DATE('2019-10-25 14:44:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '13', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300434448416769', TO_DATE('2019-10-25 14:44:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '13', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300461107412992', TO_DATE('2019-10-25 14:44:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '11', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637300461115801600', TO_DATE('2019-10-25 14:44:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '13', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637344599265771520', TO_DATE('2019-10-25 17:39:53', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('638792183071113216', TO_DATE('2019-10-29 17:32:04', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '352', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639507063344463872', TO_DATE('2019-10-31 16:52:45', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '114', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639510419819462656', TO_DATE('2019-10-31 17:06:05', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.59.168', NULL, '/api/equip/app/inStore', 'app器材入库', '1565', 'appInStore', '{"date":["1572512755040"],"dEquip_CreateDate":["0"],"sEquip_MModel":["111111"],"dEquip_UseDate":["0"],"sEquip_Manufacturer":["test"],"sEquip_Type":["2"],"sEquip_NfcID":[""],"sEquip_Icon":[""],"sEquip_StoreLv3":["131"],"sEquip_Status":["2"],"dEquip_Arrival', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639532699849064448', TO_DATE('2019-10-31 18:34:37', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.59.168', NULL, '/api/equip/app/outStore', 'app器材出库', '551', 'appOutStore', '{"date":["1572518072598"],"remarks":[""],"sEquip_ID":["2"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639872632677728256', TO_DATE('2019-11-01 17:05:23', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '135', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639873139936854016', TO_DATE('2019-11-01 17:07:24', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '64', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639881965402587136', TO_DATE('2019-11-01 17:42:28', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '103', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639882911633375232', TO_DATE('2019-11-01 17:46:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '78', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636879796915142656', TO_DATE('2019-10-24 10:52:56', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '154', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('636883256049926144', TO_DATE('2019-10-24 11:06:40', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updatePosition', '更新用户统计布局', '16', 'updatePosition', '{"style":["[{\"id\":\"1\",\"x\":4,\"y\":1,\"sizex\":6,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"2\",\"x\":1,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize\":true,\"undrag\":true},{\"id\":\"3\",\"x\":10,\"y\":1,\"sizex\":3,\"sizey\":1,\"unresize', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('637297228716703744', TO_DATE('2019-10-25 14:31:39', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '154', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('638327686732709888', TO_DATE('2019-10-28 10:46:20', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/login', '用户登录', '831', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639047861585051648', TO_DATE('2019-10-30 10:28:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '107', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('639884870004244480', TO_DATE('2019-11-01 17:54:01', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.59.168', NULL, '/api/user/app/login', 'app用户登录', '182', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640883334515261440', TO_DATE('2019-11-04 12:01:33', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '11458', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640933035692261376', TO_DATE('2019-11-04 15:19:03', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.201.216', NULL, '/api/msg/app/add', 'app新增消息', '135', 'appAdd', '{}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MessageController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640979010376957952', TO_DATE('2019-11-04 18:21:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '1830', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('640979108192321536', TO_DATE('2019-11-04 18:22:08', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.216', NULL, '/api/user/app/login', 'app用户登录', '64', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('649988770724052992', TO_DATE('2019-11-29 15:03:19', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '22', 'add', '{"name":["123"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"level":[""]}', '{"msg":"level不能为空","code":-211,"data":""}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('650027903861391360', TO_DATE('2019-11-29 17:38:49', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/dict/delete', '删除数据字典', '19', 'delete', '{"sDict_ID":["2006"]}', NULL, 'com.jian.system.exception.ServiceException: {"msg":"删除失败，系统默认，不可删除。","code":-104}: com.jian.system.service.DictService.delete(DictService.java:98)', 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('645944835370385408', TO_DATE('2019-11-18 11:14:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '97', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('649988794564476928', TO_DATE('2019-11-29 15:03:24', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '17', 'add', '{"name":["123"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"level":[""]}', '{"msg":"level不能为空","code":-211,"data":""}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('650263703165337600', TO_DATE('2019-11-30 09:15:48', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '40', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('645993053391159296', TO_DATE('2019-11-18 14:25:45', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '273', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('646325277378478080', TO_DATE('2019-11-19 12:25:54', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('646024339065405440', TO_DATE('2019-11-18 16:30:04', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '8', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('646356695685005312', TO_DATE('2019-11-19 14:30:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '127', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('647891811943055360', TO_DATE('2019-11-23 20:10:45', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '95', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('649988626620350464', TO_DATE('2019-11-29 15:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '198', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('650021734388334592', TO_DATE('2019-11-29 17:14:18', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '13', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('646294893550895104', TO_DATE('2019-11-19 10:25:10', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '152', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('646748154401652736', TO_DATE('2019-11-20 16:26:16', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.201.131', NULL, '/api/user/app/login', 'app用户登录', '12165', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');

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
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('604797909992472576', '121', '25d55ad283aa400af464c76d713c07ad', '12', '1', '604790269384065024', '11', '11', '11', '11', TO_DATE('2019-07-27 22:10:58', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('604802285633011712', '88', '25d55ad283aa400af464c76d713c07ad', '78', '0', NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 22:28:21', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('604799230179016704', '12', '13', '13', '0', NULL, '13', '13', '13', '13', TO_DATE('2019-07-27 22:16:13', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('22', '22', '21232f297a57a5a743894a0e4a801fc3', '2222', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('606138587578105856', 'test', '098f6bcd4621d373cade4e832627b4f6', 'test', '1', '604790269384065024', NULL, NULL, NULL, NULL, TO_DATE('2019-07-31 14:58:20', 'SYYYY-MM-DD HH24:MI:SS'), '22');

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
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('1', '1', '604074845818322944');
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('607216786928041984', '606138587578105856', '604074845818322944');
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('607216786928041985', '606138587578105856', '604748743446626304');
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('607216786928041986', '606138587578105856', '604748877744046080');
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('607216786928041987', '606138587578105856', '604743636243972096');
INSERT INTO "AASYSTEM"."tBase_UserAid" VALUES ('607216786928041988', '606138587578105856', '604745958013534208');

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
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('606221754905395200', '604799230179016704', '100', '1001,1002,1003');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('605425682465423360', '604797909992472576', '642', '1');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('605425682465423361', '604797909992472576', '500', '2');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('623934066382602240', '606138587578105856', '330', '3301');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('623934066382602241', '606138587578105856', '320', '3201');
INSERT INTO "AASYSTEM"."tBase_UserMenu" VALUES ('623934066382602242', '606138587578105856', '310', '3101');

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
-- Records of tBase_UserStore
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('1', '1', '1', '12', '121', '1211');
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('2', '1', '1', '12', '121', '1212');
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('626919726622179328', '606138587578105856', '1', '12', '121', '1211');
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('626919726622179329', '606138587578105856', '1', '12', '121', '1212');

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
-- Records of tEquip_Ais
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_Ais" VALUES ('618233851264630784', '1');
INSERT INTO "AASYSTEM"."tEquip_Ais" VALUES ('617859966383947776', '1');
INSERT INTO "AASYSTEM"."tEquip_Ais" VALUES ('614529104644931584', NULL);
INSERT INTO "AASYSTEM"."tEquip_Ais" VALUES ('624573598144659458', NULL);

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
-- Records of tEquip_Battery
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_Battery" VALUES ('618234509829079040', '4', '1', '4', '4', '4');
INSERT INTO "AASYSTEM"."tEquip_Battery" VALUES ('624573598148853762', '4', '1', '4', '4', '4');

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
-- Records of tEquip_Lamp
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('618238026161586176', '8', NULL, '1', '8', '8', '1', '1', '1');
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('618238487442751488', '8', NULL, '1', '8', '8', '1', '1', '1');
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('618239505467441152', '9', NULL, '1', '8', '8', '1', '0', '1');
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('614596394342154240', 'e2', 'e2', '1', '22', '22', '1', '1', '1');
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('614595567070216192', 'ee', 'ee', '1', '12', '12', '1', '1', '1');
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('624573598136270848', NULL, NULL, '1', '12', '20', '1', '0', NULL);
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('624574591045468160', NULL, NULL, '1', '12', '20', '1', '1', '1');

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
-- Records of tEquip_Radar
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_Radar" VALUES ('624567201017364480', '1', '1');
INSERT INTO "AASYSTEM"."tEquip_Radar" VALUES ('618234038343172096', '1', '1');

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
-- Records of tEquip_SolarEnergy
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_SolarEnergy" VALUES ('618234729317007360', '5', '1', '5', '5', '5');
INSERT INTO "AASYSTEM"."tEquip_SolarEnergy" VALUES ('624573598144659456', '5', '1', '5', '5', '5');

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
-- Records of tEquip_SpareLamp
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_SpareLamp" VALUES ('618237640889597952', '6');
INSERT INTO "AASYSTEM"."tEquip_SpareLamp" VALUES ('624573598144659457', '6');

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
-- Records of tEquip_Telemetry
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_Telemetry" VALUES ('618234272909623296', '1', '3', '3', '3', '3');
INSERT INTO "AASYSTEM"."tEquip_Telemetry" VALUES ('624573598148853761', '1', '3', '3', '3', '3');

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
-- Records of tEquip_ViceLamp
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_ViceLamp" VALUES ('618237751652777984', '7');
INSERT INTO "AASYSTEM"."tEquip_ViceLamp" VALUES ('624573598148853763', '7');

-- ----------------------------
-- Primary Key structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012861" PRIMARY KEY ("sAid_ID");


-- ----------------------------
-- Primary Key structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012908" PRIMARY KEY ("sAidEquip_ID");


-- ----------------------------
-- Primary Key structure for table tBase_AidMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0018045" PRIMARY KEY ("sAidIcon_ID");

----------------------------
-- Primary Key structure for table tBase_AidTypeMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0018049" PRIMARY KEY ("sAidTypeIcon_ID");


-- ----------------------------
-- Primary Key structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113800" PRIMARY KEY ("sApp_ID");


-- ----------------------------
-- Primary Key structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016114" PRIMARY KEY ("sAppMenu_ID");


-- ----------------------------
-- Indexes structure for table tBase_AppMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."AppMenu_Index"
  ON "AASYSTEM"."tBase_AppMenu" ("sAppMenu_AppID" ASC)
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
-- Primary Key structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012842" PRIMARY KEY ("sDict_ID");

-- ----------------------------
-- Primary Key structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012843" PRIMARY KEY ("sDictType_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012881" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tBase_EquipLife
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLife" ADD CONSTRAINT "SYS_C0022120" PRIMARY KEY ("sELife_ID");

 ----------------------------
-- Primary Key structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012888" PRIMARY KEY ("sELog_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012844" PRIMARY KEY ("sGroup_ID");

-- ----------------------------
-- Primary Key structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012845" PRIMARY KEY ("sGroupMenu_ID");

-- ----------------------------
-- Indexes structure for table tBase_GroupMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."GroupMenu_Index"
  ON "AASYSTEM"."tBase_GroupMenu" ("sGroupMenu_GroupID" ASC)
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
-- Primary Key structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012846" PRIMARY KEY ("sMenu_ID");

-- ----------------------------
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");

-- ----------------------------
-- Primary Key structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012847" PRIMARY KEY ("sInterface_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012916" PRIMARY KEY ("sMsg_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012897" PRIMARY KEY ("sNfc_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012857" PRIMARY KEY ("sStore_ID");


-- ----------------------------
-- Primary Key structure for table tBase_StoreLimit
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022484" PRIMARY KEY ("sSLimit_ID");

-- ----------------------------
-- Primary Key structure for table tBase_StoreLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019974" PRIMARY KEY ("sSLog_ID");


-- ----------------------------
-- Primary Key structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012853" PRIMARY KEY ("sStoreType_ID");

-- ----------------------------
-- Primary Key structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0017770" PRIMARY KEY ("sSys_ID");

-- ----------------------------
-- Primary Key structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015543" PRIMARY KEY ("sSLog_ID");

-- ----------------------------
-- Primary Key structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012848" PRIMARY KEY ("sThird_ID");

-- ----------------------------
-- Primary Key structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012849" PRIMARY KEY ("sUser_ID");

-- ----------------------------
-- Primary Key structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012902" PRIMARY KEY ("sUserAid_ID");

-- ----------------------------
-- Indexes structure for table tBase_UserAid
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserAid_Index"
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
-- Primary Key structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012851" PRIMARY KEY ("sUserMenu_ID");


-- ----------------------------
-- Indexes structure for table tBase_UserMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserMenu_Index"
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
-- Primary Key structure for table tBase_UserStation
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStation" ADD CONSTRAINT "SYS_C0022036" PRIMARY KEY ("sUserStation_ID");

-- ----------------------------
-- Primary Key structure for table tBase_UserStore
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStore" ADD CONSTRAINT "SYS_C0021700" PRIMARY KEY ("sUserStore_ID");


-- ----------------------------
-- Indexes structure for table tBase_UserStore
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserStore_Index"
  ON "AASYSTEM"."tBase_UserStore" ("sUserStore_UserID" ASC)
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
-- Primary Key structure for table tEquip_Ais
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0018834" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_Battery
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0018845" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_Lamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0012866" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_Radar
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0018837" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_SolarEnergy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0012872" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_SpareLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018849" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_Telemetry
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018841" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_ViceLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018854" PRIMARY KEY ("sEquip_ID");

