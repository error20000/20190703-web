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

 Date: 02/09/2019 03:04:35
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

-- ----------------------------
-- Records of tBase_Aid
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('605889035314921472', '1', '1', '1', '1', 'test', 'test', '12', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', 'test', NULL, TO_DATE('2019-07-30 22:26:42', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('605833582404960256', '1', '1', '1', '1', 'test', 'test', NULL, NULL, NULL, 'test1', 'test', NULL, TO_DATE('2019-07-30 18:46:21', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604617148949594112', '12', '12', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 10:12:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748640124141568', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:11', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748743446626304', '123', '123', '24.46', '118.11', 'test', NULL, NULL, TO_DATE('2019-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:36', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748877744046080', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:56:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604743636243972096', '11test', '11', '24.46', '118.5', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:35:18', 'SYYYY-MM-DD HH24:MI:SS'), 'unusual');
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604745958013534208', '11', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:44:32', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604074845818322944', '1test', '1', '24.46', '118.1', 'test', 'test', '12', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'test2', 'test', '604078755886923776', TO_DATE('2019-07-25 22:17:46', 'SYYYY-MM-DD HH24:MI:SS'), 'normal');

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
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801001', '1', '库存不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801002', '2', '航标异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801003', '3', '器材异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802001', '1', '未读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802002', '2', '已读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802003', '3', '待处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802004', '4', '已处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('605884478887297024', '12', '22', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', NULL, NULL, '0', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('3', 'test1', '长闪白10秒', NULL, NULL, 'AidLighting', NULL, NULL, '0', '2+8', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('1', 'test', '灯塔', NULL, NULL, 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2', 'test', '厦门', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('4', 'test2', '互顿蓝黄3秒', NULL, NULL, 'AidLighting', NULL, NULL, '0', '蓝1.0+5.0+黄1.0+5.0', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('5', 'test', 'test', NULL, NULL, 'AidMark', NULL, NULL, '0', NULL, NULL, NULL, NULL);
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
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107002', 'unusual', '异常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, 'upload/20190817/201908171805462081735.png', NULL, NULL);
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
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('107', 'MapIcon', '地图图标', NULL, NULL, NULL, NULL, '1');
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
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('617859966383947776', '11111111111111111111122222', NULL, NULL, NULL, NULL, 'EquipAIS', '0', NULL, NULL, TO_DATE('2019-09-01 23:14:55', 'SYYYY-MM-DD HH24:MI:SS'), '11111111111111111111122222', NULL, 'test', '111122', TO_DATE('2019-09-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '111122', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('614529104644931584', '12111', '612326895639330816', '612328289813397504', NULL, NULL, 'EquipAis', '1', NULL, NULL, TO_DATE('2019-08-23 18:39:15', 'SYYYY-MM-DD HH24:MI:SS'), '12111', NULL, 'test', '22', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('2', '2', '2', '2', '2', '2', '2', '2', NULL, NULL, TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '2', NULL, 'test', '111111', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('3', '3', '3', '3', '3', '3', '3', '3', NULL, NULL, NULL, '3', NULL, 'test', '22', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('4', '3', '3', '3', '3', '3', '3', '8', NULL, NULL, NULL, '3', NULL, 'test', '33', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('5', '3', '3', '3', '3', '3', '3', '8', NULL, NULL, NULL, '3', NULL, 'test', '44', NULL, NULL, NULL, '1', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('6', '3', '3', '3', '3', '3', '3', '8', NULL, NULL, NULL, '3', NULL, 'test', '55', NULL, NULL, NULL, '2', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('7', '3', '3', '3', '3', '3', '3', '7', NULL, NULL, NULL, '3', NULL, 'test', '66', NULL, NULL, NULL, '2', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('8', '3', '3', '3', '3', '3', '3', '7', NULL, NULL, NULL, '3', NULL, NULL, '77', NULL, NULL, NULL, '2', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('9', '3', '3', '3', '3', '3', '3', '7', NULL, NULL, NULL, '3', NULL, NULL, '88', NULL, NULL, NULL, '2', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10', '10', '3', '3', '3', '3', '3', '10', NULL, NULL, NULL, '3', NULL, NULL, '22', NULL, NULL, NULL, '2', NULL);
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
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('614595567070216192', 'ee', '1', '12', '121', '1212', 'EquipAis', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10000', 'ee1', '2', '12', '121', '1212', 'EquipAis', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10003', 'ee13', '3', '12', '121', '1212', 'EquipAis', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10004', 'ee14', '4', '12', '121', '1212', 'EquipAis', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('10005', 'ee15', '5', '12', '121', '1212', 'EquipAis', '1', NULL, NULL, TO_DATE('2019-08-23 23:03:21', 'SYYYY-MM-DD HH24:MI:SS'), 'ee', NULL, 'test', 'ee', TO_DATE('2019-08-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '41', NULL);

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
  "sELog_StoreLv4" NVARCHAR2(32) 
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

-- ----------------------------
-- Records of tBase_EquipLog
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('614529104644931585', '1', TO_DATE('2019-08-23 18:39:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614529104644931584', '器材入库', NULL, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('1', NULL, TO_DATE('2019-08-01 15:59:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '1000', '10100101001', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('2', NULL, TO_DATE('2019-08-02 16:01:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '11111', '11111111111', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('3', NULL, TO_DATE('2019-08-03 16:02:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '222222', '222222222222', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611154333303570432', '1', TO_DATE('2019-08-14 11:09:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611256305071423488', '9', TO_DATE('2019-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材使用中', NULL, '192.168.106.67', '1', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611145683755335680', '1', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', 'of', '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611147685268815872', '9', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', 'you', '192.168.106.67', '1', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611148412338831360', '8', TO_DATE('2025-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', 'uu', '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149096329150464', '1', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149879342792704', '9', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', '器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库', '192.168.106.67', '607149452645367808', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149995122360321', '8', TO_DATE('2020-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611152641623326720', '2', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材出库', 'GBM', '192.168.106.67', '1', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611163237706104832', '4', TO_DATE('2019-08-14 11:44:30', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材运输中', 'good', '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('614941143708205056', '1', TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', NULL, '127.0.0.1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('6112563050714234881', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材报废', NULL, '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10000', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10000', '器材报废', NULL, '192.168.106.67', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10001', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10000', '器材入库', NULL, '192.168.106.67', '2', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10002', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10003', '器材入库', NULL, '192.168.106.67', '3', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10003', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10003', '器材入库', NULL, '192.168.106.67', '3', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10004', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10004', '器材入库', NULL, '192.168.106.67', '4', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10005', '8', TO_DATE('2022-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10004', '器材入库', NULL, '192.168.106.67', '4', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10006', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10005', '器材入库', NULL, '192.168.106.67', '5', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10007', '8', TO_DATE('2023-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10005', '器材入库', NULL, '192.168.106.67', '5', NULL, NULL, NULL);

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
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('620', '系统日志', '600', 'slog.html', NULL, '1', '110');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('630', '应用注册', '600', 'app.html', NULL, '1', '120');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('640', '用户管理', '600', NULL, NULL, '1', '130');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('641', '用户组', '640', 'group.html', NULL, '1', '140');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('642', '用户', '640', 'user.html', NULL, '1', '150');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('650', '系统设置', '600', 'sys.html', NULL, '1', '160');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('330', '航标管理', '300', 'aid.html', NULL, '1', '33');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('320', '航标种类的地图图标', '300', 'aidTypeMapIcon.html', NULL, '1', '31');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('310', '航标的地图图标', '300', 'aidMapIcon.html', NULL, '1', '32');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('510', '首页', '500', 'statisAll.html', NULL, '1', '61');
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
  "dMsg_StoreNum" NUMBER 
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

-- ----------------------------
-- Records of tBase_Message
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942336', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942337', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942338', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942339', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942340', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942341', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942342', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942343', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942344', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467420942345', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136640', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136641', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '3', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136642', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136643', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136644', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136645', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136646', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136647', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '604434599291912192', '604613628313731072', NULL, NULL, '2');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136648', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136649', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136650', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136651', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136652', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136653', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '4', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136654', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136655', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136656', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136657', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136658', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136659', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '612326895639330816', '612328289813397504', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136660', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136661', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136662', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136663', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136664', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136665', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '5', '12', '121', '1212', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136666', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604797909992472576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136667', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604802285633011712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136668', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '604799230179016704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136669', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136670', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('617847467425136671', '1', TO_DATE('2019-09-01 22:25:15', 'SYYYY-MM-DD HH24:MI:SS'), '606138587578105856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '库存不足', '2', '2', '2', '2', '1');
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('1', '1', TO_DATE('2019-08-17 00:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', 'test1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('2', '1', TO_DATE('2019-08-15 00:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', 'test2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('3', '3', TO_DATE('2019-08-18 00:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常器材异常', 'cccc', TO_DATE('2019-08-18 14:57:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '604748743446626304', '192.168.1.16', NULL, '1', '1', '4', '器材异常', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Message" VALUES ('4', '3', TO_DATE('2019-08-19 15:41:02', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL, TO_DATE('2019-08-20 11:09:08', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, '192.168.106.67', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL);

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
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Lat" IS '纬度（°）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Lng" IS '经度（°）';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_Station" IS '归属航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."lStoreType_Limit" IS '库存预警值';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreType"."sStoreType_MapIcon" IS '地图图标';

-- ----------------------------
-- Records of tBase_StoreType
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('612326895639330816', '11', '11', '24.47', '118.16', 'test2', '11', '1');
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('604434599291912192', '12', '123', '24.48', '118.17', 'test2', '11', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('1', '1', '1', '24.49', '118.18', 'test', '11', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('607149452645367808', 'rwrwr', 'rrr', '24.46', '118.15', 'test2', '11', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('2', '2', '2', '24.49', '118.181', 'test2', '11', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('3', '3', '3', '24.49', '118.182', 'test3', '11', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('4', '4', '4', '24.49', '118.183', 'test4', '11', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('5', '5', '5', '24.49', '118.184', 'test5', '11', NULL);

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
  "lSys_MapIconHeight" NUMBER 
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

-- ----------------------------
-- Records of tBase_System
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_System" VALUES ('1', 'http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer', '24.46', '118.1', '11', '20', '20');

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
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611145684027965440', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '83', 'appInStore', '{"remarks":["of"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611147685331730432', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '27', 'appInStore', '{"remarks":["you"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611148412376580096', TO_DATE('2019-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '21', 'appInStore', '{"remarks":["uu"],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149096371093504', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '19', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604613628313731072"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149879384735744', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '33', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["0"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611149995176886272', TO_DATE('2019-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), 'add', NULL, '192.168.106.67', NULL, '/api/equip/app/add', 'app新增器材', '19', 'appAdd', '{"sEquip_NO":["wewe"],"sEquip_Type":["t"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["wewewe"],"sEquip_StoreLv1":["604434599291912192"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611152592948428800', TO_DATE('2019-08-14 11:02:12', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/inStore', 'app器材入库', '44', 'appInStore', '{"remarks":[""],"sEquip_NO":["re"],"sEquip_StoreLv2":["604613628313731072"],"sEquip_Name":["reres"],"sEquip_StoreLv1":["604434599291912192"],"sEquip_ID":["611145406239211520"],"dEquip_CreateDate":["1565750019000"],"sEquip_Status":["1"]}', NULL, '{"msg":"保存失败，器材已入库","code":-101}', 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('611152641715601408', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), 'update', NULL, '192.168.106.67', NULL, '/api/equip/app/outStore', 'app器材出库', '50', 'appOutStore', '{"sEquip_ID":["611145406239211520"],"remarks":["GBM"]}', '{"msg":"成功 ","code":1,"data":1}', NULL, 'com.jian.system.controller.EquipController');
INSERT INTO "AASYSTEM"."tBase_SystemLog" VALUES ('606970864532979712', TO_DATE('2019-08-02 22:05:31', 'SYYYY-MM-DD HH24:MI:SS'), 'login', NULL, '127.0.0.1', NULL, '/api/user/login', '用户登录', '23', 'login', '{"username":["admin"]}', '{"msg":"成功 ","code":1,"data":{"user":{"sUser_ID":"1","sUser_UserName":"admin","sUser_PassWord":"","sUser_Nick":"admin","lUser_StatusFlag":1,"sUser_GroupID":"1","sUser_QQ":null,"sUser_Email":null,"sUser_Phone":null,"sUser_ThirdID":null,"dUser_CreateDate":n', NULL, 'com.jian.system.controller.UserController');
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
INSERT INTO "AASYSTEM"."tEquip_Ais" VALUES ('617859966383947776', '1');
INSERT INTO "AASYSTEM"."tEquip_Ais" VALUES ('614529104644931584', NULL);

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
-- Records of tEquip_Lamp
-- ----------------------------
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('614596394342154240', 'e2', 'e2', '1', '22', '22', '1', '1', '1');
INSERT INTO "AASYSTEM"."tEquip_Lamp" VALUES ('614595567070216192', 'ee', 'ee', '1', '12', '12', '1', '1', '1');

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
  "lLamp_Watt" NUMBER 
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
COMMENT ON COLUMN "AASYSTEM"."tEquip_ViceLamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tEquip_ViceLamp"."lLamp_Watt" IS '功率（W）';

-- ----------------------------
-- Primary Key structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012861" PRIMARY KEY ("sAid_ID");

-- ----------------------------
-- Checks structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0018712" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0019090" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0019301" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0019373" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0019724" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0020434" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0114819" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0012908" PRIMARY KEY ("sAidEquip_ID");

-- ----------------------------
-- Checks structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0018713" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0019091" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0019302" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0019374" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0019725" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0020435" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidEquip" ADD CONSTRAINT "SYS_C0114820" CHECK ("sAidEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0018045" PRIMARY KEY ("sAidIcon_ID");

-- ----------------------------
-- Checks structure for table tBase_AidMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0018450" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0018714" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0019092" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0019303" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0019375" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0019726" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0020436" CHECK ("sAidIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AidTypeMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0018049" PRIMARY KEY ("sAidTypeIcon_ID");

-- ----------------------------
-- Checks structure for table tBase_AidTypeMapIcon
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0018451" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0018715" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0019093" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0019304" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0019376" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0019727" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0020437" CHECK ("sAidTypeIcon_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113800" PRIMARY KEY ("sApp_ID");

-- ----------------------------
-- Checks structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0018716" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0019094" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0019305" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0019377" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0019728" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0020438" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0114821" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0016114" PRIMARY KEY ("sAppMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0018453" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0018717" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0019095" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0019306" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0019378" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0019729" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_AppMenu" ADD CONSTRAINT "SYS_C0020439" CHECK ("sAppMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0018718" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019096" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019307" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019379" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019730" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0020440" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0114822" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012843" PRIMARY KEY ("sDictType_ID");

-- ----------------------------
-- Checks structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0018719" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0019097" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0019308" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0019380" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0019731" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0020441" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0114823" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0012881" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0018720" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0019098" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0019309" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0019381" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0019732" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0020442" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Equip" ADD CONSTRAINT "SYS_C0114824" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012888" PRIMARY KEY ("sELog_ID");

-- ----------------------------
-- Checks structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0018721" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019099" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019310" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019382" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019733" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0020443" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0114825" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012844" PRIMARY KEY ("sGroup_ID");

-- ----------------------------
-- Checks structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0018722" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0019100" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0019311" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0019383" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0019734" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0020444" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0114826" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012845" PRIMARY KEY ("sGroupMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0018723" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0019101" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0019312" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0019384" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0019735" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0020445" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
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
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0018724" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0019102" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0019313" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0019385" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0019736" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0020446" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0114828" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0018725" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0019103" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0019314" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0019386" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0019737" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0020447" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0114829" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012847" PRIMARY KEY ("sInterface_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0018726" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0019104" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0019315" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0019387" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0019738" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0020448" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0114830" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0012916" PRIMARY KEY ("sMsg_ID");

-- ----------------------------
-- Checks structure for table tBase_Message
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0018727" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0019105" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0019316" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0019388" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0019739" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0020449" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Message" ADD CONSTRAINT "SYS_C0114831" CHECK ("sMsg_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0012897" PRIMARY KEY ("sNfc_ID");

-- ----------------------------
-- Checks structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0018728" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0019106" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0019317" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0019389" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0019740" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0020450" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Nfc" ADD CONSTRAINT "SYS_C0114832" CHECK ("sNfc_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012857" PRIMARY KEY ("sStore_ID");

-- ----------------------------
-- Checks structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0018729" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0019107" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0019318" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0019390" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0019741" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0020451" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0114833" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019974" PRIMARY KEY ("sSLog_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019319" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019968" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019969" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019970" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019971" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019972" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0019973" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLog" ADD CONSTRAINT "SYS_C0020452" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012853" PRIMARY KEY ("sStoreType_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0018466" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0018730" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0019108" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0019320" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0019391" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0019742" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0020453" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0017770" PRIMARY KEY ("sSys_ID");

-- ----------------------------
-- Checks structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0018467" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0018731" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0019109" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0019321" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0019392" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0019743" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0020454" CHECK ("sSys_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0015543" PRIMARY KEY ("sSLog_ID");

-- ----------------------------
-- Checks structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0018468" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0018732" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0019110" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0019322" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0019393" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0019744" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_SystemLog" ADD CONSTRAINT "SYS_C0020455" CHECK ("sSLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012848" PRIMARY KEY ("sThird_ID");

-- ----------------------------
-- Checks structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0018469" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0018733" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0019111" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0019323" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0019394" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0019745" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0020456" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012849" PRIMARY KEY ("sUser_ID");

-- ----------------------------
-- Checks structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0018470" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0018734" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0019112" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0019324" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0019395" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0019746" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0020457" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0012902" PRIMARY KEY ("sUserAid_ID");

-- ----------------------------
-- Checks structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0018471" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0018735" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0019113" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0019325" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0019396" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0019747" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserAid" ADD CONSTRAINT "SYS_C0020458" CHECK ("sUserAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0018472" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0018736" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0019114" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0019326" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0019397" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0019748" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0020459" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012851" PRIMARY KEY ("sUserMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0018473" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0018737" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0019115" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0019327" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0019398" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0019749" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0020460" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
-- Primary Key structure for table tEquip_Ais
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0018834" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Ais
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0018833" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0019116" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0019328" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0019399" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0019750" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Ais" ADD CONSTRAINT "SYS_C0020461" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Battery
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0018845" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Battery
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0018842" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0018843" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0018844" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0019117" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0019329" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0019400" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0019751" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Battery" ADD CONSTRAINT "SYS_C0020462" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Lamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0012866" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Lamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0018475" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0018739" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0019118" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0019330" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0019401" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0019752" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lamp" ADD CONSTRAINT "SYS_C0020463" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Radar
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0018837" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Radar
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0018835" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0018836" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0019119" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0019331" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0019402" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0019753" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Radar" ADD CONSTRAINT "SYS_C0020464" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_SolarEnergy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0012872" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_SolarEnergy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0018474" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0018738" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0019120" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0019332" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0019403" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0019754" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0020465" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_SpareLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018849" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_SpareLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018846" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018847" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018848" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0019121" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0019333" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0019404" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0019755" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0020466" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Telemetry
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018841" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_Telemetry
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018838" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018839" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018840" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0019122" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0019334" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0019405" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0019756" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Telemetry" ADD CONSTRAINT "SYS_C0020467" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_ViceLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018854" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Checks structure for table tEquip_ViceLamp
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018850" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018851" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018852" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018853" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0019123" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0019335" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0019406" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0019757" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0020468" CHECK ("sEquip_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
