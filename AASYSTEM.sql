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

 Date: 29/07/2019 18:49:45
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
  "dAid_CreateDate" DATE 
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

-- ----------------------------
-- Records of tBase_Aid
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604617148949594112', '12', '12', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 10:12:41', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748640124141568', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-14 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748743446626304', '123', '123', '123', '123', NULL, NULL, NULL, TO_DATE('2019-07-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:55:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604748877744046080', '1', '1', '1', '1', NULL, NULL, NULL, TO_DATE('2019-07-21 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2019-07-22 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, TO_DATE('2019-07-27 18:56:08', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604743636243972096', '11', '11', '11', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:35:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604745958013534208', '11', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:44:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Aid" VALUES ('604074845818322944', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-25 22:17:46', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for tBase_AidEquip
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_AidEquip";
CREATE TABLE "AASYSTEM"."tBase_AidEquip" (
  "sAidEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sAidEquip_AidID" NVARCHAR2(32) ,
  "sAidEquip_EquipID" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."sAidEquip_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."sAidEquip_AidID" IS '航标ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_AidEquip"."sAidEquip_EquipID" IS '器材ID';

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
  "sDict_UpdateUserID" NVARCHAR2(32) 
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

-- ----------------------------
-- Records of tBase_Dict
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('604784066364964864', '123', '123', TO_DATE('2019-07-27 21:15:57', 'SYYYY-MM-DD HH24:MI:SS'), '22', '122', TO_DATE('2019-07-27 21:19:56', 'SYYYY-MM-DD HH24:MI:SS'), '22');

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
  "sDictType_UpdateUserID" NVARCHAR2(32) 
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

-- ----------------------------
-- Records of tBase_DictType
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('604775080299331584', '122', '123', TO_DATE('2019-07-27 20:40:15', 'SYYYY-MM-DD HH24:MI:SS'), '22', TO_DATE('2019-07-27 20:42:39', 'SYYYY-MM-DD HH24:MI:SS'), '22');
INSERT INTO "AASYSTEM"."tBase_DictType" VALUES ('604775718299107328', '12', '12', TO_DATE('2019-07-27 20:42:47', 'SYYYY-MM-DD HH24:MI:SS'), '22', NULL, NULL);

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
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('604753319549730816', '1212', '1', '12', '604436805260935168', NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 19:13:47', 'SYYYY-MM-DD HH24:MI:SS'), '1212');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('2', '45', '604434599291912192', '604613628313731072', NULL, NULL, NULL, NULL, NULL, NULL, TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '12');
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('3', '78', NULL, NULL, NULL, NULL, NULL, NULL, '603723565073694720', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Equip" VALUES ('604738763502911488', '1212', '1', '12', '604436805260935168', '123', NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 18:15:56', 'SYYYY-MM-DD HH24:MI:SS'), '1212');

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
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('604790269384065024', '12', '0');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('604790286601682944', '13', '0');
INSERT INTO "AASYSTEM"."tBase_Group" VALUES ('1', '超级管理组', '1');

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
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('605174712699453440', '604790269384065024', '642', '1,3');
INSERT INTO "AASYSTEM"."tBase_GroupMenu" VALUES ('605174712699453441', '604790269384065024', '500', '2');

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
  "lMenu_StatusFlag" NUMBER 
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

-- ----------------------------
-- Records of tBase_Menu
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('100', 'NFC标签', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('200', '仓库管理', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('300', '航标管理', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('700', '器材管理', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('400', '地图展示', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('500', '统计分析', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('600', '系统管理', NULL, NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('610', '数据字典', '600', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('611', '字典分类', '610', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('612', '字典配置', '610', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('620', '系统日志', '600', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('630', '应用注册', '600', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('640', '用户管理', '600', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('641', '用户组', '640', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Menu" VALUES ('642', '用户', '640', NULL, NULL, '1');

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
  "sMFun_Describe" NVARCHAR2(255) 
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

-- ----------------------------
-- Records of tBase_MenuFun
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('1', 'test', '642', NULL, '1', 'test');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('2', 'test2', '500', NULL, '1', 'test2');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('3', 'test3', '642', NULL, '1', 'test3');
INSERT INTO "AASYSTEM"."tBase_MenuFun" VALUES ('4', 'test4', '642', NULL, '0', 'test4');

-- ----------------------------
-- Table structure for tBase_MenuInterface
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_MenuInterface";
CREATE TABLE "AASYSTEM"."tBase_MenuInterface" (
  "sInterface_ID" NVARCHAR2(32) NOT NULL ,
  "sInterface_Name" NVARCHAR2(10) ,
  "sInterface_Url" NVARCHAR2(255) ,
  "sInterface_Menu" NVARCHAR2(255) ,
  "lInterface_StatusFlag" NUMBER DEFAULT 1  
 
 
 
 
 
 
 
 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."sInterface_Menu" IS '接口所属菜单，多个逗号分隔';
COMMENT ON COLUMN "AASYSTEM"."tBase_MenuInterface"."lInterface_StatusFlag" IS '状态 0：禁用，1：启用';

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
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('604752194377351168', '123111', '123111', '0', TO_DATE('2019-07-27 19:09:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('603723565073694720', 'test22', 'test22', '1', TO_DATE('1970-01-01 08:00:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "AASYSTEM"."tBase_Nfc" VALUES ('604078755886923776', '12', '12', '0', TO_DATE('2019-07-25 22:33:18', 'SYYYY-MM-DD HH24:MI:SS'));

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
  "sStore_Parent" NVARCHAR2(32) 
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

-- ----------------------------
-- Records of tBase_Store
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604428777530851328', 'test', '1', '13', '131', '131');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604428989146071040', '33', '1', '13', '131', '131');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604436805260935168', 'test', '1', '12', NULL, '12');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('11', '112', '1', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('12', '12', '1', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('121', '121', '1', '12', NULL, '12');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('1211', '1211', '1', '12', '121', '121');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('1212', '1212', '1', '12', '121', '121');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('13', '13', '1', NULL, NULL, '1');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('131', '131', '1', '13', NULL, '13');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604445267793543168', '66', '1', '11', NULL, '11');
INSERT INTO "AASYSTEM"."tBase_Store" VALUES ('604613628313731072', 'ttt', '604434599291912192', NULL, NULL, '604434599291912192');

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
  "sStoreType_Station" NVARCHAR2(64) 
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

-- ----------------------------
-- Records of tBase_StoreType
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('604434599291912192', '12', '123', '123', '123', NULL);
INSERT INTO "AASYSTEM"."tBase_StoreType" VALUES ('1', '1', NULL, NULL, NULL, NULL);

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
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('604802285633011712', '88', '123', '78', '0', NULL, NULL, NULL, NULL, NULL, TO_DATE('2019-07-27 22:28:21', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('604799230179016704', '12', '13', '13', '0', NULL, '13', '13', '13', '13', TO_DATE('2019-07-27 22:16:13', 'SYYYY-MM-DD HH24:MI:SS'), NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_User" VALUES ('22', '22', '22', '2222', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for tBase_UserLog
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserLog";
CREATE TABLE "AASYSTEM"."tBase_UserLog" (
  "sLog_ID" NVARCHAR2(32) NOT NULL ,
  "dLog_Date" DATE ,
  "sLog_Type" NVARCHAR2(32) ,
  "sLog_UserID" NVARCHAR2(32) ,
  "sLog_Ip" NVARCHAR2(32) ,
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
COMMENT ON COLUMN "AASYSTEM"."tBase_UserLog"."sLog_Ip" IS 'IP';
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

-- ----------------------------
-- Primary Key structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113800" PRIMARY KEY ("sApp_ID");

-- ----------------------------
-- Checks structure for table tBase_App
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_App" ADD CONSTRAINT "SYS_C0113799" CHECK ("sApp_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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

-- ----------------------------
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0013577" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014199" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014200" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014201" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014202" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014203" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014204" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014205" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014206" CHECK ("sMFun_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
