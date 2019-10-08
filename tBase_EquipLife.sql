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

 Date: 06/10/2019 22:24:18
*/


-- ----------------------------
-- Table structure for tBase_EquipLife
-- ----------------------------

CREATE TABLE "AASYSTEM"."tBase_EquipLife" (
  "sELife_ID" NVARCHAR2(32) NOT NULL ,
  "dELife_CreateDate" DATE ,
  "sELife_EquipType" NVARCHAR2(64) ,
  "sELife_EquipManufacturer" NVARCHAR2(64) ,
  "sELife_EquipMBrand" NVARCHAR2(255) ,
  "sELife_AidStation" NVARCHAR2(64) ,
  "lELife_Time" NUMBER ,
  "dELife_UpdateDate" DATE ,
  "lELife_Num" NUMBER ,
  "lELife_Total" NUMBER 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."dELife_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_EquipType" IS '器材分类';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_EquipManufacturer" IS '器材生产厂商';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_EquipMBrand" IS '器材品牌';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."sELife_AidStation" IS '器材航标站';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."lELife_Time" IS '平均寿命（秒）';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."dELife_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."lELife_Num" IS '数量';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLife"."lELife_Total" IS '总寿命';

-- ----------------------------
-- Primary Key structure for table tBase_EquipLife
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLife" ADD CONSTRAINT "SYS_C0022120" PRIMARY KEY ("sELife_ID");
