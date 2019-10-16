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

 Date: 17/10/2019 00:19:10
*/


-- ----------------------------
-- Table structure for tBase_UserPosition
-- ----------------------------

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
INSERT INTO "AASYSTEM"."tBase_UserPosition" VALUES ('1', '0', '[{"id":"chartEquipDistribution","x":1,"y":1,"sizex":12,"sizey":5},{"id":"chartStoreTime","x":1,"y":6,"sizex":12,"sizey":5},{"id":"chartEquipLife","x":1,"y":11,"sizex":12,"sizey":5},{"id":"chartEquipBrandRepair","x":7,"y":16,"sizex":6,"sizey":5},{"id":"chartEquipBrandUnusual","x":1,"y":16,"sizex":6,"sizey":5},{"id":"chartEquipBrandDump","x":7,"y":21,"sizex":6,"sizey":5},{"id":"chartEquipBrand","x":1,"y":21,"sizex":6,"sizey":5}]');
INSERT INTO "AASYSTEM"."tBase_UserPosition" VALUES ('2', '1', '[{"id":"chartEquipDistribution","x":1,"y":1,"sizex":12,"sizey":5},{"id":"chartStoreTime","x":1,"y":6,"sizex":12,"sizey":5},{"id":"chartEquipLife","x":1,"y":11,"sizex":12,"sizey":5},{"id":"chartEquipBrandRepair","x":7,"y":16,"sizex":6,"sizey":5},{"id":"chartEquipBrandUnusual","x":1,"y":16,"sizex":6,"sizey":5},{"id":"chartEquipBrandDump","x":7,"y":21,"sizex":6,"sizey":5},{"id":"chartEquipBrand","x":1,"y":21,"sizex":6,"sizey":5}]');

-- ----------------------------
-- Primary Key structure for table tBase_UserPosition
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserPosition" ADD CONSTRAINT "SYS_C0022754" PRIMARY KEY ("sUserPosition_ID");
