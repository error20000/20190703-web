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

 Date: 07/10/2019 12:43:31
*/


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
  "lSys_EquipRate" NUMBER 
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

-- ----------------------------
-- Records of tBase_System
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_System" VALUES ('1', 'http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer', '24.46', '118.1', '6', '20', '20', '1', '22', '1', '22', '1', '1', '90');

-- ----------------------------
-- Primary Key structure for table tBase_System
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_System" ADD CONSTRAINT "SYS_C0017770" PRIMARY KEY ("sSys_ID");

