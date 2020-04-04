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

 Date: 30/11/2019 17:11:03
*/


-- ----------------------------
-- Table structure for tBase_Aid
-- ----------------------------
DROP TABLE "tBase_Aid";
CREATE TABLE "tBase_Aid" (
  "sAid_ID" NVARCHAR2(32) NOT NULL ,
  "sAid_Name" NVARCHAR2(64) ,
  "sAid_NO" NVARCHAR2(64) ,
  "lAid_Lat" NUMBER ,
  "lAid_Lng" NUMBER ,
  "sAid_Station" NVARCHAR2(64) ,
  "sAid_Type" NVARCHAR2(64) ,
  "sAid_Icon" NVARCHAR2(255) ,
  "dAid_BuildDate" DATE ,
  "dAid_DelDate" DATE ,
  "sAid_Lighting" NVARCHAR2(64) ,
  "sAid_Mark" NVARCHAR2(64) ,
  "sAid_NfcID" NVARCHAR2(32) ,
  "dAid_CreateDate" DATE ,
  "sAid_Status" NVARCHAR2(64) ,
  "lAid_LatDu" NUMBER ,
  "lAid_LatFen" NUMBER ,
  "lAid_LatMiao" NUMBER ,
  "lAid_LngDu" NUMBER ,
  "lAid_LngFen" NUMBER ,
  "lAid_LngMiao" NUMBER 
);
COMMENT ON COLUMN "tBase_Aid"."sAid_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Aid"."sAid_Name" IS '航标名称';
COMMENT ON COLUMN "tBase_Aid"."sAid_NO" IS '航标编码';
COMMENT ON COLUMN "tBase_Aid"."lAid_Lat" IS '纬度（°）';
COMMENT ON COLUMN "tBase_Aid"."lAid_Lng" IS '经度（°）';
COMMENT ON COLUMN "tBase_Aid"."sAid_Station" IS '归属航标站';
COMMENT ON COLUMN "tBase_Aid"."sAid_Type" IS '航标种类';
COMMENT ON COLUMN "tBase_Aid"."sAid_Icon" IS '航标图标';
COMMENT ON COLUMN "tBase_Aid"."dAid_BuildDate" IS '始建时间';
COMMENT ON COLUMN "tBase_Aid"."dAid_DelDate" IS '撤除时间';
COMMENT ON COLUMN "tBase_Aid"."sAid_Lighting" IS '灯质明灭';
COMMENT ON COLUMN "tBase_Aid"."sAid_Mark" IS '航标设置';
COMMENT ON COLUMN "tBase_Aid"."sAid_NfcID" IS 'NFC标签ID';
COMMENT ON COLUMN "tBase_Aid"."dAid_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_Aid"."sAid_Status" IS '航标状态';
COMMENT ON COLUMN "tBase_Aid"."lAid_LatDu" IS '纬度（度）';
COMMENT ON COLUMN "tBase_Aid"."lAid_LatFen" IS '纬度（分）';
COMMENT ON COLUMN "tBase_Aid"."lAid_LatMiao" IS '纬度（秒）';
COMMENT ON COLUMN "tBase_Aid"."lAid_LngDu" IS '经度（度）';
COMMENT ON COLUMN "tBase_Aid"."lAid_LngFen" IS '经度（分）';
COMMENT ON COLUMN "tBase_Aid"."lAid_LngMiao" IS '经度（秒）';

-- ----------------------------
-- Table structure for tBase_AidEquip
-- ----------------------------
DROP TABLE "tBase_AidEquip";
CREATE TABLE "tBase_AidEquip" (
  "sAidEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sAidEquip_AidID" NVARCHAR2(32) ,
  "sAidEquip_EquipID" NVARCHAR2(32) ,
  "dAidEquip_CreateDate" DATE 
);
COMMENT ON COLUMN "tBase_AidEquip"."sAidEquip_ID" IS 'ID';
COMMENT ON COLUMN "tBase_AidEquip"."sAidEquip_AidID" IS '航标ID';
COMMENT ON COLUMN "tBase_AidEquip"."sAidEquip_EquipID" IS '器材ID';
COMMENT ON COLUMN "tBase_AidEquip"."dAidEquip_CreateDate" IS '绑定时间';

-- ----------------------------
-- Table structure for tBase_AidMapIcon
-- ----------------------------
DROP TABLE "tBase_AidMapIcon";
CREATE TABLE "tBase_AidMapIcon" (
  "sAidIcon_ID" NVARCHAR2(32) NOT NULL ,
  "sAidIcon_Status" NVARCHAR2(64) ,
  "sAidIcon_StatusIcon" NVARCHAR2(64) ,
  "sAidIcon_AidID" NVARCHAR2(32) 
);
COMMENT ON COLUMN "tBase_AidMapIcon"."sAidIcon_ID" IS 'ID';
COMMENT ON COLUMN "tBase_AidMapIcon"."sAidIcon_Status" IS '航标状态';
COMMENT ON COLUMN "tBase_AidMapIcon"."sAidIcon_StatusIcon" IS '状态图标';
COMMENT ON COLUMN "tBase_AidMapIcon"."sAidIcon_AidID" IS '航标ID';

