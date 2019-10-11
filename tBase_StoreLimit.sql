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

 Date: 12/10/2019 00:16:36
*/


-- ----------------------------
-- Table structure for tBase_StoreLimit
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_StoreLimit";
CREATE TABLE "AASYSTEM"."tBase_StoreLimit" (
  "sSLimit_ID" NVARCHAR2(32) NOT NULL ,
  "sSLimit_StoreID" NVARCHAR2(32) ,
  "sSLimit_EquipType" NVARCHAR2(64) ,
  "lSLimit_Num" NUMBER 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."sSLimit_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."sSLimit_StoreID" IS '仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."sSLimit_EquipType" IS '器材种类';
COMMENT ON COLUMN "AASYSTEM"."tBase_StoreLimit"."lSLimit_Num" IS '库存预警值';

-- ----------------------------
-- Primary Key structure for table tBase_StoreLimit
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022484" PRIMARY KEY ("sSLimit_ID");

-- ----------------------------
-- Checks structure for table tBase_StoreLimit
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022476" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022477" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022478" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022479" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022480" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022481" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022482" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022483" CHECK ("sSLimit_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
