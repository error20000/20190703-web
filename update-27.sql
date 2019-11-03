
INSERT INTO "tBase_DictType" VALUES ('805', 'MsgSource', '消息来源', NULL, NULL, NULL, NULL, '1');

alter table "tBase_Message" add ( "sMsg_Source" NVARCHAR2(64));