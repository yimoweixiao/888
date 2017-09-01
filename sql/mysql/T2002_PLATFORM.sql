-- 属性
INSERT INTO SYS_PROP (PROP_ID, PROP_VALUE, PROP_DESC, EDIT_TIME, SEQ)
VALUES('System.Demo.Hello', '你好', '测试属性', NOW(), 0);

-- 字典
INSERT INTO SYS_DICT(DICT_CODE, DICT_NAME, EDIT_TIME)
VALUES('DEMO_DICT', '测试字典', NOW());

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM01', '字典项01', 'DEMO_DICT', NULL, NOW(), 0, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM02', '字典项02', 'DEMO_DICT', NULL, NOW(), 1, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM0201', '字典项0201', 'DEMO_DICT', 'ITEM02', NOW(), 0, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM03', '字典项03', 'DEMO_DICT', NULL, NOW(), 2, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM0301', '字典项0301', 'DEMO_DICT', 'ITEM03', NOW(), 0, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM030101', '字典项030101', 'DEMO_DICT', 'ITEM0301', NOW(), 0, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM0302', '字典项0302', 'DEMO_DICT', 'ITEM03', NOW(), 1, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM030201', '字典项030201', 'DEMO_DICT', 'ITEM0302', NOW(), 0, '1');

INSERT INTO SYS_DICT_ITEM(ITEM_CODE, ITEM_VALUE, DICT_CODE, PARENT_CODE, EDIT_TIME, SEQ, STATUS)
VALUES('ITEM030202', '字典项030201', 'DEMO_DICT', 'ITEM0302', NOW(), 1, '1');

-- 流水号
INSERT INTO SYS_SERIAL_NO(NO_CODE, NO_NAME, NO_PREFIX, NO_SUFFIX, NO_VALUE, NO_LENGTH, NO_TYPE, EDIT_TIME)
VALUES('SYS_HELLO_NO', '测试流水号', NULL, NULL, 1000, 6, NULL, NOW());

INSERT INTO SYS_SERIAL_NO(NO_CODE, NO_NAME, NO_PREFIX, NO_SUFFIX, NO_VALUE, NO_LENGTH, NO_TYPE, EDIT_TIME)
VALUES('SYS_DEMO_NO', '测试流水号', 'YYYYMMDD第', '号', 1, 14, 'DAY', NOW());

-- 通讯录
INSERT INTO SYS_LINK (ID, TARGET, NAME, CORP_NAME, POSTCODE, ADDRESS, PHONE, FAX, MOBILE, EMAIL, QQ, EDIT_TIME, CREATE_TIME)
VALUES('100000000', NULL, '管理员', '公司', '250101', '山东省济南市高新区舜华路1000号', '029-86168214 201', '029-86168214 103', '13800001111', 'programmer.wenlong@gmail.com', '791747152', NOW(), NOW());

INSERT INTO SYS_LINK (ID, TARGET, NAME, CORP_NAME, POSTCODE, ADDRESS, PHONE, FAX, MOBILE, EMAIL, QQ, EDIT_TIME, CREATE_TIME)
VALUES('100000001', NULL, '测试', '公司', '250101', '山东省济南市高新区舜华路1000号', '029-86168214 201', '029-86168214 103', '13800001111', 'programmer.wenlong@gmail.com', '791747152', NOW(), NOW());

-- 用户
INSERT INTO SYS_USER (USER_ID, USER_TYPE, USER_NAME, PASSWORD, STATUS, EDIT_TIME,QUESTION, ANSWER, REGIST_TIME)
VALUES('TEST', 'USER', '测试', '1', '1', NOW(), NULL, NULL, NOW());


-- 组织机构
DELETE FROM SYS_ORGAN;
INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000001', '科技有限公司', 'CORP', '公司', NULL, 0, '1');

INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000002', '山东分公司', 'CORP', '科技有限公司山东分公司', '10000001', 0, '1');

INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000003', '研发部', 'DEPT', '科技有限公司山东分公司研发部',  '10000002', 0, '1');

INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000004', '经理', 'POST', '科技有限公司山东分公司研发部经理', '10000003', 0, '1');

INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000005', '员工', 'POST', '科技有限公司山东分公司研发部员工', '10000003', 0, '1');

INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000006', '王经理', 'EMP', '科技有限公司山东分公司研发部经理王经理', '10000004', 0, '1');

INSERT INTO SYS_ORGAN(ORGAN_ID, ORGAN_NAME, TYPE_ID, FULL_NAME, PARENT_ID, SEQ ,STATUS)
VALUES('10000007', '李工', 'EMP', '科技有限公司山东分公司研发部经理李工', '10000005', 0, '1');