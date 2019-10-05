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

 Date: 05/10/2019 14:58:58
*/


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
-- Primary Key structure for table tBase_UserStation
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStation" ADD CONSTRAINT "SYS_C0022036" PRIMARY KEY ("sUserStation_ID");

-- ----------------------------
-- Checks structure for table tBase_UserStation
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStation" ADD CONSTRAINT "SYS_C0022035" CHECK ("sUserStation_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
