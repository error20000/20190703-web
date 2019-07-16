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

 Date: 16/07/2019 22:19:23
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
  "dAid_CreateDate" DATE ,
  "dAid_DelDate" DATE ,
  "sAid_Lighting" NVARCHAR2(64) ,
  "sAid_Mark" NVARCHAR2(64) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Name" IS '航标名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_NO" IS '航标编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_Lat" IS '纬度';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."lAid_Lng" IS '经度';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Station" IS '归属航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Type" IS '航标种类';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Icon" IS '航标图标';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."dAid_CreateDate" IS '始建时间';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."dAid_DelDate" IS '撤除时间';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Lighting" IS '灯质明灭';
COMMENT ON COLUMN "AASYSTEM"."tBase_Aid"."sAid_Mark" IS '航标设置';

-- ----------------------------
-- Table structure for tBase_Dict
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Dict";
CREATE TABLE "AASYSTEM"."tBase_Dict" (
  "sDict_ID" NVARCHAR2(32) NOT NULL ,
  "sDict_NO" NVARCHAR2(64) ,
  "sDict_Name" NVARCHAR2(64) ,
  "dDict_Date" DATE ,
  "sDict_UserID" NVARCHAR2(32) ,
  "sDict_DictTypeNO" NVARCHAR2(64) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_NO" IS '字典编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Name" IS '字典名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."dDict_Date" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_UserID" IS '创建人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_DictTypeNO" IS '字典分类编码';

-- ----------------------------
-- Table structure for tBase_DictType
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_DictType";
CREATE TABLE "AASYSTEM"."tBase_DictType" (
  "sDictType_ID" NVARCHAR2(32) NOT NULL ,
  "sDictType_NO" NVARCHAR2(64) ,
  "sDictType_Name" NVARCHAR2(64) ,
  "dDictType_Date" DATE ,
  "sDictType_UserID" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_NO" IS '字典分类编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_Name" IS '字典分类名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."dDictType_Date" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_DictType"."sDictType_UserID" IS '创建人ID';

-- ----------------------------
-- Table structure for tBase_Group
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Group";
CREATE TABLE "AASYSTEM"."tBase_Group" (
  "sGroup_ID" NVARCHAR2(32) NOT NULL ,
  "sGroup_Name" NVARCHAR2(10) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_Group"."sGroup_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Group"."sGroup_Name" IS '用户组名称';

-- ----------------------------
-- Table structure for tBase_GroupMenu
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_GroupMenu";
CREATE TABLE "AASYSTEM"."tBase_GroupMenu" (
  "sGroupMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sGroupMenu_GroupID" NVARCHAR2(32) ,
  "sGroupMenu_MenuID" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_GroupID" IS '用户组ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_GroupMenu"."sGroupMenu_MenuID" IS '菜单ID';

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
-- Table structure for tBase_Store
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Store";
CREATE TABLE "AASYSTEM"."tBase_Store" (
  "sStore_ID" NVARCHAR2(32) NOT NULL ,
  "sStore_Name" NVARCHAR2(64) ,
  "sStore_Parent" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Name" IS '仓库名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Store"."sStore_Parent" IS '父级ID';

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
  "sUser_ThirdID" NVARCHAR2(32) 
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
  "sUserMenu_MenuID" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserMenu"."sUserMenu_MenuID" IS '菜单ID';

-- ----------------------------
-- Table structure for tEquip_Energy
-- ----------------------------
DROP TABLE "AASYSTEM"."tEquip_Energy";
CREATE TABLE "AASYSTEM"."tEquip_Energy" (
  "sEnergy_ID" NVARCHAR2(32) NOT NULL ,
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
COMMENT ON COLUMN "AASYSTEM"."tEquip_Energy"."sEnergy_ID" IS 'ID';
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
  "sLighting_ID" NVARCHAR2(32) NOT NULL ,
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
COMMENT ON COLUMN "AASYSTEM"."tEquip_Lighting"."sLighting_ID" IS 'ID';
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
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012859" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Aid" ADD CONSTRAINT "SYS_C0012860" CHECK ("sAid_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012842" PRIMARY KEY ("sDict_ID");

-- ----------------------------
-- Checks structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012832" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012843" PRIMARY KEY ("sDictType_ID");

-- ----------------------------
-- Checks structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_DictType" ADD CONSTRAINT "SYS_C0012833" CHECK ("sDictType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012844" PRIMARY KEY ("sGroup_ID");

-- ----------------------------
-- Checks structure for table tBase_Group
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Group" ADD CONSTRAINT "SYS_C0012834" CHECK ("sGroup_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012845" PRIMARY KEY ("sGroupMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012835" CHECK ("sGroupMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012846" PRIMARY KEY ("sMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012836" CHECK ("sMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012847" PRIMARY KEY ("sInterface_ID");

-- ----------------------------
-- Checks structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012837" CHECK ("sInterface_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012857" PRIMARY KEY ("sStore_ID");

-- ----------------------------
-- Checks structure for table tBase_Store
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012855" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Store" ADD CONSTRAINT "SYS_C0012856" CHECK ("sStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012853" PRIMARY KEY ("sStoreType_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreType" ADD CONSTRAINT "SYS_C0012852" CHECK ("sStoreType_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012848" PRIMARY KEY ("sThird_ID");

-- ----------------------------
-- Checks structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012838" CHECK ("sThird_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012849" PRIMARY KEY ("sUser_ID");

-- ----------------------------
-- Checks structure for table tBase_User
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_User" ADD CONSTRAINT "SYS_C0012839" CHECK ("sUser_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0012850" PRIMARY KEY ("sLog_ID");

-- ----------------------------
-- Checks structure for table tBase_UserLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserLog" ADD CONSTRAINT "SYS_C0012840" CHECK ("sLog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012851" PRIMARY KEY ("sUserMenu_ID");

-- ----------------------------
-- Checks structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserMenu" ADD CONSTRAINT "SYS_C0012841" CHECK ("sUserMenu_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

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
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table tEquip_Energy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012872" PRIMARY KEY ("sEnergy_ID");

-- ----------------------------
-- Checks structure for table tEquip_Energy
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012868" CHECK ("sEnergy_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012869" CHECK ("sEnergy_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012870" CHECK ("sEnergy_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Energy" ADD CONSTRAINT "SYS_C0012871" CHECK ("sEnergy_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table tEquip_Lighting
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012866" PRIMARY KEY ("sLighting_ID");

-- ----------------------------
-- Checks structure for table tEquip_Lighting
-- ----------------------------
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012863" CHECK ("sLighting_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012864" CHECK ("sLighting_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tEquip_Lighting" ADD CONSTRAINT "SYS_C0012865" CHECK ("sLighting_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