-- ----------------------------
-- Table structure for tBase_AidTypeMapIcon
-- ----------------------------
DROP TABLE "tBase_AidTypeMapIcon";
CREATE TABLE "tBase_AidTypeMapIcon" (
  "sAidTypeIcon_ID" NVARCHAR2(32) NOT NULL ,
  "sAidTypeIcon_Status" NVARCHAR2(64) ,
  "sAidTypeIcon_StatusIcon" NVARCHAR2(64) ,
  "sAidTypeIcon_Type" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tBase_AidTypeMapIcon"."sAidTypeIcon_ID" IS 'ID';
COMMENT ON COLUMN "tBase_AidTypeMapIcon"."sAidTypeIcon_Status" IS '种类状态';
COMMENT ON COLUMN "tBase_AidTypeMapIcon"."sAidTypeIcon_StatusIcon" IS '状态图标';
COMMENT ON COLUMN "tBase_AidTypeMapIcon"."sAidTypeIcon_Type" IS '种类编码';

-- ----------------------------
-- Table structure for tBase_App
-- ----------------------------
DROP TABLE "tBase_App";
CREATE TABLE "tBase_App" (
  "sApp_ID" NVARCHAR2(32) NOT NULL ,
  "sApp_Name" NVARCHAR2(10) ,
  "sApp_NO" NVARCHAR2(32) ,
  "sApp_SecretKey" NVARCHAR2(255) ,
  "lApp_StatusFlag" NUMBER ,
  "dApp_CreateDate" DATE ,
  "sApp_UserID" NVARCHAR2(32) 
);
COMMENT ON COLUMN "tBase_App"."sApp_ID" IS 'ID';
COMMENT ON COLUMN "tBase_App"."sApp_Name" IS '应用名称';
COMMENT ON COLUMN "tBase_App"."sApp_NO" IS '应用编码';
COMMENT ON COLUMN "tBase_App"."sApp_SecretKey" IS '应用秘钥';
COMMENT ON COLUMN "tBase_App"."lApp_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "tBase_App"."dApp_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_App"."sApp_UserID" IS '创建人ID';

-- ----------------------------
-- Table structure for tBase_AppMenu
-- ----------------------------
DROP TABLE "tBase_AppMenu";
CREATE TABLE "tBase_AppMenu" (
  "sAppMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sAppMenu_AppID" NVARCHAR2(32) ,
  "sAppMenu_MenuID" NVARCHAR2(32) ,
  "sAppMenu_MenuFunID" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tBase_AppMenu"."sAppMenu_ID" IS 'ID';
COMMENT ON COLUMN "tBase_AppMenu"."sAppMenu_AppID" IS '应用ID';
COMMENT ON COLUMN "tBase_AppMenu"."sAppMenu_MenuID" IS '菜单ID';
COMMENT ON COLUMN "tBase_AppMenu"."sAppMenu_MenuFunID" IS '菜单功能ID 多个逗号分隔';

-- ----------------------------
-- Table structure for tBase_Dict
-- ----------------------------
DROP TABLE "tBase_Dict";
CREATE TABLE "tBase_Dict" (
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
);
COMMENT ON COLUMN "tBase_Dict"."sDict_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Dict"."sDict_NO" IS '字典编码';
COMMENT ON COLUMN "tBase_Dict"."sDict_Name" IS '字典名称';
COMMENT ON COLUMN "tBase_Dict"."dDict_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_Dict"."sDict_UserID" IS '创建人ID';
COMMENT ON COLUMN "tBase_Dict"."sDict_DictTypeNO" IS '字典分类编码';
COMMENT ON COLUMN "tBase_Dict"."dDict_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "tBase_Dict"."sDict_UpdateUserID" IS '更新人ID';
COMMENT ON COLUMN "tBase_Dict"."lDict_SysFlag" IS '系统默认  0：否，1：是';
COMMENT ON COLUMN "tBase_Dict"."sDict_Describe" IS '字典描述';
COMMENT ON COLUMN "tBase_Dict"."sDict_Picture" IS '字典图片、Icon';
COMMENT ON COLUMN "tBase_Dict"."sDict_Link" IS '字典链接';
COMMENT ON COLUMN "tBase_Dict"."sDict_Color" IS '字典颜色';

-- ----------------------------
-- Records of tBase_Dict
-- ----------------------------
INSERT INTO "tBase_Dict" VALUES ('212001', '1', '测试遥测接口类型', NULL, NULL, 'EquipLampTelemetry', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('213001', '1', '测试灯器类型', NULL, NULL, 'EquipLampType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('214001', '1', '测试透镜形状', NULL, NULL, 'EquipLampLens', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('206001', '1', '测试雷达应答器编码', NULL, NULL, 'EquipRadarNO', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('207001', '1', '测试雷达应答器波段', NULL, NULL, 'EquipRadarBand', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('210001', '1', '测试太阳能板种类', NULL, NULL, 'EquipSolarEnergyType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('209001', '1', '测试遥控遥测方式', NULL, NULL, 'EquipTelemetryMode', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('205001', '1', '测试MMSIX号', NULL, NULL, 'EquipAisMMSIX', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('2001', 'test2', '厦门2', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('2003', 'test3', '厦门3', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('2004', 'test4', '厦门4', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('2005', 'test5', '厦门5', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('2006', 'test6', '厦门6', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('805001', '1', '测试消息来源', NULL, NULL, 'MsgSource', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('60588447888729702411', 'test', '测试航标图标', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', TO_DATE('2019-10-31 16:52:52', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190927/201909271603299309258.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('108001', '1', '测试仓库地图图标', NULL, NULL, 'StoreMapIcon', NULL, NULL, '0', NULL, 'upload/20190927/201909271607049806875.jpeg', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('801004', '4', '自定义消息', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('803001', '1', '测试消息自定义标签', NULL, NULL, 'MsgLabel', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('804001', '1', '测试消息原因', NULL, NULL, 'MsgReason', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('801006', '6', '航标恢复正常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554688', 'SpecialMark', '专用标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145337360384', 'Safe Water', '安全水域标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554689', 'Light Vessel LANBY', '灯船', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554690', 'Preferred Channel Starboard Hand', '推荐航道右侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554691', 'Preferred Channel Port Hand', '推荐航道左侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554692', 'Starboard Hand Mark', '右侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554693', 'leftLabel', '左侧标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554694', 'Cardinal Mark N', '北方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145341554695', 'Cardinal Mark E', '东方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145345748992', 'Cardinal Mark S', '南方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145345748993', 'Cardinal Mark W', '西方位标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626206145345748994', 'Isolated Danger', '孤立危险物标志', TO_DATE('2019-09-24 23:59:39', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626157742175813633', 'EquipSinkingstone', '沉块', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626157742175813634', 'Equipbuoy', '浮体', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('626157742175813635', 'EquipAnchorchain', '锚链', TO_DATE('2019-09-24 20:47:19', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'EquipType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('801005', '5', '器材寿命不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('801001', '1', '库存不足', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('801002', '2', '航标异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('801003', '3', '器材异常', NULL, NULL, 'MsgType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('802001', '1', '未读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('802002', '2', '已读', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('802003', '3', '待处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('802004', '4', '已处理', NULL, NULL, 'MsgStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('605884478887297024', '12', '22', TO_DATE('2019-07-30 22:08:36', 'SYYYY-MM-DD HH24:MI:SS'), '22', 'AidIcon', TO_DATE('2019-10-31 16:52:52', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20191031/201910311652453607714.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('3', 'test1', 'VQ(9)10S(0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35, 0.15+0.35, 0.15+0.35,0.15+0.35,0.15+5.85)
VQ(9)10S(0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35,0.15+0.35, 0.15+0.35, 0.15+0.35,0.15+0.35,0.15+5.85)', NULL, NULL, 'AidLighting', NULL, NULL, '0', '2+8', NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('1', 'test', '灯塔', NULL, NULL, 'AidType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('2', 'test', '厦门', NULL, NULL, 'AidStation', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('4', 'test2', '互顿蓝黄3秒', NULL, NULL, 'AidLighting', NULL, NULL, '0', '蓝1.0+5.0+黄1.0+5.0', NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('5', 'test', 'test航标设置', NULL, NULL, 'AidMark', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702001', 'EquipAIS', 'AIS', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('700001', '1', '入库', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('601001', 'query', '查询', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('601002', 'update', '修改', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('601003', 'delete', '删除', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('601004', 'add', '新增', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('601005', 'other', '其他', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('601006', 'upload', '上传', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('601007', 'login', '登录', NULL, NULL, 'SystemLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('700002', '2', '出库', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('700003', '3', '拆除', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('700004', '4', '运输', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('700005', '5', '待检测', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('700006', '6', '检测', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('700007', '7', '维修', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('701001', '1', '仓库待用', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701002', '2', '出库中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701003', '3', '拆除', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701004', '4', '运输中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701005', '5', '待检测中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701006', '6', '检测中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701007', '7', '维修中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('701008', '8', '报废', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('700008', '8', '报废', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'EquipStatus', TO_DATE('2019-08-17 16:02:44', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, NULL, NULL, '#EB5426');
INSERT INTO "tBase_Dict" VALUES ('700009', '9', '使用', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('701009', '9', '使用中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('700010', '0', '空闲', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('701010', '0', '空闲中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('106001', 'normal', '正常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('107001', 'normal', '正常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:36', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1', NULL, 'upload/20190817/201908171805306689781.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('106002', 'unusual', '异常', NULL, NULL, 'AidStatus', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('107002', 'unusual', '异常地图图标', TO_DATE('1970-01-01 08:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, 'MapIcon', TO_DATE('2019-08-17 18:05:48', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190817/201908171805462081735.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('700011', '10', '异常', NULL, NULL, 'EquipStatus', NULL, NULL, '1', NULL, NULL, NULL, '#3B7FD4');
INSERT INTO "tBase_Dict" VALUES ('701011', '10', '异常中', NULL, NULL, 'EquipLogType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('107003', '1', '图标一', NULL, NULL, 'MapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('107004', '2', '图标二', NULL, NULL, 'MapIcon', NULL, NULL, '1', NULL, 'upload/20190730/201907302208285808068.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('612997577486368768', '3', '图标3', TO_DATE('2019-08-19 13:13:31', 'SYYYY-MM-DD HH24:MI:SS'), '1', 'MapIcon', TO_DATE('2019-08-19 16:18:58', 'SYYYY-MM-DD HH24:MI:SS'), '1', '0', NULL, 'upload/20190819/201908191618549849864.png', NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702002', 'EquipRadar', '雷达应答器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702003', 'EquipTelemetry', '遥测遥控', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702004', 'EquipBattery', '蓄电池', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702005', 'EquipSolarEnergy', '太阳能板', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702006', 'EquipSpareLamp', '备灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702007', 'EquipViceLamp', '副灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('702008', 'EquipLamp', '灯器', NULL, NULL, 'EquipType', NULL, NULL, '1', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('211001', 'test', '测试测试有限公司', NULL, NULL, 'EquipManufacturer', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('208001', '1', '锂电池', NULL, NULL, 'EquipBatteryType', NULL, NULL, '0', NULL, NULL, NULL, NULL);
INSERT INTO "tBase_Dict" VALUES ('208002', '2', '铅酸电池', NULL, NULL, 'EquipBatteryType', NULL, NULL, '0', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tBase_DictType
-- ----------------------------
DROP TABLE "tBase_DictType";
CREATE TABLE "tBase_DictType" (
  "sDictType_ID" NVARCHAR2(32) NOT NULL ,
  "sDictType_NO" NVARCHAR2(64) ,
  "sDictType_Name" NVARCHAR2(64) ,
  "dDictType_CreateDate" DATE ,
  "sDictType_UserID" NVARCHAR2(32) ,
  "dDictType_UpdateDate" DATE ,
  "sDictType_UpdateUserID" NVARCHAR2(32) ,
  "lDictType_SysFlag" NUMBER 
);
COMMENT ON COLUMN "tBase_DictType"."sDictType_ID" IS 'ID';
COMMENT ON COLUMN "tBase_DictType"."sDictType_NO" IS '字典分类编码';
COMMENT ON COLUMN "tBase_DictType"."sDictType_Name" IS '字典分类名称';
COMMENT ON COLUMN "tBase_DictType"."dDictType_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_DictType"."sDictType_UserID" IS '创建人ID';
COMMENT ON COLUMN "tBase_DictType"."dDictType_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "tBase_DictType"."sDictType_UpdateUserID" IS '更新人ID';
COMMENT ON COLUMN "tBase_DictType"."lDictType_SysFlag" IS '系统默认  0：否，1：是';

-- ----------------------------
-- Records of tBase_DictType
-- ----------------------------
INSERT INTO "tBase_DictType" VALUES ('805', 'MsgSource', '消息来源', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('204', 'EquipIcon', '器材ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('803', 'MsgLabel', '消息自定义标签', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('801', 'MsgType', '消息类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('802', 'MsgStatus', '消息状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('101', 'AidStation', '航标站', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('102', 'AidType', '航标种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('103', 'AidLighting', '灯质明灭', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('104', 'AidMark', '航标设置', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('105', 'AidIcon', '航标ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('201', 'EquipType', '器材类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('202', 'EquipStatus', '器材状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('601', 'SystemLogType', '系统日志类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('203', 'EquipLogType', '器材日志类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('106', 'AidStatus', '航标状态', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('107', 'MapIcon', '地图图标航标', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('205', 'EquipAisMMSIX', 'AIS MMSIX号', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('206', 'EquipRadarNO', '雷达应答器编码', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('207', 'EquipRadarBand', '雷达应答器波段', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('208', 'EquipBatteryType', '蓄电池种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('209', 'EquipTelemetryMode', '遥控遥测方式', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('210', 'EquipSolarEnergyType', '太阳能板种类', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('211', 'EquipManufacturer', '生产厂家', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('212', 'EquipLampTelemetry', '遥测接口类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('213', 'EquipLampType', '灯器类型', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('214', 'EquipLampLens', '透镜形状', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('108', 'StoreMapIcon', '地图图标仓库', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('804', 'MsgReason', '消息原因', NULL, NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for tBase_Equip
-- ----------------------------
DROP TABLE "tBase_Equip";
CREATE TABLE "tBase_Equip" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sEquip_Name" NVARCHAR2(64) ,
  "sEquip_StoreLv1" NVARCHAR2(32) ,
  "sEquip_StoreLv2" NVARCHAR2(32) ,
  "sEquip_StoreLv3" NVARCHAR2(32) ,
  "sEquip_StoreLv4" NVARCHAR2(32) ,
  "sEquip_Type" NVARCHAR2(64) ,
  "sEquip_Status" NVARCHAR2(64) ,
  "sEquip_NfcID" NVARCHAR2(32) ,
  "sEquip_AidID" NVARCHAR2(32) ,
  "dEquip_CreateDate" DATE ,
  "sEquip_NO" NVARCHAR2(64) ,
  "sEquip_Icon" NVARCHAR2(64) ,
  "sEquip_Manufacturer" NVARCHAR2(64) ,
  "sEquip_MModel" NVARCHAR2(255) ,
  "dEquip_ArrivalDate" DATE ,
  "dEquip_UseDate" DATE ,
  "dEquip_StoreDate" DATE ,
  "sEquip_MBrand" NVARCHAR2(255) ,
  "dEquip_DumpDate" DATE 
);
COMMENT ON COLUMN "tBase_Equip"."sEquip_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Equip"."sEquip_Name" IS '器材名称';
COMMENT ON COLUMN "tBase_Equip"."sEquip_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "tBase_Equip"."sEquip_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "tBase_Equip"."sEquip_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "tBase_Equip"."sEquip_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "tBase_Equip"."sEquip_Type" IS '器材类型';
COMMENT ON COLUMN "tBase_Equip"."sEquip_Status" IS '器材状态';
COMMENT ON COLUMN "tBase_Equip"."sEquip_NfcID" IS 'NFC标签ID';
COMMENT ON COLUMN "tBase_Equip"."sEquip_AidID" IS '航标ID';
COMMENT ON COLUMN "tBase_Equip"."dEquip_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_Equip"."sEquip_NO" IS '器材编码';
COMMENT ON COLUMN "tBase_Equip"."sEquip_Icon" IS '器材Icon';
COMMENT ON COLUMN "tBase_Equip"."sEquip_Manufacturer" IS '生产厂家';
COMMENT ON COLUMN "tBase_Equip"."sEquip_MModel" IS '厂方型号';
COMMENT ON COLUMN "tBase_Equip"."dEquip_ArrivalDate" IS '到货日期';
COMMENT ON COLUMN "tBase_Equip"."dEquip_UseDate" IS '使用日期';
COMMENT ON COLUMN "tBase_Equip"."dEquip_StoreDate" IS '入库日期';
COMMENT ON COLUMN "tBase_Equip"."sEquip_MBrand" IS '品牌';
COMMENT ON COLUMN "tBase_Equip"."dEquip_DumpDate" IS '报废日期';

-- ----------------------------
-- Table structure for tBase_EquipLife
-- ----------------------------
DROP TABLE "tBase_EquipLife";
CREATE TABLE "tBase_EquipLife" (
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
);
COMMENT ON COLUMN "tBase_EquipLife"."sELife_ID" IS 'ID';
COMMENT ON COLUMN "tBase_EquipLife"."dELife_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_EquipLife"."sELife_EquipType" IS '器材分类';
COMMENT ON COLUMN "tBase_EquipLife"."sELife_EquipManufacturer" IS '器材生产厂商';
COMMENT ON COLUMN "tBase_EquipLife"."sELife_EquipMBrand" IS '器材品牌';
COMMENT ON COLUMN "tBase_EquipLife"."sELife_AidStation" IS '器材航标站';
COMMENT ON COLUMN "tBase_EquipLife"."lELife_Time" IS '平均寿命（秒）';
COMMENT ON COLUMN "tBase_EquipLife"."dELife_UpdateDate" IS '更新日期';
COMMENT ON COLUMN "tBase_EquipLife"."lELife_Num" IS '数量';
COMMENT ON COLUMN "tBase_EquipLife"."lELife_Total" IS '总寿命';

-- ----------------------------
-- Table structure for tBase_EquipLog
-- ----------------------------
DROP TABLE "tBase_EquipLog";
CREATE TABLE "tBase_EquipLog" (
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
);
COMMENT ON COLUMN "tBase_EquipLog"."sELog_ID" IS 'ID';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_Type" IS '日志类型';
COMMENT ON COLUMN "tBase_EquipLog"."dELog_CreateDate" IS '日期';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_UserID" IS '操作员ID';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_EquipID" IS '器材ID';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_Describe" IS '日志描述';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_Remarks" IS '日志备注';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_IP" IS '操作员IP';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "tBase_EquipLog"."sELog_AidID" IS '航标ID';

-- ----------------------------
-- Table structure for tBase_Group
-- ----------------------------
DROP TABLE "tBase_Group";
CREATE TABLE "tBase_Group" (
  "sGroup_ID" NVARCHAR2(32) NOT NULL ,
  "sGroup_Name" NVARCHAR2(10) ,
  "lGroup_SysFlag" NUMBER 
);
COMMENT ON COLUMN "tBase_Group"."sGroup_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Group"."sGroup_Name" IS '用户组名称';
COMMENT ON COLUMN "tBase_Group"."lGroup_SysFlag" IS '系统默认  0：否，1：是';

-- ----------------------------
-- Records of tBase_Group
-- ----------------------------
INSERT INTO "tBase_Group" VALUES ('1', '超级管理组', '1');
INSERT INTO "tBase_Group" VALUES ('2', '管理员组', '1');
INSERT INTO "tBase_Group" VALUES ('3', '普通用户组', '1');

-- ----------------------------
-- Table structure for tBase_GroupMenu
-- ----------------------------
DROP TABLE "tBase_GroupMenu";
CREATE TABLE "tBase_GroupMenu" (
  "sGroupMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sGroupMenu_GroupID" NVARCHAR2(32) ,
  "sGroupMenu_MenuID" NVARCHAR2(32) ,
  "sGroupMenu_MenuFunID" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tBase_GroupMenu"."sGroupMenu_ID" IS 'ID';
COMMENT ON COLUMN "tBase_GroupMenu"."sGroupMenu_GroupID" IS '用户组ID';
COMMENT ON COLUMN "tBase_GroupMenu"."sGroupMenu_MenuID" IS '菜单ID';
COMMENT ON COLUMN "tBase_GroupMenu"."sGroupMenu_MenuFunID" IS '菜单功能ID 多个逗号分隔';


-- ----------------------------
-- Table structure for tBase_Menu
-- ----------------------------
DROP TABLE "tBase_Menu";
CREATE TABLE "tBase_Menu" (
  "sMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sMenu_Name" NVARCHAR2(10) ,
  "sMenu_Parent" NVARCHAR2(32) ,
  "sMenu_Url" NVARCHAR2(255) ,
  "sMenu_Icon" NVARCHAR2(255) ,
  "lMenu_StatusFlag" NUMBER ,
  "lMenu_Order" NUMBER 
);
COMMENT ON COLUMN "tBase_Menu"."sMenu_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Menu"."sMenu_Name" IS '菜单名称';
COMMENT ON COLUMN "tBase_Menu"."sMenu_Parent" IS '父级菜单Id';
COMMENT ON COLUMN "tBase_Menu"."sMenu_Url" IS '菜单地址';
COMMENT ON COLUMN "tBase_Menu"."sMenu_Icon" IS '菜单Icon';
COMMENT ON COLUMN "tBase_Menu"."lMenu_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "tBase_Menu"."lMenu_Order" IS '排序';

-- ----------------------------
-- Records of tBase_Menu
-- ----------------------------
INSERT INTO "tBase_Menu" VALUES ('800', '消息列表', NULL, 'msg.html', NULL, '1', '80');
INSERT INTO "tBase_Menu" VALUES ('100', 'NFC标签', NULL, 'nfc.html', NULL, '1', '10');
INSERT INTO "tBase_Menu" VALUES ('200', '仓库管理', NULL, 'store.html', NULL, '1', '20');
INSERT INTO "tBase_Menu" VALUES ('300', '航标管理', NULL, NULL, NULL, '1', '30');
INSERT INTO "tBase_Menu" VALUES ('700', '器材管理', NULL, 'equip.html', NULL, '1', '40');
INSERT INTO "tBase_Menu" VALUES ('400', '地图展示', NULL, 'map.html', NULL, '1', '50');
INSERT INTO "tBase_Menu" VALUES ('500', '统计分析', NULL, NULL, NULL, '1', '60');
INSERT INTO "tBase_Menu" VALUES ('600', '系统管理', NULL, NULL, NULL, '1', '70');
INSERT INTO "tBase_Menu" VALUES ('610', '数据字典', '600', NULL, NULL, '1', '80');
INSERT INTO "tBase_Menu" VALUES ('611', '字典分类', '610', 'dictType.html', NULL, '1', '90');
INSERT INTO "tBase_Menu" VALUES ('612', '字典配置', '610', 'dict.html', NULL, '1', '100');
INSERT INTO "tBase_Menu" VALUES ('620', '系统日志', '600', 'slog.html', NULL, '1', '170');
INSERT INTO "tBase_Menu" VALUES ('630', '应用注册', '600', 'app.html', NULL, '1', '120');
INSERT INTO "tBase_Menu" VALUES ('640', '用户管理', '600', NULL, NULL, '1', '130');
INSERT INTO "tBase_Menu" VALUES ('641', '用户组', '640', 'group.html', NULL, '1', '140');
INSERT INTO "tBase_Menu" VALUES ('642', '用户', '640', 'user.html', NULL, '1', '150');
INSERT INTO "tBase_Menu" VALUES ('650', '系统设置', '600', 'sys.html', NULL, '1', '160');
INSERT INTO "tBase_Menu" VALUES ('330', '航标管理', '300', 'aid.html', NULL, '1', '31');
INSERT INTO "tBase_Menu" VALUES ('320', '航标分类的地图图标', '300', 'aidTypeMapIcon.html', NULL, '1', '33');
INSERT INTO "tBase_Menu" VALUES ('310', '航标的地图图标', '300', 'aidMapIcon.html', NULL, '1', '32');
INSERT INTO "tBase_Menu" VALUES ('510', '首页', '500', 'statis/index.html', NULL, '1', '61');
INSERT INTO "tBase_Menu" VALUES ('520', '器材统计分析', '500', 'statisEquip.html', NULL, '1', '62');
INSERT INTO "tBase_Menu" VALUES ('530', '航标统计分析', '500', 'statisAid.html', NULL, '1', '63');
INSERT INTO "tBase_Menu" VALUES ('540', '仓库统计分析', '500', 'statisStore.html', NULL, '1', '64');
INSERT INTO "tBase_Menu" VALUES ('340', '航标站地图设置', '300', 'aidStation.html', NULL, '1', '34');

-- ----------------------------
-- Table structure for tBase_MenuFun
-- ----------------------------
DROP TABLE "tBase_MenuFun";
CREATE TABLE "tBase_MenuFun" (
  "sMFun_ID" NVARCHAR2(32) NOT NULL ,
  "sMFun_Name" NVARCHAR2(10) ,
  "sMFun_MenuID" NVARCHAR2(32) ,
  "sMFun_InterfaceID" NVARCHAR2(255) ,
  "lMFun_StatusFlag" NUMBER ,
  "sMFun_Describe" NVARCHAR2(255) ,
  "sMFun_Button" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tBase_MenuFun"."sMFun_ID" IS 'ID';
COMMENT ON COLUMN "tBase_MenuFun"."sMFun_Name" IS '名称';
COMMENT ON COLUMN "tBase_MenuFun"."sMFun_MenuID" IS '所属菜单Id';
COMMENT ON COLUMN "tBase_MenuFun"."sMFun_InterfaceID" IS '接口ID  多个逗号分隔';
COMMENT ON COLUMN "tBase_MenuFun"."lMFun_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "tBase_MenuFun"."sMFun_Describe" IS '功能描述';
COMMENT ON COLUMN "tBase_MenuFun"."sMFun_Button" IS '功能按钮';

-- ----------------------------
-- Records of tBase_MenuFun
-- ----------------------------
INSERT INTO "tBase_MenuFun" VALUES ('3308', '使用器材', '330', NULL, '1', NULL, 'sys:aid:equip');
INSERT INTO "tBase_MenuFun" VALUES ('642010', '分配仓库', '642', NULL, '1', NULL, 'sys:user:store');
INSERT INTO "tBase_MenuFun" VALUES ('2007', '库存预警', '200', NULL, '1', NULL, 'sys:store:limit');
INSERT INTO "tBase_MenuFun" VALUES ('800001', '查询', '800', NULL, '1', NULL, 'sys:msg:query');
INSERT INTO "tBase_MenuFun" VALUES ('620002', '导出', '620', NULL, '1', NULL, 'sys:slog:export');
INSERT INTO "tBase_MenuFun" VALUES ('3307', '分配用户', '330', NULL, '1', NULL, 'sys:aid:user');
INSERT INTO "tBase_MenuFun" VALUES ('1001', '查询', '100', NULL, '1', NULL, 'sys:nfc:query');
INSERT INTO "tBase_MenuFun" VALUES ('1002', '新增', '100', NULL, '1', NULL, 'sys:nfc:add');
INSERT INTO "tBase_MenuFun" VALUES ('1003', '修改', '100', NULL, '1', NULL, 'sys:nfc:update');
INSERT INTO "tBase_MenuFun" VALUES ('1004', '删除', '100', NULL, '1', NULL, 'sys:nfc:delete');
INSERT INTO "tBase_MenuFun" VALUES ('1005', '导入', '100', NULL, '1', NULL, 'sys:nfc:import');
INSERT INTO "tBase_MenuFun" VALUES ('1006', '导出', '100', NULL, '1', NULL, 'sys:nfc:export');
INSERT INTO "tBase_MenuFun" VALUES ('2001', '查询', '200', NULL, '1', NULL, 'sys:store:query');
INSERT INTO "tBase_MenuFun" VALUES ('2002', '新增', '200', NULL, '1', NULL, 'sys:store:add');
INSERT INTO "tBase_MenuFun" VALUES ('2003', '修改', '200', NULL, '1', NULL, 'sys:store:update');
INSERT INTO "tBase_MenuFun" VALUES ('2004', '删除', '200', NULL, '1', NULL, 'sys:store:delete');
INSERT INTO "tBase_MenuFun" VALUES ('2005', '导入', '200', NULL, '1', NULL, 'sys:store:import');
INSERT INTO "tBase_MenuFun" VALUES ('2006', '导出', '200', NULL, '1', NULL, 'sys:store:export');
INSERT INTO "tBase_MenuFun" VALUES ('3301', '查询', '330', NULL, '1', NULL, 'sys:aid:query');
INSERT INTO "tBase_MenuFun" VALUES ('3302', '新增', '330', NULL, '1', NULL, 'sys:aid:add');
INSERT INTO "tBase_MenuFun" VALUES ('3303', '修改', '330', NULL, '1', NULL, 'sys:aid:update');
INSERT INTO "tBase_MenuFun" VALUES ('3304', '删除', '330', NULL, '1', NULL, 'sys:aid:delete');
INSERT INTO "tBase_MenuFun" VALUES ('3305', '导入', '330', NULL, '1', NULL, 'sys:aid:import');
INSERT INTO "tBase_MenuFun" VALUES ('3306', '导出', '330', NULL, '1', NULL, 'sys:aid:export');
INSERT INTO "tBase_MenuFun" VALUES ('7001', '查询', '700', NULL, '1', NULL, 'sys:equip:query');
INSERT INTO "tBase_MenuFun" VALUES ('7002', '新增', '700', NULL, '1', NULL, 'sys:equip:add');
INSERT INTO "tBase_MenuFun" VALUES ('7003', '修改', '700', NULL, '1', NULL, 'sys:equip:update');
INSERT INTO "tBase_MenuFun" VALUES ('7004', '删除', '700', NULL, '1', NULL, 'sys:equip:delete');
INSERT INTO "tBase_MenuFun" VALUES ('7005', '导入', '700', NULL, '1', NULL, 'sys:equip:import');
INSERT INTO "tBase_MenuFun" VALUES ('7006', '导出', '700', NULL, '1', NULL, 'sys:equip:export');
INSERT INTO "tBase_MenuFun" VALUES ('4001', '查询', '400', NULL, '1', NULL, 'sys:map:query');
INSERT INTO "tBase_MenuFun" VALUES ('611001', '查询', '611', NULL, '1', NULL, 'sys:dictType:query');
INSERT INTO "tBase_MenuFun" VALUES ('611002', '新增', '611', NULL, '1', NULL, 'sys:dictType:add');
INSERT INTO "tBase_MenuFun" VALUES ('611003', '修改', '611', NULL, '1', NULL, 'sys:dictType:update');
INSERT INTO "tBase_MenuFun" VALUES ('611004', '删除', '611', NULL, '1', NULL, 'sys:dictType:delete');
INSERT INTO "tBase_MenuFun" VALUES ('611005', '导入', '611', NULL, '1', NULL, 'sys:dictType:import');
INSERT INTO "tBase_MenuFun" VALUES ('611006', '导出', '611', NULL, '1', NULL, 'sys:dictType:export');
INSERT INTO "tBase_MenuFun" VALUES ('612001', '查询', '612', NULL, '1', NULL, 'sys:dict:query');
INSERT INTO "tBase_MenuFun" VALUES ('612002', '新增', '612', NULL, '1', NULL, 'sys:dict:add');
INSERT INTO "tBase_MenuFun" VALUES ('612003', '修改', '612', NULL, '1', NULL, 'sys:dict:update');
INSERT INTO "tBase_MenuFun" VALUES ('612004', '删除', '612', NULL, '1', NULL, 'sys:dict:delete');
INSERT INTO "tBase_MenuFun" VALUES ('612005', '导入', '612', NULL, '1', NULL, 'sys:dict:import');
INSERT INTO "tBase_MenuFun" VALUES ('612006', '导出', '612', NULL, '1', NULL, 'sys:dict:export');
INSERT INTO "tBase_MenuFun" VALUES ('630001', '查询', '630', NULL, '1', NULL, 'sys:app:query');
INSERT INTO "tBase_MenuFun" VALUES ('630002', '新增', '630', NULL, '1', NULL, 'sys:app:add');
INSERT INTO "tBase_MenuFun" VALUES ('630003', '修改', '630', NULL, '1', NULL, 'sys:app:update');
INSERT INTO "tBase_MenuFun" VALUES ('630004', '删除', '630', NULL, '1', NULL, 'sys:app:delete');
INSERT INTO "tBase_MenuFun" VALUES ('630005', '导入', '630', NULL, '1', NULL, 'sys:app:import');
INSERT INTO "tBase_MenuFun" VALUES ('630006', '导出', '630', NULL, '1', NULL, 'sys:app:export');
INSERT INTO "tBase_MenuFun" VALUES ('641001', '查询', '641', NULL, '1', NULL, 'sys:group:query');
INSERT INTO "tBase_MenuFun" VALUES ('641002', '新增', '641', NULL, '1', NULL, 'sys:group:add');
INSERT INTO "tBase_MenuFun" VALUES ('641003', '修改', '641', NULL, '1', NULL, 'sys:group:update');
INSERT INTO "tBase_MenuFun" VALUES ('641004', '删除', '641', NULL, '1', NULL, 'sys:group:delete');
INSERT INTO "tBase_MenuFun" VALUES ('641005', '导入', '641', NULL, '1', NULL, 'sys:group:import');
INSERT INTO "tBase_MenuFun" VALUES ('641006', '导出', '641', NULL, '1', NULL, 'sys:group:export');
INSERT INTO "tBase_MenuFun" VALUES ('641007', '授权', '641', NULL, '1', NULL, 'sys:group:auth');
INSERT INTO "tBase_MenuFun" VALUES ('642001', '查询', '642', NULL, '1', NULL, 'sys:user:query');
INSERT INTO "tBase_MenuFun" VALUES ('642002', '新增', '642', NULL, '1', NULL, 'sys:user:add');
INSERT INTO "tBase_MenuFun" VALUES ('642003', '修改', '642', NULL, '1', NULL, 'sys:user:update');
INSERT INTO "tBase_MenuFun" VALUES ('642004', '删除', '642', NULL, '1', NULL, 'sys:user:delete');
INSERT INTO "tBase_MenuFun" VALUES ('642005', '导入', '642', NULL, '1', NULL, 'sys:user:import');
INSERT INTO "tBase_MenuFun" VALUES ('642006', '导出', '642', NULL, '1', NULL, 'sys:user:export');
INSERT INTO "tBase_MenuFun" VALUES ('642007', '授权', '642', NULL, '1', '需要查询权限。<br/>可以更改用户权限。', 'sys:user:auth');
INSERT INTO "tBase_MenuFun" VALUES ('620001', '查询', '620', NULL, '1', NULL, 'sys:slog:query');
INSERT INTO "tBase_MenuFun" VALUES ('642008', '重置密码', '642', NULL, '1', NULL, 'sys:user:resetPwd');
INSERT INTO "tBase_MenuFun" VALUES ('630007', '授权', '630', NULL, '1', NULL, 'sys:app:auth');
INSERT INTO "tBase_MenuFun" VALUES ('642009', '分配航标', '642', NULL, '1', NULL, 'sys:user:aid');
INSERT INTO "tBase_MenuFun" VALUES ('650001', '查询', '650', NULL, '1', NULL, 'sys:sys:query');
INSERT INTO "tBase_MenuFun" VALUES ('3101', '查询', '310', NULL, '1', NULL, 'sys:aidMapIcon:query');
INSERT INTO "tBase_MenuFun" VALUES ('3102', '新增', '310', NULL, '1', NULL, 'sys:aidMapIcon:add');
INSERT INTO "tBase_MenuFun" VALUES ('3103', '修改', '310', NULL, '1', NULL, 'sys:aidMapIcon:update');
INSERT INTO "tBase_MenuFun" VALUES ('3104', '删除', '310', NULL, '1', NULL, 'sys:aidMapIcon:delete');
INSERT INTO "tBase_MenuFun" VALUES ('3105', '导入', '310', NULL, '1', NULL, 'sys:aidMapIcon:import');
INSERT INTO "tBase_MenuFun" VALUES ('3106', '导出', '310', NULL, '1', NULL, 'sys:aidMapIcon:export');
INSERT INTO "tBase_MenuFun" VALUES ('3201', '查询', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:query');
INSERT INTO "tBase_MenuFun" VALUES ('3202', '新增', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:add');
INSERT INTO "tBase_MenuFun" VALUES ('3203', '修改', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:update');
INSERT INTO "tBase_MenuFun" VALUES ('3204', '删除', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:delete');
INSERT INTO "tBase_MenuFun" VALUES ('3205', '导入', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:import');
INSERT INTO "tBase_MenuFun" VALUES ('3206', '导出', '320', NULL, '1', NULL, 'sys:aidTypeMapIcon:export');
INSERT INTO "tBase_MenuFun" VALUES ('3309', '批量删除', '330', NULL, '1', NULL, 'sys:aid:delBatch');
INSERT INTO "tBase_MenuFun" VALUES ('3401', '查询', '340', NULL, '1', NULL, 'sys:aidStation:query');
INSERT INTO "tBase_MenuFun" VALUES ('3402', '新增', '340', NULL, '1', NULL, 'sys:aidStation:add');
INSERT INTO "tBase_MenuFun" VALUES ('3403', '修改', '340', NULL, '1', NULL, 'sys:aidStation:update');
INSERT INTO "tBase_MenuFun" VALUES ('3404', '删除', '340', NULL, '1', NULL, 'sys:aidStation:delete');

-- ----------------------------
-- Table structure for tBase_MenuInterface
-- ----------------------------
DROP TABLE "tBase_MenuInterface";
CREATE TABLE "tBase_MenuInterface" (
  "sInterface_ID" NVARCHAR2(32) NOT NULL ,
  "sInterface_Name" NVARCHAR2(10) ,
  "sInterface_Url" NVARCHAR2(255) ,
  "sInterface_MenuID" NVARCHAR2(255) ,
  "lInterface_StatusFlag" NUMBER DEFAULT 1 ,
  "sInterface_MFunID" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tBase_MenuInterface"."sInterface_ID" IS 'ID';
COMMENT ON COLUMN "tBase_MenuInterface"."sInterface_Name" IS '菜单接口名称';
COMMENT ON COLUMN "tBase_MenuInterface"."sInterface_Url" IS '菜单接口地址';
COMMENT ON COLUMN "tBase_MenuInterface"."sInterface_MenuID" IS '接口所属菜单，多个逗号分隔';
COMMENT ON COLUMN "tBase_MenuInterface"."lInterface_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "tBase_MenuInterface"."sInterface_MFunID" IS '接口所属菜单按钮，多个逗号分隔';

-- ----------------------------
-- Table structure for tBase_Message
-- ----------------------------
DROP TABLE "tBase_Message";
CREATE TABLE "tBase_Message" (
  "sMsg_ID" NVARCHAR2(32) NOT NULL ,
  "sMsg_Type" NVARCHAR2(64) ,
  "dMsg_CreateDate" DATE ,
  "sMsg_ToUserID" NVARCHAR2(32) ,
  "sMsg_EquipID" NVARCHAR2(32) ,
  "sMsg_Describe" NVARCHAR2(255) ,
  "sMsg_Remarks" NVARCHAR2(255) ,
  "dMsg_UpdateDate" DATE ,
  "sMsg_UserID" NVARCHAR2(32) ,
  "sMsg_AidID" NVARCHAR2(32) ,
  "sMsg_IP" NVARCHAR2(255) ,
  "sMsg_FromUserID" NVARCHAR2(32) ,
  "sMsg_Label" NVARCHAR2(64) ,
  "lMsg_Level" NUMBER ,
  "sMsg_Status" NVARCHAR2(64) ,
  "sMsg_Title" NVARCHAR2(32) ,
  "sMsg_StoreLv1" NVARCHAR2(32) ,
  "sMsg_StoreLv2" NVARCHAR2(32) ,
  "sMsg_StoreLv3" NVARCHAR2(32) ,
  "sMsg_StoreLv4" NVARCHAR2(32) ,
  "dMsg_StoreNum" NUMBER ,
  "sMsg_Reason" NVARCHAR2(64) ,
  "sMsg_Source" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tBase_Message"."sMsg_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Message"."sMsg_Type" IS '消息类型';
COMMENT ON COLUMN "tBase_Message"."dMsg_CreateDate" IS '消息日期';
COMMENT ON COLUMN "tBase_Message"."sMsg_ToUserID" IS '接收消息人员ID';
COMMENT ON COLUMN "tBase_Message"."sMsg_EquipID" IS '器材ID';
COMMENT ON COLUMN "tBase_Message"."sMsg_Describe" IS '消息描述';
COMMENT ON COLUMN "tBase_Message"."sMsg_Remarks" IS '消息备注';
COMMENT ON COLUMN "tBase_Message"."dMsg_UpdateDate" IS '消息更新日期';
COMMENT ON COLUMN "tBase_Message"."sMsg_UserID" IS '操作员ID';
COMMENT ON COLUMN "tBase_Message"."sMsg_AidID" IS '航标ID';
COMMENT ON COLUMN "tBase_Message"."sMsg_IP" IS '操作员IP';
COMMENT ON COLUMN "tBase_Message"."sMsg_FromUserID" IS '产生消息人员ID';
COMMENT ON COLUMN "tBase_Message"."sMsg_Label" IS '消息自定义标签';
COMMENT ON COLUMN "tBase_Message"."lMsg_Level" IS '消息重要级别';
COMMENT ON COLUMN "tBase_Message"."sMsg_Status" IS '消息状态';
COMMENT ON COLUMN "tBase_Message"."sMsg_Title" IS '消息标题';
COMMENT ON COLUMN "tBase_Message"."sMsg_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "tBase_Message"."sMsg_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "tBase_Message"."sMsg_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "tBase_Message"."sMsg_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "tBase_Message"."dMsg_StoreNum" IS '库存数量';
COMMENT ON COLUMN "tBase_Message"."sMsg_Reason" IS '消息原因';

-- ----------------------------
-- Table structure for tBase_Nfc
-- ----------------------------
DROP TABLE "tBase_Nfc";
CREATE TABLE "tBase_Nfc" (
  "sNfc_ID" NVARCHAR2(32) NOT NULL ,
  "sNfc_Name" NVARCHAR2(64) ,
  "sNfc_NO" NVARCHAR2(64) ,
  "lNfc_StatusFlag" NUMBER ,
  "dNfc_CreateDate" DATE 
);
COMMENT ON COLUMN "tBase_Nfc"."sNfc_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Nfc"."sNfc_Name" IS '名称';
COMMENT ON COLUMN "tBase_Nfc"."sNfc_NO" IS '编码';
COMMENT ON COLUMN "tBase_Nfc"."lNfc_StatusFlag" IS '状态 0：未使用，1：已使用';
COMMENT ON COLUMN "tBase_Nfc"."dNfc_CreateDate" IS '创建日期';

-- ----------------------------
-- Table structure for tBase_Store
-- ----------------------------
DROP TABLE "tBase_Store";
CREATE TABLE "tBase_Store" (
  "sStore_ID" NVARCHAR2(32) NOT NULL ,
  "sStore_Name" NVARCHAR2(64) ,
  "sStore_Level1" NVARCHAR2(32) ,
  "sStore_Level2" NVARCHAR2(32) ,
  "sStore_Level3" NVARCHAR2(32) ,
  "sStore_Parent" NVARCHAR2(32) ,
  "lStore_Limit" NUMBER 
);
COMMENT ON COLUMN "tBase_Store"."sStore_ID" IS 'ID';
COMMENT ON COLUMN "tBase_Store"."sStore_Name" IS '仓库名称';
COMMENT ON COLUMN "tBase_Store"."sStore_Level1" IS '一级仓库';
COMMENT ON COLUMN "tBase_Store"."sStore_Level2" IS '二级仓库';
COMMENT ON COLUMN "tBase_Store"."sStore_Level3" IS '三级仓库';
COMMENT ON COLUMN "tBase_Store"."sStore_Parent" IS '父级ID';
COMMENT ON COLUMN "tBase_Store"."lStore_Limit" IS '库存预警值';

-- ----------------------------
-- Table structure for tBase_StoreLimit
-- ----------------------------
DROP TABLE "tBase_StoreLimit";
CREATE TABLE "tBase_StoreLimit" (
  "sSLimit_ID" NVARCHAR2(32) NOT NULL ,
  "sSLimit_StoreID" NVARCHAR2(32) ,
  "sSLimit_EquipType" NVARCHAR2(64) ,
  "lSLimit_Num" NUMBER 
);
COMMENT ON COLUMN "tBase_StoreLimit"."sSLimit_ID" IS 'ID';
COMMENT ON COLUMN "tBase_StoreLimit"."sSLimit_StoreID" IS '仓库ID';
COMMENT ON COLUMN "tBase_StoreLimit"."sSLimit_EquipType" IS '器材种类';
COMMENT ON COLUMN "tBase_StoreLimit"."lSLimit_Num" IS '库存预警值';

-- ----------------------------
-- Table structure for tBase_StoreLog
-- ----------------------------
DROP TABLE "tBase_StoreLog";
CREATE TABLE "tBase_StoreLog" (
  "sSLog_ID" NVARCHAR2(32) NOT NULL ,
  "dSLog_CreateDate" DATE ,
  "sSLog_StoreLv1" NVARCHAR2(32) ,
  "sSLog_StoreLv2" NVARCHAR2(32) ,
  "sSLog_StoreLv3" NVARCHAR2(32) ,
  "sSLog_StoreLv4" NVARCHAR2(32) ,
  "sSLog_EquipType" NVARCHAR2(64) ,
  "dSLog_EquipNum" NUMBER 
);
COMMENT ON COLUMN "tBase_StoreLog"."sSLog_ID" IS 'ID';
COMMENT ON COLUMN "tBase_StoreLog"."dSLog_CreateDate" IS '日期';
COMMENT ON COLUMN "tBase_StoreLog"."sSLog_StoreLv1" IS '一级仓库';
COMMENT ON COLUMN "tBase_StoreLog"."sSLog_StoreLv2" IS '二级仓库';
COMMENT ON COLUMN "tBase_StoreLog"."sSLog_StoreLv3" IS '三级仓库';
COMMENT ON COLUMN "tBase_StoreLog"."sSLog_StoreLv4" IS '四级仓库';
COMMENT ON COLUMN "tBase_StoreLog"."sSLog_EquipType" IS '器材分类';
COMMENT ON COLUMN "tBase_StoreLog"."dSLog_EquipNum" IS '器材数量';

-- ----------------------------
-- Table structure for tBase_StoreType
-- ----------------------------
DROP TABLE "tBase_StoreType";
CREATE TABLE "tBase_StoreType" (
  "sStoreType_ID" NVARCHAR2(32) NOT NULL ,
  "sStoreType_Name" NVARCHAR2(64) ,
  "sStoreType_Address" NVARCHAR2(255) ,
  "lStoreType_Lat" NUMBER ,
  "lStoreType_Lng" NUMBER ,
  "sStoreType_Station" NVARCHAR2(64) ,
  "lStoreType_Limit" NUMBER ,
  "sStoreType_MapIcon" NVARCHAR2(64) ,
  "lStoreType_LatDu" NUMBER ,
  "lStoreType_LatFen" NUMBER ,
  "lStoreType_LatMiao" NUMBER ,
  "lStoreType_LngDu" NUMBER ,
  "lStoreType_LngFen" NUMBER ,
  "lStoreType_LngMiao" NUMBER 
);
COMMENT ON COLUMN "tBase_StoreType"."sStoreType_ID" IS 'ID';
COMMENT ON COLUMN "tBase_StoreType"."sStoreType_Name" IS '仓库名称';
COMMENT ON COLUMN "tBase_StoreType"."sStoreType_Address" IS '仓库地址';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_Lat" IS '纬度（°）';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_Lng" IS '经度（°）';
COMMENT ON COLUMN "tBase_StoreType"."sStoreType_Station" IS '归属航标站';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_Limit" IS '库存预警值';
COMMENT ON COLUMN "tBase_StoreType"."sStoreType_MapIcon" IS '地图图标';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_LatDu" IS '纬度（度）';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_LatFen" IS '纬度（分）';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_LatMiao" IS '纬度（秒）';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_LngDu" IS '经度（度）';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_LngFen" IS '经度（分）';
COMMENT ON COLUMN "tBase_StoreType"."lStoreType_LngMiao" IS '经度（秒）';

-- ----------------------------
-- Table structure for tBase_System
-- ----------------------------
DROP TABLE "tBase_System";
CREATE TABLE "tBase_System" (
  "sSys_ID" NVARCHAR2(32) NOT NULL ,
  "sSys_MapService" NVARCHAR2(255) ,
  "lSys_MapLat" NUMBER ,
  "lSys_MapLng" NUMBER ,
  "lSys_MapLevel" NUMBER ,
  "lSys_MapIconWidth" NUMBER ,
  "lSys_MapIconHeight" NUMBER ,
  "lSys_StoreMode" NUMBER ,
  "lSys_StoreValue" NUMBER ,
  "lSys_EquipMode" NUMBER ,
  "lSys_EquipValue" NUMBER ,
  "lSys_StoreMsg" NUMBER ,
  "lSys_EquipMsg" NUMBER ,
  "lSys_EquipRate" NUMBER ,
  "lSys_MapLevelPoint" NUMBER ,
  "lSys_MapIconWidthPoint" NUMBER ,
  "lSys_MapIconHeightPoint" NUMBER ,
  "lSys_MapLevelDef" NUMBER ,
  "lSys_MapIconWidthDef" NUMBER ,
  "lSys_MapIconHeightDef" NUMBER ,
  "lSys_StoreIconWidth" NUMBER ,
  "lSys_StoreIconHeight" NUMBER ,
  "lSys_StoreIconWidthPoint" NUMBER ,
  "lSys_StoreIconHeightPoint" NUMBER ,
  "lSys_StoreIconWidthDef" NUMBER ,
  "lSys_StoreIconHeightDef" NUMBER 
);
COMMENT ON COLUMN "tBase_System"."sSys_ID" IS 'ID';
COMMENT ON COLUMN "tBase_System"."sSys_MapService" IS '地图地址';
COMMENT ON COLUMN "tBase_System"."lSys_MapLat" IS '默认纬度';
COMMENT ON COLUMN "tBase_System"."lSys_MapLng" IS '默认经度';
COMMENT ON COLUMN "tBase_System"."lSys_MapLevel" IS '默认级别';
COMMENT ON COLUMN "tBase_System"."lSys_MapIconWidth" IS '图标宽度';
COMMENT ON COLUMN "tBase_System"."lSys_MapIconHeight" IS '图标高度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreMode" IS '库存盘点模式';
COMMENT ON COLUMN "tBase_System"."lSys_StoreValue" IS '库存盘点模式值';
COMMENT ON COLUMN "tBase_System"."lSys_EquipMode" IS '器材寿命盘点模式';
COMMENT ON COLUMN "tBase_System"."lSys_EquipValue" IS '器材寿命盘点模式值';
COMMENT ON COLUMN "tBase_System"."lSys_StoreMsg" IS '库存不足是否通知管理员 0：否，1：是';
COMMENT ON COLUMN "tBase_System"."lSys_EquipMsg" IS '寿命不足是否通知管理员 0：否，1：是';
COMMENT ON COLUMN "tBase_System"."lSys_EquipRate" IS '不足平均寿命的百分之几';
COMMENT ON COLUMN "tBase_System"."lSys_MapLevelPoint" IS '点图标级别';
COMMENT ON COLUMN "tBase_System"."lSys_MapIconWidthPoint" IS '点图标宽度';
COMMENT ON COLUMN "tBase_System"."lSys_MapIconHeightPoint" IS '点图标高度';
COMMENT ON COLUMN "tBase_System"."lSys_MapLevelDef" IS '默认图标级别';
COMMENT ON COLUMN "tBase_System"."lSys_MapIconWidthDef" IS '默认图标宽度';
COMMENT ON COLUMN "tBase_System"."lSys_MapIconHeightDef" IS '默认图标高度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreIconWidth" IS '仓库图标宽度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreIconHeight" IS '仓库图标高度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreIconWidthPoint" IS '仓库点图标宽度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreIconHeightPoint" IS '仓库点图标高度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreIconWidthDef" IS '仓库默认图标宽度';
COMMENT ON COLUMN "tBase_System"."lSys_StoreIconHeightDef" IS '仓库默认图标高度';

-- ----------------------------
-- Records of tBase_System
-- ----------------------------
INSERT INTO "tBase_System" VALUES ('1', 'http://101.230.249.90:7002/OneMapServer/rest/services/tideport/MapServer', '24.46', '118.1', '6', '20', '50', '1', '22', '1', '22', '1', '1', '90', '6', '20', '20', '10', '24', '24', '20', '20', '20', '0', '24', '24');

-- ----------------------------
-- Table structure for tBase_SystemLog
-- ----------------------------
DROP TABLE "tBase_SystemLog";
CREATE TABLE "tBase_SystemLog" (
  "sSLog_ID" NVARCHAR2(32) NOT NULL ,
  "dSLog_CreateDate" DATE ,
  "sSLog_Type" NVARCHAR2(32) ,
  "sSLog_UserID" NVARCHAR2(32) ,
  "sSLog_IP" NVARCHAR2(255) ,
  "sSLog_UserNick" NVARCHAR2(32) ,
  "sSLog_Uri" NVARCHAR2(255) ,
  "sSLog_Describe" NVARCHAR2(255) ,
  "lSLog_TimeConsume" NUMBER ,
  "sSLog_Method" NVARCHAR2(255) ,
  "sSLog_Request" NVARCHAR2(255) ,
  "sSLog_Response" NVARCHAR2(255) ,
  "sSLog_Exception" NVARCHAR2(255) ,
  "sSLog_Module" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_ID" IS 'ID';
COMMENT ON COLUMN "tBase_SystemLog"."dSLog_CreateDate" IS '日志日期';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Type" IS '日志分类';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_IP" IS 'IP';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_UserNick" IS '用户昵称';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Uri" IS '请求地址';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Describe" IS '日志描述';
COMMENT ON COLUMN "tBase_SystemLog"."lSLog_TimeConsume" IS '方法耗时  ms';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Method" IS '方法名';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Request" IS '请求参数';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Response" IS '响应参数';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Exception" IS '异常信息';
COMMENT ON COLUMN "tBase_SystemLog"."sSLog_Module" IS '模块';

-- ----------------------------
-- Table structure for tBase_ThirdUser
-- ----------------------------
DROP TABLE "tBase_ThirdUser";
CREATE TABLE "tBase_ThirdUser" (
  "sThird_ID" NVARCHAR2(32) NOT NULL ,
  "sThird_NO" NVARCHAR2(32) ,
  "sThird_Secret" NVARCHAR2(32) ,
  "sThird_Name" NVARCHAR2(32) ,
  "lThird_StatusFlag" NUMBER 
);
COMMENT ON COLUMN "tBase_ThirdUser"."sThird_ID" IS 'ID';
COMMENT ON COLUMN "tBase_ThirdUser"."sThird_NO" IS '标识';
COMMENT ON COLUMN "tBase_ThirdUser"."sThird_Secret" IS '密钥（md5）';
COMMENT ON COLUMN "tBase_ThirdUser"."sThird_Name" IS '名称';
COMMENT ON COLUMN "tBase_ThirdUser"."lThird_StatusFlag" IS '状态 0：禁用，1：启用';

-- ----------------------------
-- Table structure for tBase_User
-- ----------------------------
DROP TABLE "tBase_User";
CREATE TABLE "tBase_User" (
  "sUser_ID" NVARCHAR2(32) NOT NULL ,
  "sUser_UserName" NVARCHAR2(32) ,
  "sUser_PassWord" NVARCHAR2(32) ,
  "sUser_Nick" NVARCHAR2(10) ,
  "lUser_StatusFlag" NUMBER ,
  "sUser_GroupID" NVARCHAR2(32) ,
  "sUser_QQ" NVARCHAR2(20) ,
  "sUser_Email" NVARCHAR2(255) ,
  "sUser_Phone" NVARCHAR2(20) ,
  "sUser_ThirdID" NVARCHAR2(32) ,
  "dUser_CreateDate" DATE ,
  "sUser_UserID" NVARCHAR2(32) 
);
COMMENT ON COLUMN "tBase_User"."sUser_ID" IS 'ID';
COMMENT ON COLUMN "tBase_User"."sUser_UserName" IS '用户名';
COMMENT ON COLUMN "tBase_User"."sUser_PassWord" IS '密码（md5）';
COMMENT ON COLUMN "tBase_User"."sUser_Nick" IS '用户昵称';
COMMENT ON COLUMN "tBase_User"."lUser_StatusFlag" IS '状态 0：禁用，1：启用';
COMMENT ON COLUMN "tBase_User"."sUser_GroupID" IS '用户组ID';
COMMENT ON COLUMN "tBase_User"."sUser_QQ" IS 'QQ号';
COMMENT ON COLUMN "tBase_User"."sUser_Email" IS '邮箱';
COMMENT ON COLUMN "tBase_User"."sUser_Phone" IS '手机号';
COMMENT ON COLUMN "tBase_User"."sUser_ThirdID" IS '第三方ID';
COMMENT ON COLUMN "tBase_User"."dUser_CreateDate" IS '创建日期';
COMMENT ON COLUMN "tBase_User"."sUser_UserID" IS '创建人ID';

-- ----------------------------
-- Records of tBase_User
-- ----------------------------
INSERT INTO "tBase_User" VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tBase_UserAid
-- ----------------------------
DROP TABLE "tBase_UserAid";
CREATE TABLE "tBase_UserAid" (
  "sUserAid_ID" NVARCHAR2(32) NOT NULL ,
  "sUserAid_UserID" NVARCHAR2(32) ,
  "sUserAid_AidID" NVARCHAR2(32) 
);
COMMENT ON COLUMN "tBase_UserAid"."sUserAid_ID" IS 'ID';
COMMENT ON COLUMN "tBase_UserAid"."sUserAid_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_UserAid"."sUserAid_AidID" IS '航标ID';

-- ----------------------------
-- Table structure for tBase_UserLog
-- ----------------------------
DROP TABLE "tBase_UserLog";
CREATE TABLE "tBase_UserLog" (
  "sLog_ID" NVARCHAR2(32) NOT NULL ,
  "dLog_Date" DATE ,
  "sLog_Type" NVARCHAR2(32) ,
  "sLog_UserID" NVARCHAR2(32) ,
  "sLog_IP" NVARCHAR2(32) ,
  "sLog_Content" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tBase_UserLog"."sLog_ID" IS 'ID';
COMMENT ON COLUMN "tBase_UserLog"."dLog_Date" IS '日志日期';
COMMENT ON COLUMN "tBase_UserLog"."sLog_Type" IS '日志分类';
COMMENT ON COLUMN "tBase_UserLog"."sLog_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_UserLog"."sLog_IP" IS 'IP';
COMMENT ON COLUMN "tBase_UserLog"."sLog_Content" IS '日志内容';

-- ----------------------------
-- Table structure for tBase_UserMenu
-- ----------------------------
DROP TABLE "tBase_UserMenu";
CREATE TABLE "tBase_UserMenu" (
  "sUserMenu_ID" NVARCHAR2(32) NOT NULL ,
  "sUserMenu_UserID" NVARCHAR2(32) ,
  "sUserMenu_MenuID" NVARCHAR2(32) ,
  "sUserMenu_MenuFunID" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tBase_UserMenu"."sUserMenu_ID" IS 'ID';
COMMENT ON COLUMN "tBase_UserMenu"."sUserMenu_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_UserMenu"."sUserMenu_MenuID" IS '菜单ID';
COMMENT ON COLUMN "tBase_UserMenu"."sUserMenu_MenuFunID" IS '菜单功能ID 多个逗号分隔';

-- ----------------------------
-- Table structure for tBase_UserPosition
-- ----------------------------
DROP TABLE "tBase_UserPosition";
CREATE TABLE "tBase_UserPosition" (
  "sUserPosition_ID" NVARCHAR2(32) NOT NULL ,
  "sUserPosition_UserID" NVARCHAR2(32) ,
  "sUserPosition_Position" NVARCHAR2(1000) 
);
COMMENT ON COLUMN "tBase_UserPosition"."sUserPosition_ID" IS 'ID';
COMMENT ON COLUMN "tBase_UserPosition"."sUserPosition_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_UserPosition"."sUserPosition_Position" IS '样式';

-- ----------------------------
-- Records of tBase_UserPosition
-- ----------------------------
INSERT INTO "tBase_UserPosition" VALUES ('1', '0', '[{"id":"1","x":4,"y":1,"sizex":6,"sizey":1,"unresize":true,"undrag":true},{"id":"2","x":1,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"3","x":10,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"chartAidMap","x":4,"y":2,"sizex":6,"sizey":5},{"id":"msgList","x":10,"y":2,"sizex":3,"sizey":2},{"id":"chartAid","x":1,"y":2,"sizex":3,"sizey":2},{"id":"chartEquipType","x":1,"y":4,"sizex":3,"sizey":3},{"id":"aidList","x":10,"y":4,"sizex":3,"sizey":3},{"id":"chartStoreTime","x":1,"y":7,"sizex":6,"sizey":3},{"id":"chartStoreInout","x":7,"y":7,"sizex":6,"sizey":3}]');
INSERT INTO "tBase_UserPosition" VALUES ('2', '1', '[{"id":"1","x":4,"y":1,"sizex":6,"sizey":1,"unresize":true,"undrag":true},{"id":"2","x":1,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"3","x":10,"y":1,"sizex":3,"sizey":1,"unresize":true,"undrag":true},{"id":"chartAidMap","x":4,"y":2,"sizex":6,"sizey":5},{"id":"msgList","x":10,"y":2,"sizex":3,"sizey":2},{"id":"chartAid","x":1,"y":2,"sizex":3,"sizey":2},{"id":"chartEquipType","x":1,"y":4,"sizex":3,"sizey":3},{"id":"aidList","x":10,"y":4,"sizex":3,"sizey":3},{"id":"chartStoreTime","x":1,"y":7,"sizex":6,"sizey":3},{"id":"chartStoreInout","x":7,"y":7,"sizex":6,"sizey":3}]');

-- ----------------------------
-- Table structure for tBase_UserStation
-- ----------------------------
DROP TABLE "tBase_UserStation";
CREATE TABLE "tBase_UserStation" (
  "sUserStation_ID" NVARCHAR2(32) NOT NULL ,
  "sUserStation_UserID" NVARCHAR2(32) ,
  "sUserStation_Station" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tBase_UserStation"."sUserStation_ID" IS 'ID';
COMMENT ON COLUMN "tBase_UserStation"."sUserStation_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_UserStation"."sUserStation_Station" IS '航标站标识';

-- ----------------------------
-- Table structure for tBase_UserStore
-- ----------------------------
DROP TABLE "tBase_UserStore";
CREATE TABLE "tBase_UserStore" (
  "sUserStore_ID" NVARCHAR2(32) NOT NULL ,
  "sUserStore_UserID" NVARCHAR2(32) ,
  "sUserStore_StoreLv1ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv2ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv3ID" NVARCHAR2(32) ,
  "sUserStore_StoreLv4ID" NVARCHAR2(32) 
);
COMMENT ON COLUMN "tBase_UserStore"."sUserStore_ID" IS 'ID';
COMMENT ON COLUMN "tBase_UserStore"."sUserStore_UserID" IS '用户ID';
COMMENT ON COLUMN "tBase_UserStore"."sUserStore_StoreLv1ID" IS '一级仓库ID';
COMMENT ON COLUMN "tBase_UserStore"."sUserStore_StoreLv2ID" IS '二级仓库ID';
COMMENT ON COLUMN "tBase_UserStore"."sUserStore_StoreLv3ID" IS '三级仓库ID';
COMMENT ON COLUMN "tBase_UserStore"."sUserStore_StoreLv4ID" IS '四级仓库ID';

-- ----------------------------
-- Table structure for tEquip_Ais
-- ----------------------------
DROP TABLE "tEquip_Ais";
CREATE TABLE "tEquip_Ais" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sAis_MMSIX" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tEquip_Ais"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_Ais"."sAis_MMSIX" IS 'MMSIX号';

-- ----------------------------
-- Table structure for tEquip_Battery
-- ----------------------------
DROP TABLE "tEquip_Battery";
CREATE TABLE "tEquip_Battery" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sBattery_NO" NVARCHAR2(255) ,
  "sBattery_Type" NVARCHAR2(64) ,
  "lBattery_Volt" NUMBER ,
  "lBattery_Watt" NUMBER ,
  "sBattery_Connect" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tEquip_Battery"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_Battery"."sBattery_NO" IS '编码';
COMMENT ON COLUMN "tEquip_Battery"."sBattery_Type" IS '种类';
COMMENT ON COLUMN "tEquip_Battery"."lBattery_Volt" IS '工作电压（V）';
COMMENT ON COLUMN "tEquip_Battery"."lBattery_Watt" IS '容量（W）';
COMMENT ON COLUMN "tEquip_Battery"."sBattery_Connect" IS '连接方式';

-- ----------------------------
-- Table structure for tEquip_Lamp
-- ----------------------------
DROP TABLE "tEquip_Lamp";
CREATE TABLE "tEquip_Lamp" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sLamp_NO" NVARCHAR2(255) ,
  "sLamp_Brand" NVARCHAR2(255) ,
  "sLamp_Type" NVARCHAR2(64) ,
  "lLamp_InputVolt" NUMBER ,
  "lLamp_Watt" NUMBER ,
  "sLamp_Lens" NVARCHAR2(64) ,
  "lLamp_TelemetryFlag" NUMBER ,
  "sLamp_Telemetry" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tEquip_Lamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_Lamp"."sLamp_NO" IS '编码';
COMMENT ON COLUMN "tEquip_Lamp"."sLamp_Brand" IS '品牌';
COMMENT ON COLUMN "tEquip_Lamp"."sLamp_Type" IS '类型';
COMMENT ON COLUMN "tEquip_Lamp"."lLamp_InputVolt" IS '输入电压（V）';
COMMENT ON COLUMN "tEquip_Lamp"."lLamp_Watt" IS '功率（W）';
COMMENT ON COLUMN "tEquip_Lamp"."sLamp_Lens" IS '透镜形状';
COMMENT ON COLUMN "tEquip_Lamp"."lLamp_TelemetryFlag" IS '遥测遥控接口 0：否，1：是';
COMMENT ON COLUMN "tEquip_Lamp"."sLamp_Telemetry" IS '遥测接口类型';

-- ----------------------------
-- Table structure for tEquip_Radar
-- ----------------------------
DROP TABLE "tEquip_Radar";
CREATE TABLE "tEquip_Radar" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sRadar_NO" NVARCHAR2(64) ,
  "sRadar_Band" NVARCHAR2(64) 
);
COMMENT ON COLUMN "tEquip_Radar"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_Radar"."sRadar_NO" IS '编码';
COMMENT ON COLUMN "tEquip_Radar"."sRadar_Band" IS '波段';

-- ----------------------------
-- Table structure for tEquip_SolarEnergy
-- ----------------------------
DROP TABLE "tEquip_SolarEnergy";
CREATE TABLE "tEquip_SolarEnergy" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sSolar_NO" NVARCHAR2(255) ,
  "sSolar_Type" NVARCHAR2(64) ,
  "lSolar_Volt" NUMBER ,
  "lSolar_Watt" NUMBER ,
  "sSolar_Connect" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tEquip_SolarEnergy"."sEquip_ID" IS 'ID';
COMMENT ON COLUMN "tEquip_SolarEnergy"."sSolar_NO" IS '编码';
COMMENT ON COLUMN "tEquip_SolarEnergy"."sSolar_Type" IS '种类';
COMMENT ON COLUMN "tEquip_SolarEnergy"."lSolar_Volt" IS '额定电压（V）';
COMMENT ON COLUMN "tEquip_SolarEnergy"."lSolar_Watt" IS '功率（W）';
COMMENT ON COLUMN "tEquip_SolarEnergy"."sSolar_Connect" IS '连接方式';

-- ----------------------------
-- Table structure for tEquip_SpareLamp
-- ----------------------------
DROP TABLE "tEquip_SpareLamp";
CREATE TABLE "tEquip_SpareLamp" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "lSLamp_Watt" NUMBER 
);
COMMENT ON COLUMN "tEquip_SpareLamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_SpareLamp"."lSLamp_Watt" IS '功率（W）';

-- ----------------------------
-- Table structure for tEquip_Telemetry
-- ----------------------------
DROP TABLE "tEquip_Telemetry";
CREATE TABLE "tEquip_Telemetry" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "sTelemetry_Mode" NVARCHAR2(64) ,
  "lTelemetry_Watt" NUMBER ,
  "sTelemetry_NO" NVARCHAR2(255) ,
  "lTelemetry_Volt" NUMBER ,
  "sTelemetry_SIM" NVARCHAR2(255) 
);
COMMENT ON COLUMN "tEquip_Telemetry"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_Telemetry"."sTelemetry_Mode" IS '遥控遥测方式';
COMMENT ON COLUMN "tEquip_Telemetry"."lTelemetry_Watt" IS '功率（W）';
COMMENT ON COLUMN "tEquip_Telemetry"."sTelemetry_NO" IS '遥控遥测编码';
COMMENT ON COLUMN "tEquip_Telemetry"."lTelemetry_Volt" IS '电压（V）';
COMMENT ON COLUMN "tEquip_Telemetry"."sTelemetry_SIM" IS 'SIM(MMIS) 卡号';

-- ----------------------------
-- Table structure for tEquip_ViceLamp
-- ----------------------------
DROP TABLE "tEquip_ViceLamp";
CREATE TABLE "tEquip_ViceLamp" (
  "sEquip_ID" NVARCHAR2(32) NOT NULL ,
  "lVLamp_Watt" NUMBER 
);
COMMENT ON COLUMN "tEquip_ViceLamp"."sEquip_ID" IS '器材ID';
COMMENT ON COLUMN "tEquip_ViceLamp"."lVLamp_Watt" IS '功率（W）';




-- ----------------------------
-- Primary Key structure for table tBase_Aid
-- ----------------------------
ALTER TABLE "tBase_Aid" ADD CONSTRAINT "SYS_C0012861" PRIMARY KEY ("sAid_ID");


-- ----------------------------
-- Primary Key structure for table tBase_AidEquip
-- ----------------------------
ALTER TABLE "tBase_AidEquip" ADD CONSTRAINT "SYS_C0012908" PRIMARY KEY ("sAidEquip_ID");

-- ----------------------------
-- Primary Key structure for table tBase_AidMapIcon
-- ----------------------------
ALTER TABLE "tBase_AidMapIcon" ADD CONSTRAINT "SYS_C0018045" PRIMARY KEY ("sAidIcon_ID");

-- ----------------------------
-- Primary Key structure for table tBase_AidTypeMapIcon
-- ----------------------------
ALTER TABLE "tBase_AidTypeMapIcon" ADD CONSTRAINT "SYS_C0018049" PRIMARY KEY ("sAidTypeIcon_ID");


-- ----------------------------
-- Primary Key structure for table tBase_App
-- ----------------------------
ALTER TABLE "tBase_App" ADD CONSTRAINT "SYS_C0113800" PRIMARY KEY ("sApp_ID");

-- ----------------------------
-- Primary Key structure for table tBase_AppMenu
-- ----------------------------
ALTER TABLE "tBase_AppMenu" ADD CONSTRAINT "SYS_C0016114" PRIMARY KEY ("sAppMenu_ID");



-- ----------------------------
-- Primary Key structure for table tBase_Dict
-- ----------------------------
ALTER TABLE "tBase_Dict" ADD CONSTRAINT "SYS_C0012842" PRIMARY KEY ("sDict_ID");

-- ----------------------------
-- Primary Key structure for table tBase_DictType
-- ----------------------------
ALTER TABLE "tBase_DictType" ADD CONSTRAINT "SYS_C0012843" PRIMARY KEY ("sDictType_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Equip
-- ----------------------------
ALTER TABLE "tBase_Equip" ADD CONSTRAINT "SYS_C0012881" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Primary Key structure for table tBase_EquipLife
-- ----------------------------
ALTER TABLE "tBase_EquipLife" ADD CONSTRAINT "SYS_C0022120" PRIMARY KEY ("sELife_ID");

-- ----------------------------
-- Primary Key structure for table tBase_EquipLog
-- ----------------------------
ALTER TABLE "tBase_EquipLog" ADD CONSTRAINT "SYS_C0012888" PRIMARY KEY ("sELog_ID");


-- ----------------------------
-- Primary Key structure for table tBase_Group
-- ----------------------------
ALTER TABLE "tBase_Group" ADD CONSTRAINT "SYS_C0012844" PRIMARY KEY ("sGroup_ID");

-- ----------------------------
-- Primary Key structure for table tBase_GroupMenu
-- ----------------------------
ALTER TABLE "tBase_GroupMenu" ADD CONSTRAINT "SYS_C0012845" PRIMARY KEY ("sGroupMenu_ID");



-- ----------------------------
-- Primary Key structure for table tBase_Menu
-- ----------------------------
ALTER TABLE "tBase_Menu" ADD CONSTRAINT "SYS_C0012846" PRIMARY KEY ("sMenu_ID");

-- ----------------------------
-- Primary Key structure for table tBase_MenuFun
-- ----------------------------
ALTER TABLE "tBase_MenuFun" ADD CONSTRAINT "SYS_C0014207" PRIMARY KEY ("sMFun_ID");

-- ----------------------------
-- Primary Key structure for table tBase_MenuInterface
-- ----------------------------
ALTER TABLE "tBase_MenuInterface" ADD CONSTRAINT "SYS_C0012847" PRIMARY KEY ("sInterface_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Message
-- ----------------------------
ALTER TABLE "tBase_Message" ADD CONSTRAINT "SYS_C0012916" PRIMARY KEY ("sMsg_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Nfc
-- ----------------------------
ALTER TABLE "tBase_Nfc" ADD CONSTRAINT "SYS_C0012897" PRIMARY KEY ("sNfc_ID");

-- ----------------------------
-- Primary Key structure for table tBase_Store
-- ----------------------------
ALTER TABLE "tBase_Store" ADD CONSTRAINT "SYS_C0012857" PRIMARY KEY ("sStore_ID");

-- ----------------------------
-- Primary Key structure for table tBase_StoreLimit
-- ----------------------------
ALTER TABLE "tBase_StoreLimit" ADD CONSTRAINT "SYS_C0022484" PRIMARY KEY ("sSLimit_ID");

-- ----------------------------
-- Primary Key structure for table tBase_StoreLog
-- ----------------------------
ALTER TABLE "tBase_StoreLog" ADD CONSTRAINT "SYS_C0019974" PRIMARY KEY ("sSLog_ID");


-- ----------------------------
-- Primary Key structure for table tBase_StoreType
-- ----------------------------
ALTER TABLE "tBase_StoreType" ADD CONSTRAINT "SYS_C0012853" PRIMARY KEY ("sStoreType_ID");


-- ----------------------------
-- Primary Key structure for table tBase_System
-- ----------------------------
ALTER TABLE "tBase_System" ADD CONSTRAINT "SYS_C0017770" PRIMARY KEY ("sSys_ID");

-- ----------------------------
-- Primary Key structure for table tBase_SystemLog
-- ----------------------------
ALTER TABLE "tBase_SystemLog" ADD CONSTRAINT "SYS_C0015543" PRIMARY KEY ("sSLog_ID");


-- ----------------------------
-- Primary Key structure for table tBase_ThirdUser
-- ----------------------------
ALTER TABLE "tBase_ThirdUser" ADD CONSTRAINT "SYS_C0012848" PRIMARY KEY ("sThird_ID");


-- ----------------------------
-- Primary Key structure for table tBase_User
-- ----------------------------
ALTER TABLE "tBase_User" ADD CONSTRAINT "SYS_C0012849" PRIMARY KEY ("sUser_ID");


-- ----------------------------
-- Primary Key structure for table tBase_UserAid
-- ----------------------------
ALTER TABLE "tBase_UserAid" ADD CONSTRAINT "SYS_C0012902" PRIMARY KEY ("sUserAid_ID");



-- ----------------------------
-- Primary Key structure for table tBase_UserLog
-- ----------------------------
ALTER TABLE "tBase_UserLog" ADD CONSTRAINT "SYS_C0012850" PRIMARY KEY ("sLog_ID");

-- ----------------------------
-- Primary Key structure for table tBase_UserMenu
-- ----------------------------
ALTER TABLE "tBase_UserMenu" ADD CONSTRAINT "SYS_C0012851" PRIMARY KEY ("sUserMenu_ID");


-- ----------------------------
-- Primary Key structure for table tBase_UserPosition
-- ----------------------------
ALTER TABLE "tBase_UserPosition" ADD CONSTRAINT "SYS_C0022754" PRIMARY KEY ("sUserPosition_ID");


-- ----------------------------
-- Primary Key structure for table tBase_UserStation
-- ----------------------------
ALTER TABLE "tBase_UserStation" ADD CONSTRAINT "SYS_C0022036" PRIMARY KEY ("sUserStation_ID");

-- ----------------------------
-- Primary Key structure for table tBase_UserStore
-- ----------------------------
ALTER TABLE "tBase_UserStore" ADD CONSTRAINT "SYS_C0021700" PRIMARY KEY ("sUserStore_ID");

-- ----------------------------
-- Primary Key structure for table tEquip_Ais
-- ----------------------------
ALTER TABLE "tEquip_Ais" ADD CONSTRAINT "SYS_C0018834" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Primary Key structure for table tEquip_Battery
-- ----------------------------
ALTER TABLE "tEquip_Battery" ADD CONSTRAINT "SYS_C0018845" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_Lamp
-- ----------------------------
ALTER TABLE "tEquip_Lamp" ADD CONSTRAINT "SYS_C0012866" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Primary Key structure for table tEquip_Radar
-- ----------------------------
ALTER TABLE "tEquip_Radar" ADD CONSTRAINT "SYS_C0018837" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_SolarEnergy
-- ----------------------------
ALTER TABLE "tEquip_SolarEnergy" ADD CONSTRAINT "SYS_C0012872" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Primary Key structure for table tEquip_SpareLamp
-- ----------------------------
ALTER TABLE "tEquip_SpareLamp" ADD CONSTRAINT "SYS_C0018849" PRIMARY KEY ("sEquip_ID");


-- ----------------------------
-- Primary Key structure for table tEquip_Telemetry
-- ----------------------------
ALTER TABLE "tEquip_Telemetry" ADD CONSTRAINT "SYS_C0018841" PRIMARY KEY ("sEquip_ID");

-- ----------------------------
-- Primary Key structure for table tEquip_ViceLamp
-- ----------------------------
ALTER TABLE "tEquip_ViceLamp" ADD CONSTRAINT "SYS_C0018854" PRIMARY KEY ("sEquip_ID");





-- ----------------------------
-- Indexes structure for table tBase_AppMenu
-- ----------------------------
CREATE INDEX "AppMenu_AppID_Index"
  ON "tBase_AppMenu" ("sAppMenu_AppID" ASC);

-- ----------------------------
-- Indexes structure for table tBase_GroupMenu
-- ----------------------------
CREATE INDEX "GroupMenu_GroupID_Index"
  ON "tBase_GroupMenu" ("sGroupMenu_GroupID" ASC);

-- ----------------------------
-- Indexes structure for table tBase_UserAid
-- ----------------------------
CREATE INDEX "UserAid_UserID_Index"
  ON "tBase_UserAid" ("sUserAid_UserID" ASC);

-- ----------------------------
-- Indexes structure for table tBase_UserMenu
-- ----------------------------
CREATE INDEX "UserMenu_UserID_Index"
  ON "tBase_UserMenu" ("sUserMenu_UserID" ASC);

-- ----------------------------
-- Indexes structure for table tBase_UserStore
-- ----------------------------
CREATE INDEX "UserStore_UserID_Index"
  ON "tBase_UserStore" ("sUserStore_UserID" ASC);



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

