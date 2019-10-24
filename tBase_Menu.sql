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

 Date: 24/10/2019 18:06:17
*/


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
-- Primary Key structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Menu" ADD CONSTRAINT "SYS_C0012846" PRIMARY KEY ("sMenu_ID");
