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

 Date: 04/04/2020 13:18:11
*/


-- ----------------------------
-- Table structure for tBase_AidImg
-- ----------------------------
DROP TABLE "tBase_AidImg";
CREATE TABLE "tBase_AidImg" (
  "sAidImg_ID" NVARCHAR2(32) NOT NULL ,
  "sAidImg_Url" NVARCHAR2(255) ,
  "dAidImg_CreateDate" DATE ,
  "sAidImg_AidID" NVARCHAR2(32) 
);
COMMENT ON COLUMN "tBase_AidImg"."sAidImg_ID" IS 'ID';
COMMENT ON COLUMN "tBase_AidImg"."sAidImg_Url" IS '图片地址';
COMMENT ON COLUMN "tBase_AidImg"."dAidImg_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_AidImg"."sAidImg_AidID" IS '航标ID';

-- ----------------------------
-- Primary Key structure for table tBase_AidImg
-- ----------------------------
ALTER TABLE "tBase_AidImg" ADD CONSTRAINT "SYS_C0028703" PRIMARY KEY ("sAidImg_ID");

