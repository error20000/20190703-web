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

 Date: 28/10/2019 23:50:31
*/


-- ----------------------------
-- Table structure for tBase_EquipLog
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_EquipLog";
CREATE TABLE "AASYSTEM"."tBase_EquipLog" (
  "sELog_ID" NVARCHAR2(32) NOT NULL ,
  "sELog_Type" NVARCHAR2(64) ,
  "dELog_CreateDate" DATE ,
  "sELog_UserID" NVARCHAR2(32) ,
  "sELog_EquipID" NVARCHAR2(32) ,
  "sELog_Describe" NVARCHAR2(255) ,
  "sELog_Remarks" NVARCHAR2(255) ,
  "sELog_IP" NVARCHAR2(255) ,
  "sELog_StoreLv1" NVARCHAR2(32) ,
  "sELog_StoreLv2" NVARCHAR2(32) ,
  "sELog_StoreLv3" NVARCHAR2(32) ,
  "sELog_StoreLv4" NVARCHAR2(32) ,
  "sELog_AidID" NVARCHAR2(32) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_Type" IS '日志类型';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."dELog_CreateDate" IS '日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_UserID" IS '操作员ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_EquipID" IS '器材ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_Describe" IS '日志描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_Remarks" IS '日志备注';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_IP" IS '操作员IP';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "AASYSTEM"."tBase_EquipLog"."sELog_AidID" IS '航标ID';

-- ----------------------------
-- Records of tBase_EquipLog
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('633030404563009536', '10', TO_DATE('2019-10-13 19:56:37', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618234038343172096', '器材异常', '测试1111', '192.168.1.6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('633032711660896256', '10', TO_DATE('2019-10-13 20:05:51', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材异常', '分别是不饿呀呢吧', '192.168.1.6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('633075628563759104', '10', TO_DATE('2019-10-13 22:56:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材异常', '123', '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638488225240842240', '1', TO_DATE('2019-10-28 21:24:02', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材入库', '方法过得', '192.168.1.6', '1', '12', '121', '1211', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638488581114953728', '2', TO_DATE('2019-10-28 21:25:38', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材出库', NULL, '192.168.1.6', '1', '12', '121', '1211', NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638488638811799552', '1', TO_DATE('2019-10-28 21:25:47', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材入库', '高大上', '192.168.1.6', '607149452645367808', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638497580287787008', '2', TO_DATE('2019-10-28 22:01:23', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材出库', NULL, '192.168.1.6', '607149452645367808', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('638498290924519424', '9', TO_DATE('2019-10-28 22:04:06', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2', '器材使用中', '测试', '192.168.1.6', NULL, NULL, NULL, NULL, '626209721233178624');
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('624429661903912960', '1', TO_DATE('2019-09-20 02:20:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '624429661891330048', '器材入库', NULL, '127.0.0.1', '1', '12', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('624429661903912961', '9', TO_DATE('2019-09-20 02:20:32', 'SYYYY-MM-DD HH24:MI:SS'), '1', '624429661891330048', '器材使用中', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('618951026266865664', '9', TO_DATE('2019-09-04 23:30:24', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '618233851264630784', '器材使用中', '111111', '192.168.1.33', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('626890775266852864', '9', TO_DATE('2019-09-26 21:20:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618237751652777984', '器材使用中', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('614529104644931585', '1', TO_DATE('2019-08-23 18:39:15', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614529104644931584', '器材入库', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('1', NULL, TO_DATE('2019-08-01 15:59:27', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '1000', '10100101001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('2', NULL, TO_DATE('2019-08-02 16:01:41', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '11111', '11111111111', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('3', NULL, TO_DATE('2019-08-03 16:02:03', 'SYYYY-MM-DD HH24:MI:SS'), NULL, '10', '222222', '222222222222', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611154333303570432', '1', TO_DATE('2019-08-14 11:09:07', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611256305071423488', '9', TO_DATE('2019-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材使用中', NULL, '192.168.106.67', '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611145683755335680', '1', TO_DATE('2019-08-14 10:34:45', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', 'of', '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611147685268815872', '9', TO_DATE('2019-08-14 10:42:42', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', 'you', '192.168.106.67', '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611148412338831360', '8', TO_DATE('2025-08-14 10:45:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611149995122360320', '器材入库', 'uu', '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149096329150464', '1', TO_DATE('2019-08-14 10:48:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149879342792704', '9', TO_DATE('2019-08-14 10:51:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', '器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库器材入库', '192.168.106.67', '607149452645367808', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611149995122360321', '8', TO_DATE('2020-08-14 10:51:53', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611152641623326720', '2', TO_DATE('2019-08-14 11:02:24', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材出库', 'GBM', '192.168.106.67', '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('611163237706104832', '4', TO_DATE('2019-08-14 11:44:30', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材运输中', 'good', '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('614941143708205056', '1', TO_DATE('2019-08-24 21:56:33', 'SYYYY-MM-DD HH24:MI:SS'), '1', '614595567070216192', '器材入库', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('6112563050714234881', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '611145406239211520', '器材报废', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10000', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10000', '器材报废', NULL, '192.168.106.67', NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10001', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10000', '器材入库', NULL, '192.168.106.67', '2', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10002', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10003', '器材入库', NULL, '192.168.106.67', '3', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10003', '8', TO_DATE('2021-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10003', '器材入库', NULL, '192.168.106.67', '3', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10004', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10004', '器材入库', NULL, '192.168.106.67', '4', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10005', '8', TO_DATE('2022-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10004', '器材入库', NULL, '192.168.106.67', '4', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10006', '9', TO_DATE('2020-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10005', '器材入库', NULL, '192.168.106.67', '5', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('10007', '8', TO_DATE('2023-08-14 17:54:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', '10005', '器材入库', NULL, '192.168.106.67', '5', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_EquipLog" VALUES ('632880679704592384', '2', TO_DATE('2019-09-13 10:01:00', 'SYYYY-MM-DD HH24:MI:SS'), '1', '618234038343172096', '器材出库', '测试', '192.168.1.6', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Primary Key structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0012888" PRIMARY KEY ("sELog_ID");

-- ----------------------------
-- Checks structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0018721" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019099" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019310" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019382" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0019733" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0020443" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_EquipLog" ADD CONSTRAINT "SYS_C0114825" CHECK ("sELog_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
