
alter table "tBase_Message" add ( "sMsg_Reason" NVARCHAR2(64));

alter table "tBase_Dict" modify ( "sDict_Name" NVARCHAR2(255));


INSERT INTO "tBase_DictType" VALUES ('108', 'StoreMapIcon', '��ͼͼ��ֿ�', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('804', 'MsgReason', '��Ϣԭ��', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('204', 'EquipIcon', '����ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('803', 'MsgLabel', '��Ϣ�Զ����ǩ', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('801', 'MsgType', '��Ϣ����', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('802', 'MsgStatus', '��Ϣ״̬', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('101', 'AidStation', '����վ', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('102', 'AidType', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('103', 'AidLighting', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('104', 'AidMark', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('105', 'AidIcon', '����ICON', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('201', 'EquipType', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('202', 'EquipStatus', '����״̬', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('601', 'SystemLogType', 'ϵͳ��־����', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('203', 'EquipLogType', '������־����', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('106', 'AidStatus', '����״̬', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('107', 'MapIcon', '��ͼͼ�꺽��', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('205', 'EquipAisMMSIX', 'AIS MMSIX��', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('206', 'EquipRadarNO', '�״�Ӧ��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('207', 'EquipRadarBand', '�״�Ӧ��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('208', 'EquipBatteryType', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('209', 'EquipTelemetryMode', 'ң��ң�ⷽʽ', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('210', 'EquipSolarEnergyType', '̫���ܰ�����', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('211', 'EquipManufacturer', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('212', 'EquipLampTelemetry', 'ң��ӿ�����', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('213', 'EquipLampType', '��������', NULL, NULL, NULL, NULL, '1');
INSERT INTO "tBase_DictType" VALUES ('214', 'EquipLampLens', '͸����״', NULL, NULL, NULL, NULL, '1');
