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

 Date: 13/10/2019 23:35:42
*/


-- ----------------------------
-- Table structure for tBase_Dict
-- ----------------------------
DROP TABLE "AASYSTEM"."tBase_Dict";
CREATE TABLE "AASYSTEM"."tBase_Dict" (
  "sDict_ID" NVARCHAR2(32) NOT NULL ,
  "sDict_NO" NVARCHAR2(64) ,
  "sDict_Name" NVARCHAR2(255) ,
  "dDict_CreateDate" DATE ,
  "sDict_UserID" NVARCHAR2(32) ,
  "sDict_DictTypeNO" NVARCHAR2(64) ,
  "dDict_UpdateDate" DATE ,
  "sDict_UpdateUserID" NVARCHAR2(32) ,
  "lDict_SysFlag" NUMBER ,
  "sDict_Describe" NVARCHAR2(255) ,
  "sDict_Picture" NVARCHAR2(255) ,
  "sDict_Link" NVARCHAR2(255) ,
  "sDict_Color" NVARCHAR2(255) 
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
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_ID" IS 'ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_NO" IS '字典编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Name" IS '字典名称';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."dDict_CreateDate" IS '创建日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_UserID" IS '创建人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_DictTypeNO" IS '字典分类编码';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."dDict_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_UpdateUserID" IS '更新人ID';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."lDict_SysFlag" IS '系统默认  0：否，1：是';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Describe" IS '字典描述';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Picture" IS '字典图片、Icon';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Link" IS '字典链接';
COMMENT ON COLUMN "AASYSTEM"."tBase_Dict"."sDict_Color" IS '字典颜色';

-- ----------------------------
-- Records of tBase_Dict
-- ----------------------------
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('108001', '1', '测试仓库地图图标', NULL, NULL, 'StoreMapIcon', NULL, NULL, '0', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801004', '4', '自定义消息', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, 'http://www.baidu.com', NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('803001', '1', '测试消息自定义标签', NULL, NULL, 'MsgLabel', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('804001', '1', '测试消息原因', NULL, NULL, 'MsgReason', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801006', '6', '航标恢复正常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554688', 'SpecialMark', '专用标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145337360384', 'Safe Water', '安全水域标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554689', 'Light Vessel LANBY', '灯船', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554690', 'Preferred Channel Starboard Hand', '推荐航道右侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554691', 'Preferred Channel Port Hand', '推荐航道左侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554692', 'Starboard Hand Mark', '右侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554693', 'leftLabel', '左侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554694', 'Cardinal Mark N', '北方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145341554695', 'Cardinal Mark E', '东方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145345748992', 'Cardinal Mark S', '南方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145345748993', 'Cardinal Mark W', '西方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626206145345748994', 'Isolated Danger', '孤立危险物标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626157742175813633', 'EquipSinkingstone', '沉块', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626157742175813634', 'Equipbuoy', '浮体', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('626157742175813635', 'EquipAnchorchain', '锚链', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801005', '5', '器材寿命不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801001', '1', '库存不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801002', '2', '航标异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('801003', '3', '器材异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802001', '1', '未读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802002', '2', '已读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802003', '3', '待处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('802004', '4', '已处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('605884478887297024', '12', '22', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', NULL, NULL, '0', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('3', 'test1', '长闪白10秒', NULL, NULL, 'AidLighting', NULL, NULL, '0', '2+8', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('1', 'test', '灯塔', NULL, NULL, 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2', 'test', '厦门', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('4', 'test2', '互顿蓝黄3秒', NULL, NULL, 'AidLighting', NULL, NULL, '0', '蓝1.0+5.0+黄1.0+5.0', NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('5', 'test', 'test航标设置', NULL, NULL, 'AidMark', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702001', 'EquipAIS', 'AIS', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700001', '1', '入库', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601001', 'query', '查询', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601002', 'update', '修改', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601003', 'delete', '删除', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601004', 'add', '新增', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601005', 'other', '其他', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601006', 'upload', '上传', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('601007', 'login', '登录', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700002', '2', '出库', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700003', '3', '拆除', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700004', '4', '运输', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700005', '5', '待检测', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700006', '6', '检测', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700007', '7', '维修', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701001', '1', '仓库待用', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701002', '2', '出库中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701003', '3', '拆除', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701004', '4', '运输中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701005', '5', '待检测中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701006', '6', '检测中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701007', '7', '维修中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701008', '8', '报废', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700008', '8', '报废', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'EquipStatus', TO_DATE('2019-08-17 16:02:44', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, NULL, NULL, '#EB5426');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700009', '9', '使用', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701009', '9', '使用中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700010', '0', '空闲', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701010', '0', '空闲中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('106001', 'normal', '正常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107001', 'normal', '正常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, 'upload/20190817/201908171805306689781.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('106002', 'unusual', '异常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107002', 'unusual', '异常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190817/201908171805462081735.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('700011', '10', '异常', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('701011', '10', '异常中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107003', '1', '图标一', NULL, NULL, 'MapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('107004', '2', '图标二', NULL, NULL, 'MapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('612997577486368768', '3', '图标3', TO_DATE('2019-08-19 13:13:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'MapIcon', TO_DATE('2019-08-19 16:18:58', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190819/201908191618549849864.png', NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702002', 'EquipRadar', '雷达应答器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702003', 'EquipTelemetry', '遥测遥控', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702004', 'EquipBattery', '蓄电池', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702005', 'EquipSolarEnergy', '太阳能板', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702006', 'EquipSpareLamp', '备灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702007', 'EquipViceLamp', '副灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('702008', 'EquipLamp', '灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('211001', 'test', '测试测试有限公司', NULL, NULL, 'EquipManufacturer', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('208001', '1', '锂电池', NULL, NULL, 'EquipBatteryType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('208002', '2', '铅酸电池', NULL, NULL, 'EquipBatteryType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('212001', '1', '测试遥测接口类型', NULL, NULL, 'EquipLampTelemetry', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('213001', '1', '测试灯器类型', NULL, NULL, 'EquipLampType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('214001', '1', '测试透镜形状', NULL, NULL, 'EquipLampLens', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('206001', '1', '测试雷达应答器编码', NULL, NULL, 'EquipRadarNO', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('207001', '1', '测试雷达应答器波段', NULL, NULL, 'EquipRadarBand', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('210001', '1', '测试太阳能板种类', NULL, NULL, 'EquipSolarEnergyType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('209001', '1', '测试遥控遥测方式', NULL, NULL, 'EquipTelemetryMode', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('205001', '1', '测试MMSIX号', NULL, NULL, 'EquipAisMMSIX', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2001', 'test2', '厦门2', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2003', 'test3', '厦门3', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2004', 'test4', '厦门4', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2005', 'test5', '厦门5', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "AASYSTEM"."tBase_Dict" VALUES ('2006', 'test6', '厦门6', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Primary Key structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0012842" PRIMARY KEY ("sDict_ID");

-- ----------------------------
-- Checks structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0018718" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019096" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019307" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019379" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0019730" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0020440" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "AASYSTEM"."tBase_Dict" ADD CONSTRAINT "SYS_C0114822" CHECK ("sDict_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
