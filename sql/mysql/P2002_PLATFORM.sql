-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('10002', '组件管理', 'SYSTEM', NULL, 'MENU', null, null, 'icon-plugin32', '1', '0', 0);

-- 模块
INSERT INTO SYS_MODULE(MODULE_ID, MODULE_NAME, SEQ) 
VALUES('M1002', '组件管理', 2);

-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, STATUS, IS_LEAF, SEQ)
VALUES('1000201', '基础组件', 'SYSTEM', '10002', 'MENU', null, null, '1', '0', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F100201', '基础组件', 'M1002', NULL, 0);

-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020101', '属性管理', 'SYSTEM', '1000201', 'PAGE', 'jsp/xianfeng/platform/base/property_list.jsp', null, 'icon-prop32', '1', '1', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020101', '属性管理', 'M1002', 'F100201', 0);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010101', '查询', 'jsp/xianfeng/platform/base/property_list.jsp', 'F10020101', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010102', '新增', 'platform.property@insert', 'F10020101', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010103', '修改', 'platform.property@update', 'F10020101', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010104', '删除', 'platform.property@delete', 'F10020101', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010101');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010102');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010103');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010104');

-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020102', '字典管理', 'SYSTEM', '1000201', 'PAGE', 'jsp/xianfeng/platform/base/dict_list.jsp', null, 'icon-dict32', '1', '1', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020102', '字典管理', 'M1002', 'F100201', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010201', '查询', 'jsp/xianfeng/platform/base/dict_list.jsp', 'F10020102', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010202', '新增', 'platform.dict@insert', 'F10020102', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010203', '修改', 'platform.dict@update', 'F10020102', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010204', '删除', 'platform.dict@delete', 'F10020102', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010201');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010202');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010203');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010204');

-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020103', '流水号管理', 'SYSTEM', '1000201', 'PAGE', 'jsp/xianfeng/platform/base/serialNo_list.jsp', null, 'icon-serial32', '1', '1', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020103', '流水号管理', 'M1002', 'F100201', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010301', '查询', 'jsp/xianfeng/platform/base/serialNo_list.jsp', 'F10020103', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010302', '新增', 'platform.serialNo@insert', 'F10020103', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010303', '修改', 'platform.serialNo@update', 'F10020103', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010304', '删除', 'platform.serialNo@delete', 'F10020103', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010301');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010302');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010303');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010304');

-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020104', '通讯录管理', 'SYSTEM', '1000201', 'PAGE', 'jsp/xianfeng/platform/base/linkRec_list.jsp', null, 'icon-phone32', '1', '1', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020104', '通讯录管理', 'M1002', 'F100201', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002010401', '查询', 'jsp/xianfeng/platform/base/linkRec_list.jsp', 'F10020104', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002010401');


-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, STATUS, IS_LEAF, SEQ)
VALUES('1000204', '组织机构', 'SYSTEM', '10002', 'MENU', null, null, '1', '0', 0);

INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020401', '组织机构类型', 'SYSTEM', '1000204', 'PAGE', 'jsp/xianfeng/platform/organ/organType_list.jsp', null, 'icon-typemgr32', '1', '1', 0);

INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020402', '组织机构管理', 'SYSTEM', '1000204', 'PAGE', 'jsp/xianfeng/platform/organ/organMgr_tree.jsp', null, 'icon-organization32', '1', '1', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F100204', '组织机构', 'M1002', NULL, 1);

INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020401', '组织机构类型', 'M1002', 'F100204', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040101', '查询', 'jsp/xianfeng/platform/organ/organType_list.jsp', 'F10020401', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040102', '新增', 'platform.organType@insert', 'F10020401', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040103', '修改', 'platform.organType@update', 'F10020401', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040104', '删除', 'platform.organType@delete', 'F10020401', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040101');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040102');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040103');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040104');

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020402', '组织机构管理', 'M1002', 'F100204', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040201', '查询', 'jsp/xianfeng/platform/organ/organMgr_tree.jsp', 'F10020402', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040202', '新增', 'platform.organ@insert', 'F10020402', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040203', '修改', 'platform.organ@update', 'F10020402', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002040204', '删除', 'platform.organ@delete', 'F10020402', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040201');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040202');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040203');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002040204');

-- 菜单
INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, STATUS, IS_LEAF, SEQ)
VALUES('1000205', '行政区划', 'SYSTEM', '10002', 'MENU', null, null, '1', '0', 0);

INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020501', '行政区划类型', 'SYSTEM', '1000205', 'PAGE', 'jsp/xianfeng/platform/base/cantType_list.jsp', null, 'icon-typemgr32', '1', '1', 0);

INSERT INTO SYS_MENU (MENU_ID, MENU_NAME, TYPE_ID, PARENT_ID, LINK_TYPE, MENU_URL, OPEN_TYPE, MENU_ICON2, STATUS, IS_LEAF, SEQ)
VALUES('100020502', '行政区划管理', 'SYSTEM', '1000205', 'PAGE', 'jsp/xianfeng/platform/base/cant_list.jsp', null, 'icon-earth32', '1', '1', 0);

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F100205', '行政区划', 'M1002', NULL, 1);

INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020501', '行政区划类型', 'M1002', 'F100205', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050101', '查询', 'jsp/xianfeng/platform/base/cantType_list.jsp', 'F10020501', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050102', '新增', 'platform.cantType@insert', 'F10020501', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050103', '修改', 'platform.cantType@update', 'F10020501', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050104', '删除', 'platform.cantType@delete', 'F10020501', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050101');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050102');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050103');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050104');

-- 功能
INSERT INTO SYS_FUNCTION(FUNCTION_ID, FUNCTION_NAME, MODULE_ID, PARENT_ID, SEQ)
VALUES('F10020502', '行政区划管理', 'M1002', 'F100205', 1);

-- 操作
INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050201', '查询', 'jsp/xianfeng/platform/base/cant_list.jsp', 'F10020502', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050202', '新增', 'platform.cant@insert', 'F10020502', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050203', '修改', 'platform.cant@update', 'F10020502', 0);

INSERT INTO SYS_OPERATION (OPERATION_ID, OPERATION_NAME, TARGET, FUNCTION_ID, SEQ)
VALUES('O1002050204', '删除', 'platform.cant@delete', 'F10020502', 0);

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050201');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050202');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050203');

INSERT INTO SYS_ROLE_OPERATION(ROLE_ID, OPERATION_ID)
VALUES('SUPERADMIN', 'O1002050204');
