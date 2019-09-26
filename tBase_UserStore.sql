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

 Date: 26/09/2019 18:36:37
*/


-- ----------------------------
-- Table structure for tBase_UserStore
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_UserStore";
CREATE TABLE "AASYSTEM"."tBase_UserStore" (
  "sUserStore_ID" NVARCHAR2(32) NOT NULL ,
  "sUserStore_UserID" NVARCHAR2(32) ,
  "sUserStore_StoreLv1ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv2ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv3ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv4ID" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_UserID" IS '用户ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv1ID" IS '一级仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv2ID" IS '二级仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv3ID" IS '三级仓库ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_UserStore"."sUserStore_StoreLv4ID" IS '四级仓库ID';

-- ----------------------------
-- Records of tBase_UserStore
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('1', '1', '1', '12', '121', '1211');
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('2', '1', '1', '12', '121', '1212');
INSERT INTO "AASYSTEM"."tBase_UserStore" VALUES ('3', '606138587578105856', '1', '12', '121', '1211');


-- ----------------------------
-- Primary Key structure for table tBase_UserStore
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStore" ADD CONSTRAINT "SYS_C0021700" PRIMARY KEY ("sUserStore_ID");

-- ----------------------------
-- Checks structure for table tBase_UserStore
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_UserStore" ADD CONSTRAINT "SYS_C0021699" CHECK ("sUserStore_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;


