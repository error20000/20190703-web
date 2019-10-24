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

 Date: 24/10/2019 18:01:01
*/


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
-- Primary Key structure for table tBase_UserPosition
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserPosition" ADD CONSTRAINT "SYS_C0022754" PRIMARY KEY ("sUserPosition_ID");

