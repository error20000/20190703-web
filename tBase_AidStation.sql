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

 Date: 08/12/2019 22:53:41
*/


-- ----------------------------
-- Table structure for tBase_AidStation
-- ----------------------------
DROP TABLE "tBase_AidStation";
CREATE TABLE "tBase_AidStation" (
  "sAidStation_ID" NVARCHAR2(32) NOT NULL ,
  "lAidStation_MapLat" NUMBER ,
  "lAidStation_MapLng" NUMBER ,
  "lAidStation_MapLevel" NUMBER ,
  "sAidStation_Station" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tBase_AidStation"."sAidStation_ID" IS 'ID';
COMMENT ON COLUMN "tBase_AidStation"."lAidStation_MapLat" IS '航标站纬度';
COMMENT ON COLUMN "tBase_AidStation"."lAidStation_MapLng" IS '航标站经度';
COMMENT ON COLUMN "tBase_AidStation"."lAidStation_MapLevel" IS '航标站默认级别';
COMMENT ON COLUMN "tBase_AidStation"."sAidStation_Station" IS '航标站';

-- ----------------------------
-- Primary Key structure for table tBase_AidStation
-- ----------------------------
ALTER TABLE "tBase_AidStation" ADD CONSTRAINT "SYS_C0024794" PRIMARY KEY ("sAidStation_ID");
