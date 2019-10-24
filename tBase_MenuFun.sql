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

 Date: 24/10/2019 18:00:25
*/


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
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");
