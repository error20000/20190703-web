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

 Date: 17/08/2019 22:31:05
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
  "sAid_Status" NVARCHAR2(64) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_Lat" IS '纬度';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_Lng" IS '经度';
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

-- ----------------------------
-- Records of tBase_Aid
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('605889035314921472', '1', '1', '1', '1', 'test', 'test', '12', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', 'test', NULL, TO_DATE('2019-07-30 22:26:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('605833582404960256', '1', '1', '1', '1', 'test', 'test', NULL, NULL, NULL, 'test1', 'test', NULL, TO_DATE('2019-07-30 18:46:21', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604617148949594112', '12', '12', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 10:12:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748640124141568', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748743446626304', '123', '123', '123', '123', NULL, NULL, NULL, TO_DATE('2019-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748877744046080', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:56:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604743636243972096', '11', '11', '24.46', '118.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:35:18', 'SYYYY-MM-DD HH24:MI:SS'), 'unusual');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604745958013534208', '11', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:44:32', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604074845818322944', '1', '1', '24.46', '118.1', 'test', 'test', '12', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', 'test', '604078755886923776', TO_DATE('2019-07-25 22:17:46', 'SYYYY-MM-DD HH24:MI:SS'), 'normal');

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
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('611256305901895680', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956801', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956802', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956803', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956804', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956805', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956806', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956807', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956808', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_AidEquip" VALUES ('6112563059018956809', '604748743446626304', '611145406239211520', TO_DATE('2019-08-16 13:43:42', 'SYYYY-MM-DD HH24:MI:SS'));

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
  "sDict_Name" NVARCHAR2(64) ,
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
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('605884478887297024', '12', '22', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', NULL, NULL, '0', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('3', 'test1', '长闪白10秒', NULL, NULL, 'AidLighting', NULL, NULL, NULL, '2+8', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('1', 'test', '灯塔', NULL, NULL, 'AidType', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2', 'test', '厦门', NULL, NULL, 'AidStation', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('4', 'test2', '互顿蓝黄3秒', NULL, NULL, 'AidLighting', NULL, NULL, NULL, '蓝1.0+5.0+黄1.0+5.0', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('5', 'test', 'test', NULL, NULL, 'AidMark', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('7', 't', '灯', NULL, NULL, 'EquipType', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107001', 'normal', '正常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'AidMapIconByStatus', TO_DATE('2019-08-17 18:05:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, 'upload/20190817/201908171805306689781.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('106002', 'unusual', '异常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107002', 'unusual', '异常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'AidMapIconByStatus', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, 'upload/20190817/201908171805462081735.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700011', '10', '异常', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701011', '10', '异常中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('301001', '1', '图标一', NULL, NULL, 'StoreTypeMapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('301002', '2', '图标二', NULL, NULL, 'StoreTypeMapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);

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
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('107', 'AidMapIconByStatus', '航标状态地图图标', NULL, NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('301', 'StoreTypeMapIcon', '仓库地图图标', NULL, NULL, NULL, NULL, '1');

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
  "sEquip_NO" NVARCHAR2(64) 
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

-- ----------------------------
-- Records of tBase_Equip
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('2', '2', '2', '2', '2', '2', '2', '2', NULL, NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('3', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('4', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('5', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('6', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('7', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('8', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('9', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10', '10', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('11', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('12', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('13', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('14', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('15', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('16', '16', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('610646900542013440', '123333123', NULL, NULL, NULL, NULL, 't', '0', NULL, NULL, TO_DATE('2019-08-13 01:32:46', 'SYYYY-MM-DD HH24:MI:SS'), '123333123');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('606098577566990336', '606098577566990336', '1', '12', '121', '1212', 't', 'rr', '603723565073694720', NULL, TO_DATE('2019-07-31 12:19:21', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('611145406239211520', 'reres', '604434599291912192', '604613628313731072', NULL, NULL, 't', '9', NULL, '604748743446626304', TO_DATE('2019-08-14 10:33:39', 'SYYYY-MM-DD HH24:MI:SS'), 're');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('611149995122360320', 'wewewe', '604434599291912192', '604613628313731072', NULL, NULL, 't', '1', NULL, NULL, TO_DATE('2019-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), 'wewe');

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
  "sELog_IP" NVARCHAR2(255) 
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

-- ----------------------------
-- Records of tBase_EquipLog
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('1', NULL, TO_DATE('2019-08-01 15:59:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '1000', '10100101001', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('2', NULL, TO_DATE('2019-08-02 16:01:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '11111', '11111111111', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('3', NULL, TO_DATE('2019-08-03 16:02:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '222222', '222222222222', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611154333303570432', '1', TO_DATE('2019-08-14 11:09:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611256305071423488', '9', TO_DATE('2019-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材使用中', NULL, '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611145683755335680', '1', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', 'of', '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611147685268815872', '1', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', 'you', '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611148412338831360', '1', TO_DATE('2019-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', 'uu', '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149096329150464', '1', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149879342792704', '1', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', '器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库', '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149995122360321', '1', TO_DATE('2019-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', NULL, '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611152641623326720', '2', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材出库', 'GBM', '192.168.106.67');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611163237706104832', '4', TO_DATE('2019-08-14 11:44:30', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材运输中', 'good', '192.168.106.67');

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
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('100', 'NFC标签', NULL, 'nfc.html', NULL, '1', '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('200', '仓库管理', NULL, 'store.html', NULL, '1', '2');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('300', '航标管理', NULL, 'aid.html', NULL, '1', '3');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('700', '器材管理', NULL, 'equip.html', NULL, '1', '4');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('400', '地图展示', NULL, 'map.html', NULL, '1', '5');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('500', '统计分析', NULL, NULL, NULL, '1', '6');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('600', '系统管理', NULL, NULL, NULL, '1', '7');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('610', '数据字典', '600', NULL, NULL, '1', '8');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('611', '字典分类', '610', 'dictType.html', NULL, '1', '9');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('612', '字典配置', '610', 'dict.html', NULL, '1', '10');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('620', '系统日志', '600', 'slog.html', NULL, '1', '11');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('630', '应用注册', '600', 'app.html', NULL, '1', '12');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('640', '用户管理', '600', NULL, NULL, '1', '13');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('641', '用户组', '640', 'group.html', NULL, '1', '14');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('642', '用户', '640', 'user.html', NULL, '1', '15');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('650', '系统设置', '600', 'sys.html', NULL, '1', '16');

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
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3007', '分配用户', '300', NULL, '1', NULL, 'sys:aid:user');
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
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3001', '查询', '300', NULL, '1', NULL, 'sys:aid:query');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3002', '新增', '300', NULL, '1', NULL, 'sys:aid:add');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3003', '修改', '300', NULL, '1', NULL, 'sys:aid:update');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3004', '删除', '300', NULL, '1', NULL, 'sys:aid:delete');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3005', '导入', '300', NULL, '1', NULL, 'sys:aid:import');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3006', '导出', '300', NULL, '1', NULL, 'sys:aid:export');
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
  "lMsg_Level" NUMBER 
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
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606884269125533696', '12', '12', '0', TO_DATE('2019-08-02 16:21:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606886687372476416', 'ttt222222', 'tttt222222222', '0', TO_DATE('2019-08-02 16:31:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606885149241507840', 'ttt', 'ttt', '0', TO_DATE('2019-08-02 16:24:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('606885697294434304', 'ttt', 'ttt', '0', TO_DATE('2019-08-02 16:27:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('604752194377351168', '123111', '123111', '0', TO_DATE('2019-07-27 19:09:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('603723565073694720', 'test22', 'test22', '1', TO_DATE('1970-01-01 08:00:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('604078755886923776', '12', '12', '1', TO_DATE('2019-07-25 22:33:18', 'SYYYY-MM-DD HH24:MI:SS'));

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
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('612320667446018048', 'teee', '1', NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('612328289813397504', '112', '612326895639330816', NULL, NULL, '612326895639330816', '0');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604428777530851328', 'test', '1', '13', '131', '131', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604428989146071040', '33', '1', '13', '131', '131', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604436805260935168', 'test', '1', '12', NULL, '12', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('11', '112', '1', NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('12', '12', '1', NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('121', '121', '1', '12', NULL, '12', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('1211', '1211', '1', '12', '121', '121', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('1212', '1212', '1', '12', '121', '121', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('13', '13', '1', NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('131', '131', '1', '13', NULL, '13', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604445267793543168', '66', '1', '11', NULL, '11', NULL);
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604613628313731072', 'ttt', '604434599291912192', NULL, NULL, '604434599291912192', NULL);

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
  "sStoreType_MapIcon" NVARCHAR2(64) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Lat" IS '纬度';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Lng" IS '经度';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_Station" IS '归属航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Limit" IS '库存预警值';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_MapIcon" IS '地图图标';

-- ----------------------------
-- Records of tBase_StoreType
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('612326895639330816', '11', '11', '11', '11', 'test', '11', '1');
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('604434599291912192', '12', '123', '123', '123', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('1', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('607149452645367808', 'rwrwr', 'rrr', '24.46', '118.15', 'test', '0', '2');

-- ----------------------------
-- Table structure for tBase_System
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_System";
CREATE TABLE "AASYSTEM"."tBase_System" (
  "sSys_ID" NVARCHAR2(32) NOT NULL ,
  "sSys_MapService" NVARCHAR2(255) ,
  "lSys_MapLat" NUMBER ,
  "lSys_MapLng" NUMBER 
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

-- ----------------------------
-- Records of tBase_System
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_System" VALUES ('1', 'http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer', '24.46', '118.1');

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
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970838360522752', TO_DATE('2019-08-02 22:05:24', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '5', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
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
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955070625415168', TO_DATE('2019-08-02 21:02:45', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '107', 'updateGroupMenuAuth', '{"100":[""],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":["641001,641002,641003,641004,641005,641006,641007"],"642":["642001,642002,642003,642004,642005,642006,642007"],"700":[""],"sGroup_ID":["2"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955262049255424', TO_DATE('2019-08-02 21:03:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '93', 'updateGroupMenuAuth', '{"100":["1001,1002,1003,1004"],"200":["2001,2002,2003,2004"],"300":["3001,3002,3003,3004"],"400":["4001"],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":["7001,7002,7003,7004"],"sGroup_ID":["3"]}', '{"msg":"成功 ","code":1,"data":5}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955336863055872', TO_DATE('2019-08-02 21:03:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/update', '更新用户', '51', 'update', '{"sUser_ID":["606138587578105856"],"sUser_UserName":["test"],"sUser_PassWord":["098f6bcd4621d373cade4e832627b4f6"],"sUser_Nick":["test"],"lUser_StatusFlag":["1"],"sUser_GroupID":["3"],"sUser_QQ":[""],"sUser_Email":[""],"sUser_Phone":[""],"sUser_ThirdID":[', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606955421478944768', TO_DATE('2019-08-02 21:04:09', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '254', 'updateUserMenuAuth', '{"100":[""],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sUser_ID":["606138587578105856"]}', NULL, NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606956655367684096', TO_DATE('2019-08-02 21:09:03', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '76', 'updateUserMenuAuth', '{"100":["1001,1002,1003,1006,1004,1005"],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606956712871591936', TO_DATE('2019-08-02 21:09:17', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateUserMenuAuth', '更新用户菜单权限', '40', 'updateUserMenuAuth', '{"100":[""],"200":[""],"300":[""],"400":[""],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957136592764928', TO_DATE('2019-08-02 21:10:58', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/menu/updateGroupMenuAuth', '更新用户组菜单权限', '41', 'updateGroupMenuAuth', '{"100":["1001,1002,1003"],"200":[""],"300":[""],"400":[""],"500":["2"],"611":[""],"612":[""],"620":[""],"630":[""],"641":[""],"642":[""],"700":[""],"sGroup_ID":["604790269384065024"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.MenuController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957227156176896', TO_DATE('2019-08-02 21:11:19', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '25', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"3","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUse', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606957363504611328', TO_DATE('2019-08-02 21:11:52', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/nfc/delBind', '解除NFC绑定', '132', 'delBind', '{"sNfc_ID":["606886687372476416"],"id":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.NfcController');
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
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606885111446634496', TO_DATE('2019-08-02 16:24:45', 'SYYYY-MM-DD HH24:MI:SS'), 'login', '606138587578105856', '127.0.0.1', 'test', '/api/user/login', '用户登录', '462', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":n', NULL, 'com.jian.system.controller.UserController');
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
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970864532979712', TO_DATE('2019-08-02 22:05:31', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607193608474329088', TO_DATE('2019-08-03 12:50:37', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/updateUser', '更新航标分配的用户', '44', 'updateUser', '{"user":["1,606138587578105856"],"sAid_ID":["604617148949594112"]}', '{"msg":"成功 ","code":1,"data":2}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607216787167117312', TO_DATE('2019-08-03 14:22:43', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/user/updateAid', '更新分配给用户的航标', '132', 'updateAid', '{"aid":["604074845818322944,604748743446626304,604748877744046080,604743636243972096,604745958013534208"],"sUser_ID":["606138587578105856"]}', '{"msg":"成功 ","code":1,"data":5}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607221818150879232', TO_DATE('2019-08-03 14:42:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '190', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607321054481743872', TO_DATE('2019-08-03 21:17:02', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '527', 'login', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607321120403619840', TO_DATE('2019-08-03 21:17:18', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '29', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607193665906933760', TO_DATE('2019-08-03 12:50:51', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/updateUser', '更新航标分配的用户', '32', 'updateUser', '{"user":[""],"sAid_ID":["604617148949594112"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607252996442554368', TO_DATE('2019-08-03 16:46:36', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '21', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607283228440526848', TO_DATE('2019-08-03 18:46:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '135', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('609645962469572608', TO_DATE('2019-08-10 07:15:24', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1191', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610645738518478848', TO_DATE('2019-08-13 01:28:09', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '891', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610646900848197632', TO_DATE('2019-08-13 01:32:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/equip/add', '新增器材', '117', 'add', '{"sEquip_NO":["123333"],"sEquip_Name":["123333"],"sEquip_Type":["t"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612267861603254272', TO_DATE('2019-08-17 12:53:53', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1273', 'login', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612268075147853824', TO_DATE('2019-08-17 12:54:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '647', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612328163841671168', TO_DATE('2019-08-17 16:53:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '61', 'update', '{"lStoreType_Lng":["11"],"lStoreType_Limit":["11"],"sStoreType_Name":["11"],"lStoreType_Lat":["11"],"sStoreType_Station":["test"],"sStore_Name":["11"],"sStoreType_Address":["11"],"sStore_ID":["612326895639330816"],"sStoreType_ID":["612326895639330816"],"l', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612328289859534848', TO_DATE('2019-08-17 16:54:00', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '53', 'add', '{"level":["2"],"name":["112"],"sStore_Level1":["612326895639330816"],"sStore_Level2":[""],"sStore_Level3":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346282836492288', TO_DATE('2019-08-17 18:05:30', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '61', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346306962128896', TO_DATE('2019-08-17 18:05:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '58', 'update', '{"sDict_ID":["107001"],"sDict_NO":["normal"],"sDict_Name":["正常地图图标"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["AidMapIconByStatus"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["1"],"sDict_Describe":[""],"sDict', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346358392684544', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '80', 'update', '{"sDict_ID":["107002"],"sDict_NO":["unusual"],"sDict_Name":["异常地图图标"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["AidMapIconByStatus"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["1"],"sDict_Describe":[""],"sDic', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359412853506048', TO_DATE('2019-08-17 18:57:41', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '43', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359475424133120', TO_DATE('2019-08-17 18:57:56', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '57', 'update', '{"lStoreType_Lng":["11"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sStore_Level2]":[""', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612390256250978304', TO_DATE('2019-08-17 21:00:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '87', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610647002140639232', TO_DATE('2019-08-13 01:33:10', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/equip/update', '更新器材', '712', 'update', '{"sEquip_ID":["610646900542013440"],"sEquip_NO":["123333123"],"sEquip_Name":["123333123"],"sEquip_StoreLv1":[" "],"sEquip_StoreLv2":[" "],"sEquip_StoreLv3":[" "],"sEquip_StoreLv4":[" "],"sEquip_Type":["t"],"sEquip_Status":["0"],"sEquip_NfcID":[""],"sEquip', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('607193531026505728', TO_DATE('2019-08-03 12:50:18', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/aid/updateUser', '更新航标分配的用户', '149', 'updateUser', '{"user":["1,606138587578105856,22"],"sAid_ID":["604617148949594112"]}', '{"msg":"成功 ","code":1,"data":3}', NULL, 'com.jian.system.controller.AidController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('610178318276231168', TO_DATE('2019-08-11 18:30:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '18771', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611163240247853056', TO_DATE('2019-08-14 11:44:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/transport', 'app器材运输', '703', 'appTransport', '{"sEquip_ID":["611145406239211520"],"remarks":["good"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611173089077624832', TO_DATE('2019-08-14 12:23:39', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/dump', 'app器材已报废', '41', 'appDump', '{"sEquip_ID":["611145406239211520"],"remarks":["ghhhhn？n"]}', NULL, '{"msg":"未登录","code":-111}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611174086063685632', TO_DATE('2019-08-14 12:27:37', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '2656', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612296764807970816', TO_DATE('2019-08-17 14:48:44', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '1546', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612346348007587840', TO_DATE('2019-08-17 18:05:46', 'SYYYY-MM-DD HH24:MI:SS'), 'upload', NULL, '127.0.0.1', NULL, '/api/file/uploadImg', '上传图片', '3', 'upload', NULL, NULL, NULL, 'com.jian.system.controller.FileUploadController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612407471822077952', TO_DATE('2019-08-17 22:08:39', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '16', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312764043493376', TO_DATE('2019-08-17 15:52:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '53', 'update', '{"sDict_ID":["612311872565149696"],"sDict_NO":["12"],"sDict_Name":["12"],"dDict_CreateDate":["1566028126000"],"sDict_UserID":["1"],"sDict_DictTypeNO":["AidType"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describe":["12', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312847153627136', TO_DATE('2019-08-17 15:52:38', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/dict/delete', '删除数据字典', '48', 'delete', '{"sDict_ID":["612311872565149696"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612315385487687680', TO_DATE('2019-08-17 16:02:44', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '43', 'update', '{"sDict_ID":["700008"],"sDict_NO":["8"],"sDict_Name":["报废"],"dDict_CreateDate":[""],"sDict_UserID":[""],"sDict_DictTypeNO":["EquipStatus"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["1"],"sDict_Describe":[""],"sDict_Picture":[""],"', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398627536502784', TO_DATE('2019-08-17 21:33:30', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '58', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398724747886592', TO_DATE('2019-08-17 21:33:53', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '80', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.12"],"lSys_MapLat":["242"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398795115724800', TO_DATE('2019-08-17 21:34:10', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '48', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612398864783114240', TO_DATE('2019-08-17 21:34:27', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '36', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612401665785462784', TO_DATE('2019-08-17 21:45:34', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '44', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1"],"lSys_MapLat":["24.46"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612402087157825536', TO_DATE('2019-08-17 21:47:15', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/sys/update', '更新系统设置', '30', 'update', '{"sSys_ID":["1"],"sSys_MapService":["http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer"],"lSys_MapLng":["118.1dfsdf"],"lSys_MapLat":["24.46"]}', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.SystemController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612407490113437696', TO_DATE('2019-08-17 22:08:43', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '17', 'login', '{"username":["test"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"606138587578105856","sUser_UserName":"test","sUser_PassWord":"","sUser_Nick":"test","lUser_StatusFlag":1,"sUser_GroupID":"604790269384065024","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_Th', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612409486266597376', TO_DATE('2019-08-17 22:16:39', 'SYYYY-MM-DD HH24:MI:SS'), 'other', NULL, '127.0.0.1', NULL, '/api/user/logout', '退出登录', '1', 'logout', NULL, NULL, NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612409512208367616', TO_DATE('2019-08-17 22:16:45', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '16', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612311872724533248', TO_DATE('2019-08-17 15:48:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '64', 'add', '{"sDict_NO":["12"],"sDict_Name":["12"],"sDict_DictTypeNO":["AidType"],"sDict_Describe":["12"],"sDict_Picture":["12"],"sDict_Link":["12"],"color":["#5F0404"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312687468085248', TO_DATE('2019-08-17 15:52:00', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/dict/add', '新增数据字典', '40', 'add', '{"sDict_NO":["12"],"sDict_Name":["12"],"sDict_DictTypeNO":["AidLighting"],"sDict_Describe":["12"],"sDict_Picture":["12"],"sDict_Link":["12"],"sDict_Color":["#8B0E0E"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312813884407808', TO_DATE('2019-08-17 15:52:31', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/dict/update', '更新数据字典', '36', 'update', '{"sDict_ID":["612312687417753600"],"sDict_NO":["12"],"sDict_Name":["12"],"dDict_CreateDate":["1566028320000"],"sDict_UserID":["1"],"sDict_DictTypeNO":["AidLighting"],"dDict_UpdateDate":[""],"sDict_UpdateUserID":[""],"lDict_SysFlag":["0"],"sDict_Describe":', '{"msg":"成功 ","code":1}', NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612312836068081664', TO_DATE('2019-08-17 15:52:36', 'SYYYY-MM-DD HH24:MI:SS'), 'delete', NULL, '127.0.0.1', NULL, '/api/dict/delete', '删除数据字典', '32', 'delete', '{"sDict_ID":["612312687417753600"]}', NULL, NULL, 'com.jian.system.controller.DictController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612320667638956032', TO_DATE('2019-08-17 16:23:43', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '84', 'add', '{"level":["2"],"name":["teee"],"sStore_Level1":["604434599291912192"],"sStore_Level2":[""],"sStore_Level3":[""]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612320710060146688', TO_DATE('2019-08-17 16:23:53', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '42', 'update', '{"sStore_Level3":[""],"sStore_Parent":["604434599291912192"],"sStore_Level1":["1"],"sStore_Level2":[""],"sStore_Name":["teee"],"sStore_ID":["612320667446018048"],"level":["2"],"name":["teee"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612326896121675776', TO_DATE('2019-08-17 16:48:28', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '127.0.0.1', NULL, '/api/store/add', '新增仓库', '165', 'add', '{"level":["1"],"name":["11"],"sStore_Level1":[""],"sStore_Level2":[""],"sStore_Level3":[""],"sStoreType_Address":["11"],"lStoreType_Lat":["11"],"lStoreType_Lng":["11"],"sStoreType_Station":["test"],"lStoreType_Limit":["11"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612327390399430656', TO_DATE('2019-08-17 16:50:26', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '80', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359929927303168', TO_DATE('2019-08-17 18:59:44', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '78', 'update', '{"lStoreType_Lng":["11"],"lStoreType_Limit":["11"],"children[0][lStore_Limit]":["0"],"children[0][sStore_Level3]":[""],"children[0][sStore_Parent]":["612326895639330816"],"children[0][sStore_Level1]":["612326895639330816"],"children[0][sStore_Level2]":[""', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('612359960893849600', TO_DATE('2019-08-17 18:59:51', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '127.0.0.1', NULL, '/api/store/update', '更新仓库', '94', 'update', '{"lStoreType_Lng":["118.15"],"lStoreType_Limit":["0"],"sStoreType_Name":["rwrwr"],"lStoreType_Lat":["24.46"],"sStoreType_Station":[""],"sStore_Name":["rwrwr"],"sStoreType_Address":["rrr"],"sStoreType_MapIcon":["2"],"sStore_ID":["607149452645367808"],"sSto', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.StoreController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611256318023434240', TO_DATE('2019-08-14 17:54:22', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/useToAid', 'app器材使用中', '3833', 'appUseToAid', '{"sEquip_ID":["611145406239211520"],"remarks":[""],"sAid_ID":["604748743446626304"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611139143233175552', TO_DATE('2019-08-14 10:08:46', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '8158', 'appLogin', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140154614087680', TO_DATE('2019-08-14 10:12:47', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '1032', 'appLogin', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140269663846400', TO_DATE('2019-08-14 10:13:14', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '1003', 'appLogin', '{"username":["admin"]}', NULL, 'Unable to connect to Redis; nested exception is io.lettuce.core.RedisConnectionException: Unable to connect to 127.0.0.1:6379', 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140422613336064', TO_DATE('2019-08-14 10:13:51', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '384', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611140576674316288', TO_DATE('2019-08-14 10:14:27', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '0', 'appAdd', '{"sEquip_NO":["rere"],"sEquip_Type":["t"],"sEquip_Name":["rere"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611141409113636864', TO_DATE('2019-08-14 10:17:46', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '0', 'appAdd', '{"sEquip_NO":["rere"],"sEquip_Type":["t"],"sEquip_Name":["rere"]}', NULL, NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611181461013266432', TO_DATE('2019-08-14 12:56:55', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '116', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611181628475047936', TO_DATE('2019-08-14 12:57:35', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/useToAid', 'app器材使用中', '271', 'appUseToAid', '{"sEquip_ID":["611145406239211520"],"remarks":[""]}', NULL, '{"msg":"缺少sAid_ID参数 ","code":-206}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611181682896142336', TO_DATE('2019-08-14 12:57:48', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/useToAid', 'app器材使用中', '46', 'appUseToAid', '{"sEquip_ID":["611145406239211520"],"remarks":[""]}', NULL, '{"msg":"缺少sAid_ID参数 ","code":-206}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611253229476380672', TO_DATE('2019-08-14 17:42:06', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '6161', 'appLogin', '{"username":["admin"]}', '{"msg":"密码错误","code":-110,"data":4}', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611253470594334720', TO_DATE('2019-08-14 17:43:03', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '192.168.106.67', NULL, '/api/user/app/login', 'app用户登录', '284', 'appLogin', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611145406629281792', TO_DATE('2019-08-14 10:33:39', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '177', 'appAdd', '{"sEquip_NO":["re"],"sEquip_Name":["reres"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611145684027965440', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '83', 'appInStore', '{"remarks":["of"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611147685331730432', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '27', 'appInStore', '{"remarks":["you"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611148412376580096', TO_DATE('2019-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '21', 'appInStore', '{"remarks":["uu"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149096371093504', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '19', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149879384735744', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '33', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149995176886272', TO_DATE('2019-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '19', 'appAdd', '{"sEquip_NO":["wewe"],"sEquip_Type":["t"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["wewewe"],"sEquip_StoreLv1":["604434599291912192"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611152592948428800', TO_DATE('2019-08-14 11:02:12', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '44', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["1"]}', NULL, '{"msg":"保存失败，器材已入库","code":-101}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611152641715601408', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/outStore', 'app器材出库', '50', 'appOutStore', '{"sEquip_ID":["611145406239211520"],"remarks":["GBM"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611154333391650816', TO_DATE('2019-08-14 11:09:07', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '52', 'appInStore', '{"remarks":[""],"sEquip_StoreLv4":[" "],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_StoreLv3":[" "],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["156575001', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');

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
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('22', '22', '22', '2222', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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

-- ----------------------------
-- Table structure for tEquip_Energy
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Energy";
CREATE TABLE "AASYSTEM"."tEquip_Energy" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sEnergy_Name" NVARCHAR2(64) ,
  "sEnergy_NO" NVARCHAR2(64) ,
  "sEnergy_Brand" NVARCHAR2(64) ,
  "sEnergy_Type" NVARCHAR2(64) ,
  "sEnergy_Model" NVARCHAR2(64) ,
  "lEnergy_RatedVolt" NUMBER ,
  "lEnergy_Watt" NUMBER ,
  "sEnergy_Connect" NVARCHAR2(64) 
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
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEquip_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_Name" IS '名称';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_NO" IS '编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_Brand" IS '品牌';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_Type" IS '类型';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_Model" IS '规格型号';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."lEnergy_RatedVolt" IS '额定电压';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."lEnergy_Watt" IS '功率/容量（W）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_Connect" IS '连接方式';

-- ----------------------------
-- Table structure for tEquip_Lighting
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Lighting";
CREATE TABLE "AASYSTEM"."tEquip_Lighting" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sLighting_Name" NVARCHAR2(64) ,
  "sLighting_NO" NVARCHAR2(64) ,
  "sLighting_Brand" NVARCHAR2(64) ,
  "sLighting_Type" NVARCHAR2(64) ,
  "sLighting_Model" NVARCHAR2(64) ,
  "lLighting_InputVolt" NUMBER ,
  "lLighting_Watt" NUMBER ,
  "sLighting_Lens" NVARCHAR2(64) ,
  "lLighting_TelemetryFlag" NUMBER ,
  "sLighting_Telemetry" NVARCHAR2(64) 
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
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sEquip_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_Name" IS '灯器名称';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_NO" IS '灯器编码';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_Brand" IS '品牌';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_Type" IS '类型';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_Model" IS '规格型号';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."lLighting_InputVolt" IS '输入电压';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."lLighting_Watt" IS '功率（W）';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_Lens" IS '透镜形状';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."lLighting_TelemetryFlag" IS '遥测遥控接口 0：否，1：是';
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_Telemetry" IS '遥测接口类型';

-- ----------------------------
-- Primary Key structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012861" PRIMARY KEY ("sAid_ID");

-- ----------------------------
-- Checks structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012656" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012859" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012860" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013033" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013190" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013414" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013568" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013603" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013790" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0013838" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0014132" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0014464" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0014488" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0014811" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0015167" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0015585" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0016754" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0017138" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0114819" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012908" PRIMARY KEY ("sAidEquip_ID");

-- ----------------------------
-- Checks structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012904" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012905" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012906" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012907" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013034" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013191" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013415" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013569" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013604" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013791" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0013839" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0014133" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0014465" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0014489" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0014812" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0015168" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0015586" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0016755" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0017139" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0114820" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113800" PRIMARY KEY ("sApp_ID");

-- ----------------------------
-- Checks structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0013840" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0014134" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0014466" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0014490" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0014813" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0015169" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0015587" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0016756" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0017140" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113799" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0114821" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016114" PRIMARY KEY ("sAppMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016097" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016098" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016099" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016100" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016101" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016102" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016103" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016104" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016105" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016106" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016107" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016108" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016109" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016110" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016111" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016112" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016113" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016757" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0017141" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_AppMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."GroupMenu_Index01_copy1"
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
-- Checks structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012657" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012832" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013035" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013192" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013416" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013570" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013605" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013792" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0013841" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0014135" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0014467" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0014491" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0014814" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0015170" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0015588" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0016758" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0017142" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0114822" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012843" PRIMARY KEY ("sDictType_ID");

-- ----------------------------
-- Checks structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012658" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012833" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013036" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013193" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013417" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013571" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013606" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013793" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0013842" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0014136" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0014468" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0014492" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0014815" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0015171" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0015589" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0016759" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0017143" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0114823" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012881" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012877" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012878" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012879" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012880" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013037" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013194" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013418" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013572" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013607" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013794" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0013843" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0014137" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0014469" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0014493" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0014816" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0015172" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0015590" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0016760" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0017144" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0114824" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012888" PRIMARY KEY ("sELog_ID");

-- ----------------------------
-- Checks structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012883" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012884" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012885" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012886" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012887" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013038" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013195" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013419" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013573" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013608" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013795" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0013844" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0014138" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0014470" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0014494" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0014817" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0015173" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0015591" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0016761" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0017145" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0114825" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012844" PRIMARY KEY ("sGroup_ID");

-- ----------------------------
-- Checks structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012659" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012834" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013039" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013196" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013420" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013574" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013609" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013796" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0013845" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0014139" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0014471" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0014495" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0014818" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0015174" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0015592" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0016762" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0017146" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0114826" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012845" PRIMARY KEY ("sGroupMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012660" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012835" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013040" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013197" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013421" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013575" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013610" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013797" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0013846" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0014140" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0014472" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0014496" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0014819" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0015175" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0015593" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0016763" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0017147" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0114827" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_GroupMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."GroupMenu_Index01"
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
-- Checks structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012661" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012836" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013041" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013198" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013422" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013576" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013611" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013798" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0013847" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0014141" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0014473" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0014497" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0014820" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0015176" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0015594" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0016764" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0017148" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0114828" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0013577" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0013848" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014142" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014199" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014200" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014201" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014202" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014203" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014204" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014205" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014206" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014474" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014498" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014821" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0015177" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0015595" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0016765" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0017149" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0114829" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012847" PRIMARY KEY ("sInterface_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012662" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012837" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013042" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013199" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013423" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013578" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013612" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013799" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0013849" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0014143" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0014475" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0014499" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0014822" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0015178" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0015596" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0016766" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0017150" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0114830" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012916" PRIMARY KEY ("sMsg_ID");

-- ----------------------------
-- Checks structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012910" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012911" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012912" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012913" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012914" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012915" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013043" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013200" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013424" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013579" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013613" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013800" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0013850" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0014144" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0014476" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0014500" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0014823" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0015179" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0015597" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0016767" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0017151" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0114831" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012897" PRIMARY KEY ("sNfc_ID");

-- ----------------------------
-- Checks structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012892" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012893" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012894" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012895" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012896" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013044" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013201" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013425" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013580" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013614" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013801" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0013851" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0014145" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0014477" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0014501" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0014824" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0015180" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0015598" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0016768" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0017152" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0114832" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012857" PRIMARY KEY ("sStore_ID");

-- ----------------------------
-- Checks structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012663" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012855" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012856" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013045" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013202" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013426" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013581" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013615" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013802" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0013852" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0014146" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0014478" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0014502" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0014825" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0015181" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0015599" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0016769" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0017153" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0114833" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012853" PRIMARY KEY ("sStoreType_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012664" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012852" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013046" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013203" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013427" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013582" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013616" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013803" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0013853" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0014147" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0014479" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0014503" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0014826" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0014834" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0015182" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0015600" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0016770" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0017154" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0017770" PRIMARY KEY ("sSys_ID");

-- ----------------------------
-- Checks structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0017769" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015543" PRIMARY KEY ("sSLog_ID");

-- ----------------------------
-- Checks structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0014835" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015528" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015529" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015530" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015531" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015532" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015533" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015534" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015535" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015536" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015537" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015538" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015539" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015540" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015541" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015542" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015601" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0016771" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0017155" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012848" PRIMARY KEY ("sThird_ID");

-- ----------------------------
-- Checks structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012665" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012838" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013047" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013204" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013428" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013583" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013617" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013804" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0013854" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0014148" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0014480" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0014504" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0014827" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0014836" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0015183" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0015602" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0016772" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0017156" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012849" PRIMARY KEY ("sUser_ID");

-- ----------------------------
-- Checks structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012666" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012839" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013048" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013205" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013429" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013584" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013618" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013805" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0013855" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0014149" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0014481" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0014505" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0014828" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0014837" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0015184" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0015603" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0016773" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0017157" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012902" PRIMARY KEY ("sUserAid_ID");

-- ----------------------------
-- Checks structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012899" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012900" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012901" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013049" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013206" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013430" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013585" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013619" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013806" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0013856" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0014150" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0014482" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0014506" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0014829" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0014838" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0015185" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0015604" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0016774" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0017158" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_UserAid
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserMenu_Index01_copy1"
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
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0012667" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0012840" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013050" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013207" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013431" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013586" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013620" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013807" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0013857" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0014151" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0014483" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0014507" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0014830" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0014839" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0015186" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0015605" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0016775" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0017159" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012851" PRIMARY KEY ("sUserMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012668" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012841" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013051" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013208" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013432" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013587" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013621" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013808" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0013858" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0014152" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0014484" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0014508" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0014831" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0014840" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0015187" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0015606" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0016776" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0017160" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table tBase_UserMenu
-- ----------------------------
CREATE INDEX "AASYSTEM"."UserMenu_Index01"
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
-- Primary Key structure for table tEquip_Energy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012872" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Energy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012669" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012868" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012869" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012870" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012871" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013052" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013209" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013433" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013588" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013622" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013809" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0013859" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0014153" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0014485" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0014509" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0014832" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0014841" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0015188" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0015607" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0016777" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0017161" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Lighting
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012866" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Lighting
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012670" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012863" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012864" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012865" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013053" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013210" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013434" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013589" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013623" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013810" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0013860" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0014154" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0014486" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0014510" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0014833" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0014842" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0015189" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0015608" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0016778" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0017162" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
