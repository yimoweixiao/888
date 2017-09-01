DROP TABLE IF EXISTS SYS_CANT_TMP;
CREATE TABLE SYS_CANT_TMP(
	CODE VARCHAR(8),
	NAME VARCHAR(32),
	PARENT_CODE VARCHAR(10),
	FULL_NAME   VARCHAR(200),
	CANT_LEVEL  INT(3),
	PRIMARY KEY(CODE)
);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150124', '清水河县', '150100', '内蒙古自治区呼和浩特市清水河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150200', '包头市', '150000', '内蒙古自治区包头市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150205', '石拐区', '150200', '内蒙古自治区包头市石拐区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150300', '乌海市', '150000', '内蒙古自治区乌海市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150302', '海勃湾区', '150300', '内蒙古自治区乌海市海勃湾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150304', '乌达区', '150300', '内蒙古自治区乌海市乌达区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150400', '赤峰市', '150000', '内蒙古自治区赤峰市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150404', '松山区', '150400', '内蒙古自治区赤峰市松山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150428', '喀喇沁旗', '150400', '内蒙古自治区赤峰市喀喇沁旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150429', '宁城县', '150400', '内蒙古自治区赤峰市宁城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150523', '开鲁县', '150500', '内蒙古自治区通辽市开鲁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150525', '奈曼旗', '150500', '内蒙古自治区通辽市奈曼旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150600', '鄂尔多斯市', '150000', '内蒙古自治区鄂尔多斯市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150602', '东胜区', '150600', '内蒙古自治区鄂尔多斯市东胜区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150627', '伊金霍洛旗', '150600', '内蒙古自治区鄂尔多斯市伊金霍洛旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150700', '呼伦贝尔市', '150000', '内蒙古自治区呼伦贝尔市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150724', '鄂温克族自治旗', '150700', '内蒙古自治区呼伦贝尔市鄂温克族自治旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150725', '陈巴尔虎旗', '150700', '内蒙古自治区呼伦贝尔市陈巴尔虎旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150784', '额尔古纳市', '150700', '内蒙古自治区呼伦贝尔市额尔古纳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150800', '巴彦淖尔市', '150000', '内蒙古自治区巴彦淖尔市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150823', '乌拉特前旗', '150800', '内蒙古自治区巴彦淖尔市乌拉特前旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150900', '乌兰察布市', '150000', '内蒙古自治区乌兰察布市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150927', '察哈尔右翼中旗', '150900', '内蒙古自治区乌兰察布市察哈尔右翼中旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150929', '四子王旗', '150900', '内蒙古自治区乌兰察布市四子王旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152200', '兴安盟', '150000', '内蒙古自治区兴安盟', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152223', '扎赉特旗', '152200', '内蒙古自治区兴安盟扎赉特旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152500', '锡林郭勒盟', '150000', '内蒙古自治区锡林郭勒盟', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152502', '锡林浩特市', '152500', '内蒙古自治区锡林郭勒盟锡林浩特市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152524', '苏尼特右旗', '152500', '内蒙古自治区锡林郭勒盟苏尼特右旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152531', '多伦县', '152500', '内蒙古自治区锡林郭勒盟多伦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152900', '阿拉善盟', '150000', '内蒙古自治区阿拉善盟', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152923', '额济纳旗', '152900', '内蒙古自治区阿拉善盟额济纳旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210100', '沈阳市', '210000', '辽宁省沈阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210104', '大东区', '210100', '辽宁省沈阳市大东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210111', '苏家屯区', '210100', '辽宁省沈阳市苏家屯区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210200', '大连市', '210000', '辽宁省大连市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210201', '市辖区', '210200', '辽宁省大连市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210211', '甘井子区', '210200', '辽宁省大连市甘井子区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210224', '长海县', '210200', '辽宁省大连市长海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210282', '普兰店市', '210200', '辽宁省大连市普兰店市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210300', '鞍山市', '210000', '辽宁省鞍山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210302', '铁东区', '210300', '辽宁省鞍山市铁东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210400', '抚顺市', '210000', '辽宁省抚顺市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210401', '市辖区', '210400', '辽宁省抚顺市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210411', '顺城区', '210400', '辽宁省抚顺市顺城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210500', '本溪市', '210000', '辽宁省本溪市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210504', '明山区', '210500', '辽宁省本溪市明山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210601', '市辖区', '210600', '辽宁省丹东市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210681', '东港市', '210600', '辽宁省丹东市东港市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210700', '锦州市', '210000', '辽宁省锦州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210701', '市辖区', '210700', '辽宁省锦州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210703', '凌河区', '210700', '辽宁省锦州市凌河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210781', '凌海市', '210700', '辽宁省锦州市凌海市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210800', '营口市', '210000', '辽宁省营口市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210881', '盖州市', '210800', '辽宁省营口市盖州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210900', '阜新市', '210000', '辽宁省阜新市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210903', '新邱区', '210900', '辽宁省阜新市新邱区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210921', '阜新蒙古族自治县', '210900', '辽宁省阜新市阜新蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211000', '辽阳市', '210000', '辽宁省辽阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211002', '白塔区', '211000', '辽宁省辽阳市白塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211011', '太子河区', '211000', '辽宁省辽阳市太子河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211100', '盘锦市', '210000', '辽宁省盘锦市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211122', '盘山县', '211100', '辽宁省盘锦市盘山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211200', '铁岭市', '210000', '辽宁省铁岭市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211221', '铁岭县', '211200', '辽宁省铁岭市铁岭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211282', '开原市', '211200', '辽宁省铁岭市开原市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211300', '朝阳市', '210000', '辽宁省朝阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211303', '龙城区', '211300', '辽宁省朝阳市龙城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211322', '建平县', '211300', '辽宁省朝阳市建平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211400', '葫芦岛市', '210000', '辽宁省葫芦岛市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211422', '建昌县', '211400', '辽宁省葫芦岛市建昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220100', '长春市', '220000', '吉林省长春市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220103', '宽城区', '220100', '吉林省长春市宽城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220112', '双阳区', '220100', '吉林省长春市双阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220183', '德惠市', '220100', '吉林省长春市德惠市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220281', '蛟河市', '220200', '吉林省吉林市蛟河市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220300', '四平市', '220000', '吉林省四平市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220301', '市辖区', '220300', '吉林省四平市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220303', '铁东区', '220300', '吉林省四平市铁东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220381', '公主岭市', '220300', '吉林省四平市公主岭市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220400', '辽源市', '220000', '吉林省辽源市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220403', '西安区', '220400', '吉林省辽源市西安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220500', '通化市', '220000', '吉林省通化市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220521', '通化县', '220500', '吉林省通化市通化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220581', '梅河口市', '220500', '吉林省通化市梅河口市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220600', '白山市', '220000', '吉林省白山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220605', '江源区', '220600', '吉林省白山市江源区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220700', '松原市', '220000', '吉林省松原市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220723', '乾安县', '220700', '吉林省松原市乾安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220800', '白城市', '220000', '吉林省白城市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220802', '洮北区', '220800', '吉林省白城市洮北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220881', '洮南市', '220800', '吉林省白城市洮南市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222400', '延边朝鲜族自治州', '220000', '吉林省延边朝鲜族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222403', '敦化市', '222400', '吉林省延边朝鲜族自治州敦化市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230000', '黑龙江省', null, '黑龙江省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230100', '哈尔滨市', '230000', '黑龙江省哈尔滨市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230101', '市辖区', '230100', '黑龙江省哈尔滨市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230109', '松北区', '230100', '黑龙江省哈尔滨市松北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230123', '依兰县', '230100', '黑龙江省哈尔滨市依兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230127', '木兰县', '230100', '黑龙江省哈尔滨市木兰县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230202', '龙沙区', '230200', '黑龙江省齐齐哈尔市龙沙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230208', '梅里斯达斡尔族区', '230200', '黑龙江省齐齐哈尔市梅里斯达斡尔族区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230224', '泰来县', '230200', '黑龙江省齐齐哈尔市泰来县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230230', '克东县', '230200', '黑龙江省齐齐哈尔市克东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230300', '鸡西市', '230000', '黑龙江省鸡西市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230301', '市辖区', '230300', '黑龙江省鸡西市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230304', '滴道区', '230300', '黑龙江省鸡西市滴道区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230321', '鸡东县', '230300', '黑龙江省鸡西市鸡东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230400', '鹤岗市', '230000', '黑龙江省鹤岗市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230404', '南山区', '230400', '黑龙江省鹤岗市南山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230407', '兴山区', '230400', '黑龙江省鹤岗市兴山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230500', '双鸭山市', '230000', '黑龙江省双鸭山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230502', '尖山区', '230500', '黑龙江省双鸭山市尖山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230521', '集贤县', '230500', '黑龙江省双鸭山市集贤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230600', '大庆市', '230000', '黑龙江省大庆市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230603', '龙凤区', '230600', '黑龙江省大庆市龙凤区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230700', '伊春市', '230000', '黑龙江省伊春市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230702', '伊春区', '230700', '黑龙江省伊春市伊春区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230705', '西林区', '230700', '黑龙江省伊春市西林区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230709', '金山屯区', '230700', '黑龙江省伊春市金山屯区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230713', '带岭区', '230700', '黑龙江省伊春市带岭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230715', '红星区', '230700', '黑龙江省伊春市红星区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230800', '佳木斯市', '230000', '黑龙江省佳木斯市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230805', '东风区', '230800', '黑龙江省佳木斯市东风区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230828', '汤原县', '230800', '黑龙江省佳木斯市汤原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230900', '七台河市', '230000', '黑龙江省七台河市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230901', '市辖区', '230900', '黑龙江省七台河市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231000', '牡丹江市', '230000', '黑龙江省牡丹江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231003', '阳明区', '231000', '黑龙江省牡丹江市阳明区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231025', '林口县', '231000', '黑龙江省牡丹江市林口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231084', '宁安市', '231000', '黑龙江省牡丹江市宁安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231100', '黑河市', '230000', '黑龙江省黑河市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231121', '嫩江县', '231100', '黑龙江省黑河市嫩江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231200', '绥化市', '230000', '黑龙江省绥化市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231225', '明水县', '231200', '黑龙江省绥化市明水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231283', '海伦市', '231200', '黑龙江省绥化市海伦市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310100', '市辖区', '310000', '上海市市辖区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310101', '黄浦区', '310100', '上海市黄浦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310107', '普陀区', '310100', '上海市普陀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310110', '杨浦区', '310100', '上海市杨浦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310117', '松江区', '310100', '上海市松江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310200', '县', '310000', '上海市县', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320000', '江苏省', null, '江苏省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320100', '南京市', '320000', '江苏省南京市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320101', '市辖区', '320100', '江苏省南京市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320104', '秦淮区', '320100', '江苏省南京市秦淮区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320111', '浦口区', '320100', '江苏省南京市浦口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320125', '高淳县', '320100', '江苏省南京市高淳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320200', '无锡市', '320000', '江苏省无锡市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320204', '北塘区', '320200', '江苏省无锡市北塘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320211', '滨湖区', '320200', '江苏省无锡市滨湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320300', '徐州市', '320000', '江苏省徐州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320312', '铜山区', '320300', '江苏省徐州市铜山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320400', '常州市', '320000', '江苏省常州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320404', '钟楼区', '320400', '江苏省常州市钟楼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320412', '武进区', '320400', '江苏省常州市武进区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320482', '金坛市', '320400', '江苏省常州市金坛市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320500', '苏州市', '320000', '江苏省苏州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320504', '金阊区', '320500', '江苏省苏州市金阊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320581', '常熟市', '320500', '江苏省苏州市常熟市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320600', '南通市', '320000', '江苏省南通市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320611', '港闸区', '320600', '江苏省南通市港闸区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320681', '启东市', '320600', '江苏省南通市启东市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320684', '海门市', '320600', '江苏省南通市海门市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320700', '连云港市', '320000', '江苏省连云港市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320705', '新浦区', '320700', '江苏省连云港市新浦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320800', '淮安市', '320000', '江苏省淮安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320803', '楚州区', '320800', '江苏省淮安市楚州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320900', '盐城市', '320000', '江苏省盐城市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320901', '市辖区', '320900', '江苏省盐城市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320922', '滨海县', '320900', '江苏省盐城市滨海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320981', '东台市', '320900', '江苏省盐城市东台市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321000', '扬州市', '320000', '江苏省扬州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321081', '仪征市', '321000', '江苏省扬州市仪征市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321100', '镇江市', '320000', '江苏省镇江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321101', '市辖区', '321100', '江苏省镇江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321181', '丹阳市', '321100', '江苏省镇江市丹阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321200', '泰州市', '320000', '江苏省泰州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321202', '海陵区', '321200', '江苏省泰州市海陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321282', '靖江市', '321200', '江苏省泰州市靖江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321324', '泗洪县', '321300', '江苏省宿迁市泗洪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330000', '浙江省', null, '浙江省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330100', '杭州市', '330000', '浙江省杭州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330104', '江干区', '330100', '浙江省杭州市江干区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330106', '西湖区', '330100', '浙江省杭州市西湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330183', '富阳市', '330100', '浙江省杭州市富阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330200', '宁波市', '330000', '浙江省宁波市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330212', '鄞州区', '330200', '浙江省宁波市鄞州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330281', '余姚市', '330200', '浙江省宁波市余姚市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330300', '温州市', '330000', '浙江省温州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330302', '鹿城区', '330300', '浙江省温州市鹿城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330324', '永嘉县', '330300', '浙江省温州市永嘉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330381', '瑞安市', '330300', '浙江省温州市瑞安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330400', '嘉兴市', '330000', '浙江省嘉兴市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330411', '秀洲区', '330400', '浙江省嘉兴市秀洲区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330482', '平湖市', '330400', '浙江省嘉兴市平湖市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330500', '湖州市', '330000', '浙江省湖州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330503', '南浔区', '330500', '浙江省湖州市南浔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330523', '安吉县', '330500', '浙江省湖州市安吉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330600', '绍兴市', '330000', '浙江省绍兴市', 2);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330682', '上虞市', '330600', '浙江省绍兴市上虞市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330700', '金华市', '330000', '浙江省金华市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330703', '金东区', '330700', '浙江省金华市金东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330784', '永康市', '330700', '浙江省金华市永康市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330800', '衢州市', '330000', '浙江省衢州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330822', '常山县', '330800', '浙江省衢州市常山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330900', '舟山市', '330000', '浙江省舟山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330922', '嵊泗县', '330900', '浙江省舟山市嵊泗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331003', '黄岩区', '331000', '浙江省台州市黄岩区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331021', '玉环县', '331000', '浙江省台州市玉环县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331081', '温岭市', '331000', '浙江省台州市温岭市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331100', '丽水市', '330000', '浙江省丽水市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331123', '遂昌县', '331100', '浙江省丽水市遂昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331125', '云和县', '331100', '浙江省丽水市云和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340100', '合肥市', '340000', '安徽省合肥市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340102', '瑶海区', '340100', '安徽省合肥市瑶海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340104', '蜀山区', '340100', '安徽省合肥市蜀山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340123', '肥西县', '340100', '安徽省合肥市肥西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340200', '芜湖市', '340000', '安徽省芜湖市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340202', '镜湖区', '340200', '安徽省芜湖市镜湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340225', '无为县', '340200', '安徽省芜湖市无为县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340300', '蚌埠市', '340000', '安徽省蚌埠市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340304', '禹会区', '340300', '安徽省蚌埠市禹会区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340321', '怀远县', '340300', '安徽省蚌埠市怀远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340400', '淮南市', '340000', '安徽省淮南市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340402', '大通区', '340400', '安徽省淮南市大通区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340500', '马鞍山市', '340000', '安徽省马鞍山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340502', '金家庄区', '340500', '安徽省马鞍山市金家庄区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340522', '含山县', '340500', '安徽省马鞍山市含山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340600', '淮北市', '340000', '安徽省淮北市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340602', '杜集区', '340600', '安徽省淮北市杜集区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340700', '铜陵市', '340000', '安徽省铜陵市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340701', '市辖区', '340700', '安徽省铜陵市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340800', '安庆市', '340000', '安徽省安庆市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340811', '宜秀区', '340800', '安徽省安庆市宜秀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340826', '宿松县', '340800', '安徽省安庆市宿松县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341001', '市辖区', '341000', '安徽省黄山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341021', '歙县', '341000', '安徽省黄山市歙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341024', '祁门县', '341000', '安徽省黄山市祁门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341100', '滁州市', '340000', '安徽省滁州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341181', '天长市', '341100', '安徽省滁州市天长市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341200', '阜阳市', '340000', '安徽省阜阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341203', '颍东区', '341200', '安徽省阜阳市颍东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341221', '临泉县', '341200', '安徽省阜阳市临泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341226', '颍上县', '341200', '安徽省阜阳市颍上县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341300', '宿州市', '340000', '安徽省宿州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341321', '砀山县', '341300', '安徽省宿州市砀山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341500', '六安市', '340000', '安徽省六安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341522', '霍邱县', '341500', '安徽省六安市霍邱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341600', '亳州市', '340000', '安徽省亳州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341623', '利辛县', '341600', '安徽省亳州市利辛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341700', '池州市', '340000', '安徽省池州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341702', '贵池区', '341700', '安徽省池州市贵池区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341800', '宣城市', '340000', '安徽省宣城市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341801', '市辖区', '341800', '安徽省宣城市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341881', '宁国市', '341800', '安徽省宣城市宁国市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350000', '福建省', null, '福建省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350100', '福州市', '350000', '福建省福州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350104', '仓山区', '350100', '福建省福州市仓山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350122', '连江县', '350100', '福建省福州市连江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350128', '平潭县', '350100', '福建省福州市平潭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350200', '厦门市', '350000', '福建省厦门市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350205', '海沧区', '350200', '福建省厦门市海沧区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350213', '翔安区', '350200', '福建省厦门市翔安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350300', '莆田市', '350000', '福建省莆田市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350304', '荔城区', '350300', '福建省莆田市荔城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350401', '市辖区', '350400', '福建省三明市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350429', '泰宁县', '350400', '福建省三明市泰宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350500', '泉州市', '350000', '福建省泉州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350502', '鲤城区', '350500', '福建省泉州市鲤城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350505', '泉港区', '350500', '福建省泉州市泉港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350526', '德化县', '350500', '福建省泉州市德化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350600', '漳州市', '350000', '福建省漳州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350622', '云霄县', '350600', '福建省漳州市云霄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350625', '长泰县', '350600', '福建省漳州市长泰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350629', '华安县', '350600', '福建省漳州市华安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350700', '南平市', '350000', '福建省南平市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350701', '市辖区', '350700', '福建省南平市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350723', '光泽县', '350700', '福建省南平市光泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350800', '龙岩市', '350000', '福建省龙岩市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350801', '市辖区', '350800', '福建省龙岩市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350823', '上杭县', '350800', '福建省龙岩市上杭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350881', '漳平市', '350800', '福建省龙岩市漳平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350900', '宁德市', '350000', '福建省宁德市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350982', '福鼎市', '350900', '福建省宁德市福鼎市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360000', '江西省', null, '江西省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360100', '南昌市', '360000', '江西省南昌市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360104', '青云谱区', '360100', '江西省南昌市青云谱区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360121', '南昌县', '360100', '江西省南昌市南昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360200', '景德镇市', '360000', '江西省景德镇市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360201', '市辖区', '360200', '江西省景德镇市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360281', '乐平市', '360200', '江西省景德镇市乐平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360300', '萍乡市', '360000', '江西省萍乡市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360400', '九江市', '360000', '江西省九江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360401', '市辖区', '360400', '江西省九江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360423', '武宁县', '360400', '江西省九江市武宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360427', '星子县', '360400', '江西省九江市星子县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360430', '彭泽县', '360400', '江西省九江市彭泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360502', '渝水区', '360500', '江西省新余市渝水区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360600', '鹰潭市', '360000', '江西省鹰潭市', 2);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360700', '赣州市', '360000', '江西省赣州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360701', '市辖区', '360700', '江西省赣州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360726', '安远县', '360700', '江西省赣州市安远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360730', '宁都县', '360700', '江西省赣州市宁都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360781', '瑞金市', '360700', '江西省赣州市瑞金市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360800', '吉安市', '360000', '江西省吉安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360802', '吉州区', '360800', '江西省吉安市吉州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360823', '峡江县', '360800', '江西省吉安市峡江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360827', '遂川县', '360800', '江西省吉安市遂川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360881', '井冈山市', '360800', '江西省吉安市井冈山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360900', '宜春市', '360000', '江西省宜春市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360925', '靖安县', '360900', '江西省宜春市靖安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360983', '高安市', '360900', '江西省宜春市高安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361000', '抚州市', '360000', '江西省抚州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361022', '黎川县', '361000', '江西省抚州市黎川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361023', '南丰县', '361000', '江西省抚州市南丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361100', '上饶市', '360000', '江西省上饶市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361123', '玉山县', '361100', '江西省上饶市玉山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361126', '弋阳县', '361100', '江西省上饶市弋阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361130', '婺源县', '361100', '江西省上饶市婺源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370000', '山东省', null, '山东省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370100', '济南市', '370000', '山东省济南市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370103', '市中区', '370100', '山东省济南市市中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370126', '商河县', '370100', '山东省济南市商河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370181', '章丘市', '370100', '山东省济南市章丘市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370200', '青岛市', '370000', '山东省青岛市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370202', '市南区', '370200', '山东省青岛市市南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370212', '崂山区', '370200', '山东省青岛市崂山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370281', '胶州市', '370200', '山东省青岛市胶州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370284', '胶南市', '370200', '山东省青岛市胶南市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370300', '淄博市', '370000', '山东省淄博市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370303', '张店区', '370300', '山东省淄博市张店区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370305', '临淄区', '370300', '山东省淄博市临淄区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370400', '枣庄市', '370000', '山东省枣庄市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370481', '滕州市', '370400', '山东省枣庄市滕州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370500', '东营市', '370000', '山东省东营市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370521', '垦利县', '370500', '山东省东营市垦利县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370600', '烟台市', '370000', '山东省烟台市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370602', '芝罘区', '370600', '山东省烟台市芝罘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370634', '长岛县', '370600', '山东省烟台市长岛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370685', '招远市', '370600', '山东省烟台市招远市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370700', '潍坊市', '370000', '山东省潍坊市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370702', '潍城区', '370700', '山东省潍坊市潍城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370724', '临朐县', '370700', '山东省潍坊市临朐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370782', '诸城市', '370700', '山东省潍坊市诸城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370800', '济宁市', '370000', '山东省济宁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370826', '微山县', '370800', '山东省济宁市微山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370828', '金乡县', '370800', '山东省济宁市金乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370832', '梁山县', '370800', '山东省济宁市梁山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370900', '泰安市', '370000', '山东省泰安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370921', '宁阳县', '370900', '山东省泰安市宁阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371000', '威海市', '370000', '山东省威海市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371083', '乳山市', '371000', '山东省威海市乳山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371100', '日照市', '370000', '山东省日照市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371103', '岚山区', '371100', '山东省日照市岚山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371122', '莒县', '371100', '山东省日照市莒县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371200', '莱芜市', '370000', '山东省莱芜市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371301', '市辖区', '371300', '山东省临沂市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371321', '沂南县', '371300', '山东省临沂市沂南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371328', '蒙阴县', '371300', '山东省临沂市蒙阴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371400', '德州市', '370000', '山东省德州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371421', '陵县', '371400', '山东省德州市陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371423', '庆云县', '371400', '山东省德州市庆云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371427', '夏津县', '371400', '山东省德州市夏津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371500', '聊城市', '370000', '山东省聊城市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371522', '莘县', '371500', '山东省聊城市莘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371600', '滨州市', '370000', '山东省滨州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371621', '惠民县', '371600', '山东省滨州市惠民县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371623', '无棣县', '371600', '山东省滨州市无棣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371700', '菏泽市', '370000', '山东省菏泽市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371701', '市辖区', '371700', '山东省菏泽市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371726', '鄄城县', '371700', '山东省菏泽市鄄城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410100', '郑州市', '410000', '河南省郑州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410102', '中原区', '410100', '河南省郑州市中原区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410106', '上街区', '410100', '河南省郑州市上街区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410122', '中牟县', '410100', '河南省郑州市中牟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410200', '开封市', '410000', '河南省开封市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410202', '龙亭区', '410200', '河南省开封市龙亭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410205', '禹王台区', '410200', '河南省开封市禹王台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410223', '尉氏县', '410200', '河南省开封市尉氏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410300', '洛阳市', '410000', '河南省洛阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410302', '老城区', '410300', '河南省洛阳市老城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410306', '吉利区', '410300', '河南省洛阳市吉利区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410329', '伊川县', '410300', '河南省洛阳市伊川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410400', '平顶山市', '410000', '河南省平顶山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410403', '卫东区', '410400', '河南省平顶山市卫东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410421', '宝丰县', '410400', '河南省平顶山市宝丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410500', '安阳市', '410000', '河南省安阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410503', '北关区', '410500', '河南省安阳市北关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410523', '汤阴县', '410500', '河南省安阳市汤阴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410600', '鹤壁市', '410000', '河南省鹤壁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410601', '市辖区', '410600', '河南省鹤壁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410621', '浚县', '410600', '河南省鹤壁市浚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410701', '市辖区', '410700', '河南省新乡市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410725', '原阳县', '410700', '河南省新乡市原阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410781', '卫辉市', '410700', '河南省新乡市卫辉市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410800', '焦作市', '410000', '河南省焦作市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410822', '博爱县', '410800', '河南省焦作市博爱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410883', '孟州市', '410800', '河南省焦作市孟州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410900', '濮阳市', '410000', '河南省濮阳市', 2);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410926', '范县', '410900', '河南省濮阳市范县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411000', '许昌市', '410000', '河南省许昌市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411002', '魏都区', '411000', '河南省许昌市魏都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411081', '禹州市', '411000', '河南省许昌市禹州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411100', '漯河市', '410000', '河南省漯河市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411102', '源汇区', '411100', '河南省漯河市源汇区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411122', '临颍县', '411100', '河南省漯河市临颍县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411200', '三门峡市', '410000', '河南省三门峡市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411300', '南阳市', '410000', '河南省南阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411301', '市辖区', '411300', '河南省南阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411303', '卧龙区', '411300', '河南省南阳市卧龙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411323', '西峡县', '411300', '河南省南阳市西峡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411327', '社旗县', '411300', '河南省南阳市社旗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411400', '商丘市', '410000', '河南省商丘市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411422', '睢县', '411400', '河南省商丘市睢县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411426', '夏邑县', '411400', '河南省商丘市夏邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411500', '信阳市', '410000', '河南省信阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411503', '平桥区', '411500', '河南省信阳市平桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411524', '商城县', '411500', '河南省信阳市商城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411600', '周口市', '410000', '河南省周口市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411622', '西华县', '411600', '河南省周口市西华县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411625', '郸城县', '411600', '河南省周口市郸城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411627', '太康县', '411600', '河南省周口市太康县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411702', '驿城区', '411700', '河南省驻马店市驿城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411727', '汝南县', '411700', '河南省驻马店市汝南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('419000', '省直辖县级行政区划', '410000', '河南省省直辖县级行政区划', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420000', '湖北省', null, '湖北省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420100', '武汉市', '420000', '湖北省武汉市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420101', '市辖区', '420100', '湖北省武汉市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420105', '汉阳区', '420100', '湖北省武汉市汉阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420116', '黄陂区', '420100', '湖北省武汉市黄陂区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420200', '黄石市', '420000', '湖北省黄石市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110102', '西城区', '110100', '北京市西城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110106', '丰台区', '110100', '北京市丰台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110108', '海淀区', '110100', '北京市海淀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110111', '房山区', '110100', '北京市房山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110114', '昌平区', '110100', '北京市昌平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110200', '县', '110000', '北京市县', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110228', '密云县', '110200', '北京市县密云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110229', '延庆县', '110200', '北京市县延庆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120000', '天津市', null, '天津市', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120100', '市辖区', '120000', '天津市市辖区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120104', '南开区', '120100', '天津市南开区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120106', '红桥区', '120100', '天津市红桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120111', '西青区', '120100', '天津市西青区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120113', '北辰区', '120100', '天津市北辰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120114', '武清区', '120100', '天津市武清区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120200', '县', '120000', '天津市县', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120223', '静海县', '120200', '天津市县静海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120225', '蓟县', '120200', '天津市县蓟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130000', '河北省', null, '河北省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130100', '石家庄市', '130000', '河北省石家庄市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130102', '长安区', '130100', '河北省石家庄市长安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130104', '桥西区', '130100', '河北省石家庄市桥西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130121', '井陉县', '130100', '河北省石家庄市井陉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130131', '平山县', '130100', '河北省石家庄市平山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130182', '藁城市', '130100', '河北省石家庄市藁城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130200', '唐山市', '130000', '河北省唐山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130201', '市辖区', '130200', '河北省唐山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130204', '古冶区', '130200', '河北省唐山市古冶区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130229', '玉田县', '130200', '河北省唐山市玉田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130300', '秦皇岛市', '130000', '河北省秦皇岛市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130301', '市辖区', '130300', '河北省秦皇岛市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130304', '北戴河区', '130300', '河北省秦皇岛市北戴河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130323', '抚宁县', '130300', '河北省秦皇岛市抚宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130400', '邯郸市', '130000', '河北省邯郸市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130421', '邯郸县', '130400', '河北省邯郸市邯郸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130426', '涉县', '130400', '河北省邯郸市涉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130428', '肥乡县', '130400', '河北省邯郸市肥乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130432', '广平县', '130400', '河北省邯郸市广平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130500', '邢台市', '130000', '河北省邢台市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130524', '柏乡县', '130500', '河北省邢台市柏乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130528', '宁晋县', '130500', '河北省邢台市宁晋县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130531', '广宗县', '130500', '河北省邢台市广宗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130535', '临西县', '130500', '河北省邢台市临西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130600', '保定市', '130000', '河北省保定市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130602', '新市区', '130600', '河北省保定市新市区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130624', '阜平县', '130600', '河北省保定市阜平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130627', '唐县', '130600', '河北省保定市唐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130631', '望都县', '130600', '河北省保定市望都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130635', '蠡县', '130600', '河北省保定市蠡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130701', '市辖区', '130700', '河北省张家口市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130705', '宣化区', '130700', '河北省张家口市宣化区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130726', '蔚县', '130700', '河北省张家口市蔚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130730', '怀来县', '130700', '河北省张家口市怀来县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130800', '承德市', '130000', '河北省承德市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130803', '双滦区', '130800', '河北省承德市双滦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130822', '兴隆县', '130800', '河北省承德市兴隆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130825', '隆化县', '130800', '河北省承德市隆化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130828', '围场满族蒙古族自治县', '130800', '河北省承德市围场满族蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130900', '沧州市', '130000', '河北省沧州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130921', '沧县', '130900', '河北省沧州市沧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130929', '献县', '130900', '河北省沧州市献县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130982', '任丘市', '130900', '河北省沧州市任丘市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130983', '黄骅市', '130900', '河北省沧州市黄骅市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131000', '廊坊市', '130000', '河北省廊坊市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131003', '广阳区', '131000', '河北省廊坊市广阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131082', '三河市', '131000', '河北省廊坊市三河市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131100', '衡水市', '130000', '河北省衡水市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131123', '武强县', '131100', '河北省衡水市武强县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131127', '景县', '131100', '河北省衡水市景县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140000', '山西省', null, '山西省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140100', '太原市', '140000', '山西省太原市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140101', '市辖区', '140100', '山西省太原市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140121', '清徐县', '140100', '山西省太原市清徐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140123', '娄烦县', '140100', '山西省太原市娄烦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140200', '大同市', '140000', '山西省大同市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140203', '矿区', '140200', '山西省大同市矿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140222', '天镇县', '140200', '山西省大同市天镇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140225', '浑源县', '140200', '山西省大同市浑源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140300', '阳泉市', '140000', '山西省阳泉市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140311', '郊区', '140300', '山西省阳泉市郊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140400', '长治市', '140000', '山西省长治市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140402', '城区', '140400', '山西省长治市城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140424', '屯留县', '140400', '山西省长治市屯留县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140500', '晋城市', '140000', '山西省晋城市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140521', '沁水县', '140500', '山西省晋城市沁水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140581', '高平市', '140500', '山西省晋城市高平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140600', '朔州市', '140000', '山西省朔州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140621', '山阴县', '140600', '山西省朔州市山阴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140623', '右玉县', '140600', '山西省朔州市右玉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140700', '晋中市', '140000', '山西省晋中市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140721', '榆社县', '140700', '山西省晋中市榆社县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140729', '灵石县', '140700', '山西省晋中市灵石县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140802', '盐湖区', '140800', '山西省运城市盐湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140824', '稷山县', '140800', '山西省运城市稷山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140828', '夏县', '140800', '山西省运城市夏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140882', '河津市', '140800', '山西省运城市河津市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140900', '忻州市', '140000', '山西省忻州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140923', '代县', '140900', '山西省忻州市代县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140927', '神池县', '140900', '山西省忻州市神池县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141000', '临汾市', '140000', '山西省临汾市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141001', '市辖区', '141000', '山西省临汾市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141025', '古县', '141000', '山西省临汾市古县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141029', '乡宁县', '141000', '山西省临汾市乡宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141033', '蒲县', '141000', '山西省临汾市蒲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141100', '吕梁市', '140000', '山西省吕梁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141101', '市辖区', '141100', '山西省吕梁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141122', '交城县', '141100', '山西省吕梁市交城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141130', '交口县', '141100', '山西省吕梁市交口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150000', '内蒙古自治区', null, '内蒙古自治区', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150100', '呼和浩特市', '150000', '内蒙古自治区呼和浩特市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150102', '新城区', '150100', '内蒙古自治区呼和浩特市新城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420281', '大冶市', '420200', '湖北省黄石市大冶市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420300', '十堰市', '420000', '湖北省十堰市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420323', '竹山县', '420300', '湖北省十堰市竹山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420500', '宜昌市', '420000', '湖北省宜昌市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420501', '市辖区', '420500', '湖北省宜昌市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420504', '点军区', '420500', '湖北省宜昌市点军区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420526', '兴山县', '420500', '湖北省宜昌市兴山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420582', '当阳市', '420500', '湖北省宜昌市当阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420600', '襄阳市', '420000', '湖北省襄阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420606', '樊城区', '420600', '湖北省襄阳市樊城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420684', '宜城市', '420600', '湖北省襄阳市宜城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420700', '鄂州市', '420000', '湖北省鄂州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420704', '鄂城区', '420700', '湖北省鄂州市鄂城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420821', '京山县', '420800', '湖北省荆门市京山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420900', '孝感市', '420000', '湖北省孝感市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420902', '孝南区', '420900', '湖北省孝感市孝南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420921', '孝昌县', '420900', '湖北省孝感市孝昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421000', '荆州市', '420000', '湖北省荆州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421003', '荆州区', '421000', '湖北省荆州市荆州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421081', '石首市', '421000', '湖北省荆州市石首市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421100', '黄冈市', '420000', '湖北省黄冈市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421101', '市辖区', '421100', '湖北省黄冈市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421123', '罗田县', '421100', '湖北省黄冈市罗田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421127', '黄梅县', '421100', '湖北省黄冈市黄梅县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421200', '咸宁市', '420000', '湖北省咸宁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421222', '通城县', '421200', '湖北省咸宁市通城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421300', '随州市', '420000', '湖北省随州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421381', '广水市', '421300', '湖北省随州市广水市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422800', '恩施土家族苗族自治州', '420000', '湖北省恩施土家族苗族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422826', '咸丰县', '422800', '湖北省恩施土家族苗族自治州咸丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('429000', '省直辖县级行政区划', '420000', '湖北省省直辖县级行政区划', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('429021', '神农架林区', '429000', '湖北省省直辖县级行政区划神农架林区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430100', '长沙市', '430000', '湖南省长沙市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430112', '望城区', '430100', '湖南省长沙市望城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430124', '宁乡县', '430100', '湖南省长沙市宁乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430200', '株洲市', '430000', '湖南省株洲市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430203', '芦淞区', '430200', '湖南省株洲市芦淞区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430221', '株洲县', '430200', '湖南省株洲市株洲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430300', '湘潭市', '430000', '湖南省湘潭市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430321', '湘潭县', '430300', '湖南省湘潭市湘潭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430405', '珠晖区', '430400', '湖南省衡阳市珠晖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430412', '南岳区', '430400', '湖南省衡阳市南岳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430422', '衡南县', '430400', '湖南省衡阳市衡南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430500', '邵阳市', '430000', '湖南省邵阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430522', '新邵县', '430500', '湖南省邵阳市新邵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430527', '绥宁县', '430500', '湖南省邵阳市绥宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430581', '武冈市', '430500', '湖南省邵阳市武冈市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430600', '岳阳市', '430000', '湖南省岳阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430603', '云溪区', '430600', '湖南省岳阳市云溪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430624', '湘阴县', '430600', '湖南省岳阳市湘阴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430700', '常德市', '430000', '湖南省常德市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430702', '武陵区', '430700', '湖南省常德市武陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430723', '澧县', '430700', '湖南省常德市澧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430781', '津市市', '430700', '湖南省常德市津市市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430800', '张家界市', '430000', '湖南省张家界市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430811', '武陵源区', '430800', '湖南省张家界市武陵源区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430900', '益阳市', '430000', '湖南省益阳市', 2);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430923', '安化县', '430900', '湖南省益阳市安化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431000', '郴州市', '430000', '湖南省郴州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431003', '苏仙区', '431000', '湖南省郴州市苏仙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431023', '永兴县', '431000', '湖南省郴州市永兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431081', '资兴市', '431000', '湖南省郴州市资兴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431100', '永州市', '430000', '湖南省永州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431124', '道县', '431100', '湖南省永州市道县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431128', '新田县', '431100', '湖南省永州市新田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431200', '怀化市', '430000', '湖南省怀化市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431202', '鹤城区', '431200', '湖南省怀化市鹤城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431224', '溆浦县', '431200', '湖南省怀化市溆浦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431225', '会同县', '431200', '湖南省怀化市会同县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431281', '洪江市', '431200', '湖南省怀化市洪江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431300', '娄底市', '430000', '湖南省娄底市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431301', '市辖区', '431300', '湖南省娄底市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431381', '冷水江市', '431300', '湖南省娄底市冷水江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433125', '保靖县', '433100', '湖南省湘西土家族苗族自治州保靖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440100', '广州市', '440000', '广东省广州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440103', '荔湾区', '440100', '广东省广州市荔湾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440113', '番禺区', '440100', '广东省广州市番禺区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440200', '韶关市', '440000', '广东省韶关市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440203', '武江区', '440200', '广东省韶关市武江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440205', '曲江区', '440200', '广东省韶关市曲江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440281', '乐昌市', '440200', '广东省韶关市乐昌市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440300', '深圳市', '440000', '广东省深圳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440301', '市辖区', '440300', '广东省深圳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440306', '宝安区', '440300', '广东省深圳市宝安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440400', '珠海市', '440000', '广东省珠海市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440403', '斗门区', '440400', '广东省珠海市斗门区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440500', '汕头市', '440000', '广东省汕头市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440511', '金平区', '440500', '广东省汕头市金平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440515', '澄海区', '440500', '广东省汕头市澄海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440600', '佛山市', '440000', '广东省佛山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440604', '禅城区', '440600', '广东省佛山市禅城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440700', '江门市', '440000', '广东省江门市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440705', '新会区', '440700', '广东省江门市新会区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440800', '湛江市', '440000', '广东省湛江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440802', '赤坎区', '440800', '广东省湛江市赤坎区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440811', '麻章区', '440800', '广东省湛江市麻章区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440882', '雷州市', '440800', '广东省湛江市雷州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440900', '茂名市', '440000', '广东省茂名市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440983', '信宜市', '440900', '广东省茂名市信宜市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441200', '肇庆市', '440000', '广东省肇庆市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441203', '鼎湖区', '441200', '广东省肇庆市鼎湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441226', '德庆县', '441200', '广东省肇庆市德庆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441284', '四会市', '441200', '广东省肇庆市四会市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441300', '惠州市', '440000', '广东省惠州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441322', '博罗县', '441300', '广东省惠州市博罗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441423', '丰顺县', '441400', '广东省梅州市丰顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441481', '兴宁市', '441400', '广东省梅州市兴宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441500', '汕尾市', '440000', '广东省汕尾市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441523', '陆河县', '441500', '广东省汕尾市陆河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441600', '河源市', '440000', '广东省河源市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231002', '东安区', '231000', '黑龙江省牡丹江市东安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231004', '爱民区', '231000', '黑龙江省牡丹江市爱民区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231024', '东宁县', '231000', '黑龙江省牡丹江市东宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231081', '绥芬河市', '231000', '黑龙江省牡丹江市绥芬河市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231085', '穆棱市', '231000', '黑龙江省牡丹江市穆棱市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231102', '爱辉区', '231100', '黑龙江省黑河市爱辉区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231123', '逊克县', '231100', '黑龙江省黑河市逊克县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231181', '北安市', '231100', '黑龙江省黑河市北安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231201', '市辖区', '231200', '黑龙江省绥化市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231224', '庆安县', '231200', '黑龙江省绥化市庆安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231226', '绥棱县', '231200', '黑龙江省绥化市绥棱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231282', '肇东市', '231200', '黑龙江省绥化市肇东市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('232721', '呼玛县', '232700', '黑龙江省大兴安岭地区呼玛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('232723', '漠河县', '232700', '黑龙江省大兴安岭地区漠河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310109', '虹口区', '310100', '上海市虹口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310112', '闵行区', '310100', '上海市闵行区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310114', '嘉定区', '310100', '上海市嘉定区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310116', '金山区', '310100', '上海市金山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310118', '青浦区', '310100', '上海市青浦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310230', '崇明县', '310200', '上海市县崇明县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320105', '建邺区', '320100', '江苏省南京市建邺区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320107', '下关区', '320100', '江苏省南京市下关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320113', '栖霞区', '320100', '江苏省南京市栖霞区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320115', '江宁区', '320100', '江苏省南京市江宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320124', '溧水县', '320100', '江苏省南京市溧水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320201', '市辖区', '320200', '江苏省无锡市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320203', '南长区', '320200', '江苏省无锡市南长区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320281', '江阴市', '320200', '江苏省无锡市江阴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320301', '市辖区', '320300', '江苏省徐州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320303', '云龙区', '320300', '江苏省徐州市云龙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320321', '丰县', '320300', '江苏省徐州市丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320324', '睢宁县', '320300', '江苏省徐州市睢宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320382', '邳州市', '320300', '江苏省徐州市邳州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320411', '新北区', '320400', '江苏省常州市新北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320481', '溧阳市', '320400', '江苏省常州市溧阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320501', '市辖区', '320500', '江苏省苏州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320503', '平江区', '320500', '江苏省苏州市平江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320505', '虎丘区', '320500', '江苏省苏州市虎丘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320507', '相城区', '320500', '江苏省苏州市相城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320585', '太仓市', '320500', '江苏省苏州市太仓市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320602', '崇川区', '320600', '江苏省南通市崇川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320612', '通州区', '320600', '江苏省南通市通州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320623', '如东县', '320600', '江苏省南通市如东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320682', '如皋市', '320600', '江苏省南通市如皋市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320703', '连云区', '320700', '江苏省连云港市连云区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320706', '海州区', '320700', '江苏省连云港市海州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320802', '清河区', '320800', '江苏省淮安市清河区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320804', '淮阴区', '320800', '江苏省淮安市淮阴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320826', '涟水县', '320800', '江苏省淮安市涟水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320831', '金湖县', '320800', '江苏省淮安市金湖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320902', '亭湖区', '320900', '江苏省盐城市亭湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320921', '响水县', '320900', '江苏省盐城市响水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320923', '阜宁县', '320900', '江苏省盐城市阜宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321002', '广陵区', '321000', '江苏省扬州市广陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321023', '宝应县', '321000', '江苏省扬州市宝应县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321102', '京口区', '321100', '江苏省镇江市京口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321112', '丹徒区', '321100', '江苏省镇江市丹徒区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321201', '市辖区', '321200', '江苏省泰州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321203', '高港区', '321200', '江苏省泰州市高港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321301', '市辖区', '321300', '江苏省宿迁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330101', '市辖区', '330100', '浙江省杭州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330103', '下城区', '330100', '浙江省杭州市下城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330122', '桐庐县', '330100', '浙江省杭州市桐庐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330182', '建德市', '330100', '浙江省杭州市建德市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330203', '海曙区', '330200', '浙江省宁波市海曙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330205', '江北区', '330200', '浙江省宁波市江北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330282', '慈溪市', '330200', '浙江省宁波市慈溪市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330303', '龙湾区', '330300', '浙江省温州市龙湾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330322', '洞头县', '330300', '浙江省温州市洞头县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330328', '文成县', '330300', '浙江省温州市文成县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330382', '乐清市', '330300', '浙江省温州市乐清市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330421', '嘉善县', '330400', '浙江省嘉兴市嘉善县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330481', '海宁市', '330400', '浙江省嘉兴市海宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330521', '德清县', '330500', '浙江省湖州市德清县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330621', '绍兴县', '330600', '浙江省绍兴市绍兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330681', '诸暨市', '330600', '浙江省绍兴市诸暨市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330683', '嵊州市', '330600', '浙江省绍兴市嵊州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330723', '武义县', '330700', '浙江省金华市武义县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330803', '衢江区', '330800', '浙江省衢州市衢江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330881', '江山市', '330800', '浙江省衢州市江山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330902', '定海区', '330900', '浙江省舟山市定海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331002', '椒江区', '331000', '浙江省台州市椒江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331004', '路桥区', '331000', '浙江省台州市路桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331024', '仙居县', '331000', '浙江省台州市仙居县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331082', '临海市', '331000', '浙江省台州市临海市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340111', '包河区', '340100', '安徽省合肥市包河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340122', '肥东县', '340100', '安徽省合肥市肥东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340201', '市辖区', '340200', '安徽省芜湖市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340203', '弋江区', '340200', '安徽省芜湖市弋江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340223', '南陵县', '340200', '安徽省芜湖市南陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340301', '市辖区', '340300', '安徽省蚌埠市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340303', '蚌山区', '340300', '安徽省蚌埠市蚌山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340311', '淮上区', '340300', '安徽省蚌埠市淮上区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340322', '五河县', '340300', '安徽省蚌埠市五河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340401', '市辖区', '340400', '安徽省淮南市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340404', '谢家集区', '340400', '安徽省淮南市谢家集区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340406', '潘集区', '340400', '安徽省淮南市潘集区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340501', '市辖区', '340500', '安徽省马鞍山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340503', '花山区', '340500', '安徽省马鞍山市花山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340521', '当涂县', '340500', '安徽省马鞍山市当涂县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340601', '市辖区', '340600', '安徽省淮北市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340621', '濉溪县', '340600', '安徽省淮北市濉溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340702', '铜官山区', '340700', '安徽省铜陵市铜官山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340711', '郊区', '340700', '安徽省铜陵市郊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340801', '市辖区', '340800', '安徽省安庆市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340803', '大观区', '340800', '安徽省安庆市大观区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340823', '枞阳县', '340800', '安徽省安庆市枞阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340827', '望江县', '340800', '安徽省安庆市望江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341002', '屯溪区', '341000', '安徽省黄山市屯溪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341004', '徽州区', '341000', '安徽省黄山市徽州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341022', '休宁县', '341000', '安徽省黄山市休宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341101', '市辖区', '341100', '安徽省滁州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341103', '南谯区', '341100', '安徽省滁州市南谯区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341126', '凤阳县', '341100', '安徽省滁州市凤阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341182', '明光市', '341100', '安徽省滁州市明光市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341202', '颍州区', '341200', '安徽省阜阳市颍州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341204', '颍泉区', '341200', '安徽省阜阳市颍泉区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341225', '阜南县', '341200', '安徽省阜阳市阜南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341282', '界首市', '341200', '安徽省阜阳市界首市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341302', '埇桥区', '341300', '安徽省宿州市埇桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341324', '泗县', '341300', '安徽省宿州市泗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341502', '金安区', '341500', '安徽省六安市金安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341521', '寿县', '341500', '安徽省六安市寿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341525', '霍山县', '341500', '安徽省六安市霍山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341602', '谯城区', '341600', '安徽省亳州市谯城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341701', '市辖区', '341700', '安徽省池州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341721', '东至县', '341700', '安徽省池州市东至县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341723', '青阳县', '341700', '安徽省池州市青阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341821', '郎溪县', '341800', '安徽省宣城市郎溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341823', '泾县', '341800', '安徽省宣城市泾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341825', '旌德县', '341800', '安徽省宣城市旌德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350101', '市辖区', '350100', '福建省福州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350105', '马尾区', '350100', '福建省福州市马尾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350121', '闽侯县', '350100', '福建省福州市闽侯县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350123', '罗源县', '350100', '福建省福州市罗源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350125', '永泰县', '350100', '福建省福州市永泰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350182', '长乐市', '350100', '福建省福州市长乐市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350203', '思明区', '350200', '福建省厦门市思明区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350206', '湖里区', '350200', '福建省厦门市湖里区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350303', '涵江区', '350300', '福建省莆田市涵江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350305', '秀屿区', '350300', '福建省莆田市秀屿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350402', '梅列区', '350400', '福建省三明市梅列区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350421', '明溪县', '350400', '福建省三明市明溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350424', '宁化县', '350400', '福建省三明市宁化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350428', '将乐县', '350400', '福建省三明市将乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350504', '洛江区', '350500', '福建省泉州市洛江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350521', '惠安县', '350500', '福建省泉州市惠安县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350527', '金门县', '350500', '福建省泉州市金门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350582', '晋江市', '350500', '福建省泉州市晋江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350603', '龙文区', '350600', '福建省漳州市龙文区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350624', '诏安县', '350600', '福建省漳州市诏安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350626', '东山县', '350600', '福建省漳州市东山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350702', '延平区', '350700', '福建省南平市延平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350724', '松溪县', '350700', '福建省南平市松溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350782', '武夷山市', '350700', '福建省南平市武夷山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350822', '永定县', '350800', '福建省龙岩市永定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350901', '市辖区', '350900', '福建省宁德市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350925', '周宁县', '350900', '福建省宁德市周宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350981', '福安市', '350900', '福建省宁德市福安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360103', '西湖区', '360100', '江西省南昌市西湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360111', '青山湖区', '360100', '江西省南昌市青山湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360124', '进贤县', '360100', '江西省南昌市进贤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360202', '昌江区', '360200', '江西省景德镇市昌江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360302', '安源区', '360300', '江西省萍乡市安源区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360402', '庐山区', '360400', '江西省九江市庐山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360421', '九江县', '360400', '江西省九江市九江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360426', '德安县', '360400', '江西省九江市德安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360429', '湖口县', '360400', '江西省九江市湖口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360481', '瑞昌市', '360400', '江西省九江市瑞昌市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360521', '分宜县', '360500', '江西省新余市分宜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360723', '大余县', '360700', '江西省赣州市大余县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360727', '龙南县', '360700', '江西省赣州市龙南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360729', '全南县', '360700', '江西省赣州市全南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360733', '会昌县', '360700', '江西省赣州市会昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360735', '石城县', '360700', '江西省赣州市石城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360803', '青原区', '360800', '江西省吉安市青原区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360822', '吉水县', '360800', '江西省吉安市吉水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360828', '万安县', '360800', '江西省吉安市万安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360830', '永新县', '360800', '江西省吉安市永新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441400', '梅州市', '440000', '广东省梅州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510300', '自贡市', '510000', '四川省自贡市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510700', '绵阳市', '510000', '四川省绵阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511300', '南充市', '510000', '四川省南充市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623000', '甘南藏族自治州', '620000', '甘肃省甘南藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632500', '海南藏族自治州', '630000', '青海省海南藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150105', '赛罕区', '150100', '内蒙古自治区呼和浩特市赛罕区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150201', '市辖区', '150200', '内蒙古自治区包头市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150203', '昆都仑区', '150200', '内蒙古自治区包头市昆都仑区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150206', '白云鄂博矿区', '150200', '内蒙古自治区包头市白云鄂博矿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150222', '固阳县', '150200', '内蒙古自治区包头市固阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150303', '海南区', '150300', '内蒙古自治区乌海市海南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150401', '市辖区', '150400', '内蒙古自治区赤峰市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150403', '元宝山区', '150400', '内蒙古自治区赤峰市元宝山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150422', '巴林左旗', '150400', '内蒙古自治区赤峰市巴林左旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150426', '翁牛特旗', '150400', '内蒙古自治区赤峰市翁牛特旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150430', '敖汉旗', '150400', '内蒙古自治区赤峰市敖汉旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150502', '科尔沁区', '150500', '内蒙古自治区通辽市科尔沁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150526', '扎鲁特旗', '150500', '内蒙古自治区通辽市扎鲁特旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150601', '市辖区', '150600', '内蒙古自治区鄂尔多斯市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150621', '达拉特旗', '150600', '内蒙古自治区鄂尔多斯市达拉特旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150624', '鄂托克旗', '150600', '内蒙古自治区鄂尔多斯市鄂托克旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150626', '乌审旗', '150600', '内蒙古自治区鄂尔多斯市乌审旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150721', '阿荣旗', '150700', '内蒙古自治区呼伦贝尔市阿荣旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150723', '鄂伦春自治旗', '150700', '内蒙古自治区呼伦贝尔市鄂伦春自治旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150726', '新巴尔虎左旗', '150700', '内蒙古自治区呼伦贝尔市新巴尔虎左旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150782', '牙克石市', '150700', '内蒙古自治区呼伦贝尔市牙克石市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150802', '临河区', '150800', '内蒙古自治区巴彦淖尔市临河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150822', '磴口县', '150800', '内蒙古自治区巴彦淖尔市磴口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150824', '乌拉特中旗', '150800', '内蒙古自治区巴彦淖尔市乌拉特中旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150921', '卓资县', '150900', '内蒙古自治区乌兰察布市卓资县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150923', '商都县', '150900', '内蒙古自治区乌兰察布市商都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150925', '凉城县', '150900', '内蒙古自治区乌兰察布市凉城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150928', '察哈尔右翼后旗', '150900', '内蒙古自治区乌兰察布市察哈尔右翼后旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152222', '科尔沁右翼中旗', '152200', '内蒙古自治区兴安盟科尔沁右翼中旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152501', '二连浩特市', '152500', '内蒙古自治区锡林郭勒盟二连浩特市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152523', '苏尼特左旗', '152500', '内蒙古自治区锡林郭勒盟苏尼特左旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152525', '东乌珠穆沁旗', '152500', '内蒙古自治区锡林郭勒盟东乌珠穆沁旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152530', '正蓝旗', '152500', '内蒙古自治区锡林郭勒盟正蓝旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152922', '阿拉善右旗', '152900', '内蒙古自治区阿拉善盟阿拉善右旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210101', '市辖区', '210100', '辽宁省沈阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210103', '沈河区', '210100', '辽宁省沈阳市沈河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210112', '东陵区', '210100', '辽宁省沈阳市东陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210114', '于洪区', '210100', '辽宁省沈阳市于洪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210181', '新民市', '210100', '辽宁省沈阳市新民市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210204', '沙河口区', '210200', '辽宁省大连市沙河口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210213', '金州区', '210200', '辽宁省大连市金州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210283', '庄河市', '210200', '辽宁省大连市庄河市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210303', '铁西区', '210300', '辽宁省鞍山市铁西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210323', '岫岩满族自治县', '210300', '辽宁省鞍山市岫岩满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210421', '抚顺县', '210400', '辽宁省抚顺市抚顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210501', '市辖区', '210500', '辽宁省本溪市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210505', '南芬区', '210500', '辽宁省本溪市南芬区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210603', '振兴区', '210600', '辽宁省丹东市振兴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210624', '宽甸满族自治县', '210600', '辽宁省丹东市宽甸满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210702', '古塔区', '210700', '辽宁省锦州市古塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210727', '义县', '210700', '辽宁省锦州市义县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210804', '鲅鱼圈区', '210800', '辽宁省营口市鲅鱼圈区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210904', '太平区', '210900', '辽宁省阜新市太平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210911', '细河区', '210900', '辽宁省阜新市细河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211003', '文圣区', '211000', '辽宁省辽阳市文圣区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211005', '弓长岭区', '211000', '辽宁省辽阳市弓长岭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211101', '市辖区', '211100', '辽宁省盘锦市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211204', '清河区', '211200', '辽宁省铁岭市清河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211223', '西丰县', '211200', '辽宁省铁岭市西丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211302', '双塔区', '211300', '辽宁省朝阳市双塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211321', '朝阳县', '211300', '辽宁省朝阳市朝阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211402', '连山区', '211400', '辽宁省葫芦岛市连山区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211421', '绥中县', '211400', '辽宁省葫芦岛市绥中县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211481', '兴城市', '211400', '辽宁省葫芦岛市兴城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220102', '南关区', '220100', '吉林省长春市南关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220122', '农安县', '220100', '吉林省长春市农安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220202', '昌邑区', '220200', '吉林省吉林市昌邑区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220204', '船营区', '220200', '吉林省吉林市船营区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220282', '桦甸市', '220200', '吉林省吉林市桦甸市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220322', '梨树县', '220300', '吉林省四平市梨树县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220421', '东丰县', '220400', '吉林省辽源市东丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220501', '市辖区', '220500', '吉林省通化市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220524', '柳河县', '220500', '吉林省通化市柳河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220582', '集安市', '220500', '吉林省通化市集安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220602', '八道江区', '220600', '吉林省白山市八道江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220623', '长白朝鲜族自治县', '220600', '吉林省白山市长白朝鲜族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220801', '市辖区', '220800', '吉林省白城市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441624', '和平县', '441600', '广东省河源市和平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441700', '阳江市', '440000', '广东省阳江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441721', '阳西县', '441700', '广东省阳江市阳西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441800', '清远市', '440000', '广东省清远市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441801', '市辖区', '441800', '广东省清远市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441827', '清新县', '441800', '广东省清远市清新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441900', '东莞市', '440000', '广东省东莞市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('442000', '中山市', '440000', '广东省中山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445100', '潮州市', '440000', '广东省潮州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445101', '市辖区', '445100', '广东省潮州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445200', '揭阳市', '440000', '广东省揭阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445201', '市辖区', '445200', '广东省揭阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445202', '榕城区', '445200', '广东省揭阳市榕城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445281', '普宁市', '445200', '广东省揭阳市普宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445300', '云浮市', '440000', '广东省云浮市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445322', '郁南县', '445300', '广东省云浮市郁南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450100', '南宁市', '450000', '广西壮族自治区南宁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450123', '隆安县', '450100', '广西壮族自治区南宁市隆安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450200', '柳州市', '450000', '广西壮族自治区柳州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450202', '城中区', '450200', '广西壮族自治区柳州市城中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450224', '融安县', '450200', '广西壮族自治区柳州市融安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450300', '桂林市', '450000', '广西壮族自治区桂林市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450301', '市辖区', '450300', '广西壮族自治区桂林市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450321', '阳朔县', '450300', '广西壮族自治区桂林市阳朔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450324', '全州县', '450300', '广西壮族自治区桂林市全州县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450332', '恭城瑶族自治县', '450300', '广西壮族自治区桂林市恭城瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450400', '梧州市', '450000', '广西壮族自治区梧州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450405', '长洲区', '450400', '广西壮族自治区梧州市长洲区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450501', '市辖区', '450500', '广西壮族自治区北海市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450521', '合浦县', '450500', '广西壮族自治区北海市合浦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450600', '防城港市', '450000', '广西壮族自治区防城港市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450700', '钦州市', '450000', '广西壮族自治区钦州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450702', '钦南区', '450700', '广西壮族自治区钦州市钦南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450800', '贵港市', '450000', '广西壮族自治区贵港市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450801', '市辖区', '450800', '广西壮族自治区贵港市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450900', '玉林市', '450000', '广西壮族自治区玉林市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450921', '容县', '450900', '广西壮族自治区玉林市容县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450922', '陆川县', '450900', '广西壮族自治区玉林市陆川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451000', '百色市', '450000', '广西壮族自治区百色市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451023', '平果县', '451000', '广西壮族自治区百色市平果县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451027', '凌云县', '451000', '广西壮族自治区百色市凌云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451100', '贺州市', '450000', '广西壮族自治区贺州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451200', '河池市', '450000', '广西壮族自治区河池市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451201', '市辖区', '451200', '广西壮族自治区河池市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451224', '东兰县', '451200', '广西壮族自治区河池市东兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451227', '巴马瑶族自治县', '451200', '广西壮族自治区河池市巴马瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451300', '来宾市', '450000', '广西壮族自治区来宾市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451301', '市辖区', '451300', '广西壮族自治区来宾市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451322', '象州县', '451300', '广西壮族自治区来宾市象州县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451400', '崇左市', '450000', '广西壮族自治区崇左市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451421', '扶绥县', '451400', '广西壮族自治区崇左市扶绥县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451425', '天等县', '451400', '广西壮族自治区崇左市天等县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460000', '海南省', null, '海南省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460100', '海口市', '460000', '海南省海口市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460106', '龙华区', '460100', '海南省海口市龙华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460200', '三亚市', '460000', '海南省三亚市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469000', '省直辖县级行政区划', '460000', '海南省省直辖县级行政区划', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469005', '文昌市', '469000', '海南省省直辖县级行政区划文昌市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469023', '澄迈县', '469000', '海南省省直辖县级行政区划澄迈县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469028', '陵水黎族自治县', '469000', '海南省省直辖县级行政区划陵水黎族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469031', '西沙群岛', '469000', '海南省省直辖县级行政区划西沙群岛', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500101', '万州区', '500100', '重庆市万州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500105', '江北区', '500100', '重庆市江北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500110', '綦江区', '500100', '重庆市綦江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500114', '黔江区', '500100', '重庆市黔江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500117', '合川区', '500100', '重庆市合川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500200', '县', '500000', '重庆市县', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500227', '璧山县', '500200', '重庆市县璧山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500231', '垫江县', '500200', '重庆市县垫江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500233', '忠县', '500200', '重庆市县忠县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500236', '奉节县', '500200', '重庆市县奉节县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510000', '四川省', null, '四川省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510100', '成都市', '510000', '四川省成都市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510101', '市辖区', '510100', '四川省成都市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510104', '锦江区', '510100', '四川省成都市锦江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510106', '金牛区', '510100', '四川省成都市金牛区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510113', '青白江区', '510100', '四川省成都市青白江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510132', '新津县', '510100', '四川省成都市新津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510183', '邛崃市', '510100', '四川省成都市邛崃市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510303', '贡井区', '510300', '四川省自贡市贡井区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510400', '攀枝花市', '510000', '四川省攀枝花市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510401', '市辖区', '510400', '四川省攀枝花市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510500', '泸州市', '510000', '四川省泸州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510501', '市辖区', '510500', '四川省泸州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510503', '纳溪区', '510500', '四川省泸州市纳溪区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510524', '叙永县', '510500', '四川省泸州市叙永县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510600', '德阳市', '510000', '四川省德阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510682', '什邡市', '510600', '四川省德阳市什邡市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510704', '游仙区', '510700', '四川省绵阳市游仙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510725', '梓潼县', '510700', '四川省绵阳市梓潼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510781', '江油市', '510700', '四川省绵阳市江油市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510800', '广元市', '510000', '四川省广元市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510900', '遂宁市', '510000', '四川省遂宁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510901', '市辖区', '510900', '四川省遂宁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510922', '射洪县', '510900', '四川省遂宁市射洪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511000', '内江市', '510000', '四川省内江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511002', '市中区', '511000', '四川省内江市市中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511028', '隆昌县', '511000', '四川省内江市隆昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511100', '乐山市', '510000', '四川省乐山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511112', '五通桥区', '511100', '四川省乐山市五通桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511133', '马边彝族自治县', '511100', '四川省乐山市马边彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511302', '顺庆区', '511300', '四川省南充市顺庆区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511322', '营山县', '511300', '四川省南充市营山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511325', '西充县', '511300', '四川省南充市西充县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511421', '仁寿县', '511400', '四川省眉山市仁寿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511425', '青神县', '511400', '四川省眉山市青神县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511500', '宜宾市', '510000', '四川省宜宾市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511521', '宜宾县', '511500', '四川省宜宾市宜宾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511529', '屏山县', '511500', '四川省宜宾市屏山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511600', '广安市', '510000', '四川省广安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511622', '武胜县', '511600', '四川省广安市武胜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511681', '华蓥市', '511600', '四川省广安市华蓥市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511700', '达州市', '510000', '四川省达州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511722', '宣汉县', '511700', '四川省达州市宣汉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511800', '雅安市', '510000', '四川省雅安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511822', '荥经县', '511800', '四川省雅安市荥经县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511826', '芦山县', '511800', '四川省雅安市芦山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511900', '巴中市', '510000', '四川省巴中市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511902', '巴州区', '511900', '四川省巴中市巴州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('512000', '资阳市', '510000', '四川省资阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('512001', '市辖区', '512000', '四川省资阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513200', '阿坝藏族羌族自治州', '510000', '四川省阿坝藏族羌族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513224', '松潘县', '513200', '四川省阿坝藏族羌族自治州松潘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513322', '泸定县', '513300', '四川省甘孜藏族自治州泸定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513325', '雅江县', '513300', '四川省甘孜藏族自治州雅江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513329', '新龙县', '513300', '四川省甘孜藏族自治州新龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513338', '得荣县', '513300', '四川省甘孜藏族自治州得荣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513400', '凉山彝族自治州', '510000', '四川省凉山彝族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513424', '德昌县', '513400', '四川省凉山彝族自治州德昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513428', '普格县', '513400', '四川省凉山彝族自治州普格县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513434', '越西县', '513400', '四川省凉山彝族自治州越西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513437', '雷波县', '513400', '四川省凉山彝族自治州雷波县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520100', '贵阳市', '520000', '贵州省贵阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520111', '花溪区', '520100', '贵州省贵阳市花溪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520200', '六盘水市', '520000', '贵州省六盘水市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520201', '钟山区', '520200', '贵州省六盘水市钟山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520222', '盘县', '520200', '贵州省六盘水市盘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520300', '遵义市', '520000', '贵州省遵义市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520321', '遵义县', '520300', '贵州省遵义市遵义县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520323', '绥阳县', '520300', '贵州省遵义市绥阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520327', '凤冈县', '520300', '贵州省遵义市凤冈县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520381', '赤水市', '520300', '贵州省遵义市赤水市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520400', '安顺市', '520000', '贵州省安顺市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520402', '西秀区', '520400', '贵州省安顺市西秀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520425', '紫云苗族布依族自治县', '520400', '贵州省安顺市紫云苗族布依族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520500', '毕节市', '520000', '贵州省毕节市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520524', '织金县', '520500', '贵州省毕节市织金县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520600', '铜仁市', '520000', '贵州省铜仁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520601', '市辖区', '520600', '贵州省铜仁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520603', '万山区', '520600', '贵州省铜仁市万山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520624', '思南县', '520600', '贵州省铜仁市思南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520626', '德江县', '520600', '贵州省铜仁市德江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522300', '黔西南布依族苗族自治州', '520000', '贵州省黔西南布依族苗族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522325', '贞丰县', '522300', '贵州省黔西南布依族苗族自治州贞丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522600', '黔东南苗族侗族自治州', '520000', '贵州省黔东南苗族侗族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522623', '施秉县', '522600', '贵州省黔东南苗族侗族自治州施秉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522627', '天柱县', '522600', '贵州省黔东南苗族侗族自治州天柱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522632', '榕江县', '522600', '贵州省黔东南苗族侗族自治州榕江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522700', '黔南布依族苗族自治州', '520000', '贵州省黔南布依族苗族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522702', '福泉市', '522700', '贵州省黔南布依族苗族自治州福泉市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522728', '罗甸县', '522700', '贵州省黔南布依族苗族自治州罗甸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530000', '云南省', null, '云南省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530100', '昆明市', '530000', '云南省昆明市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530111', '官渡区', '530100', '云南省昆明市官渡区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530122', '晋宁县', '530100', '云南省昆明市晋宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530128', '禄劝彝族苗族自治县', '530100', '云南省昆明市禄劝彝族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530181', '安宁市', '530100', '云南省昆明市安宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530300', '曲靖市', '530000', '云南省曲靖市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530302', '麒麟区', '530300', '云南省曲靖市麒麟区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530381', '宣威市', '530300', '云南省曲靖市宣威市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530400', '玉溪市', '530000', '云南省玉溪市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530422', '澄江县', '530400', '云南省玉溪市澄江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530425', '易门县', '530400', '云南省玉溪市易门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530428', '元江哈尼族彝族傣族自治县', '530400', '云南省玉溪市元江哈尼族彝族傣族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530500', '保山市', '530000', '云南省保山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530522', '腾冲县', '530500', '云南省保山市腾冲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530600', '昭通市', '530000', '云南省昭通市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530622', '巧家县', '530600', '云南省昭通市巧家县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530625', '永善县', '530600', '云南省昭通市永善县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530723', '华坪县', '530700', '云南省丽江市华坪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530800', '普洱市', '530000', '云南省普洱市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530802', '思茅区', '530800', '云南省普洱市思茅区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530823', '景东彝族自治县', '530800', '云南省普洱市景东彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530826', '江城哈尼族彝族自治县', '530800', '云南省普洱市江城哈尼族彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530828', '澜沧拉祜族自治县', '530800', '云南省普洱市澜沧拉祜族自治县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530829', '西盟佤族自治县', '530800', '云南省普洱市西盟佤族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530900', '临沧市', '530000', '云南省临沧市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530927', '沧源佤族自治县', '530900', '云南省临沧市沧源佤族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532300', '楚雄彝族自治州', '530000', '云南省楚雄彝族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532301', '楚雄市', '532300', '云南省楚雄彝族自治州楚雄市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532324', '南华县', '532300', '云南省楚雄彝族自治州南华县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532328', '元谋县', '532300', '云南省楚雄彝族自治州元谋县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532500', '红河哈尼族彝族自治州', '530000', '云南省红河哈尼族彝族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532528', '元阳县', '532500', '云南省红河哈尼族彝族自治州元阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532600', '文山壮族苗族自治州', '530000', '云南省文山壮族苗族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532626', '丘北县', '532600', '云南省文山壮族苗族自治州丘北县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532800', '西双版纳傣族自治州', '530000', '云南省西双版纳傣族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532823', '勐腊县', '532800', '云南省西双版纳傣族自治州勐腊县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532900', '大理白族自治州', '530000', '云南省大理白族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532924', '宾川县', '532900', '云南省大理白族自治州宾川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532928', '永平县', '532900', '云南省大理白族自治州永平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532930', '洱源县', '532900', '云南省大理白族自治州洱源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533100', '德宏傣族景颇族自治州', '530000', '云南省德宏傣族景颇族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533124', '陇川县', '533100', '云南省德宏傣族景颇族自治州陇川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533300', '怒江傈僳族自治州', '530000', '云南省怒江傈僳族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533400', '迪庆藏族自治州', '530000', '云南省迪庆藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533421', '香格里拉县', '533400', '云南省迪庆藏族自治州香格里拉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540000', '西藏自治区', null, '西藏自治区', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540100', '拉萨市', '540000', '西藏自治区拉萨市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540101', '市辖区', '540100', '西藏自治区拉萨市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540121', '林周县', '540100', '西藏自治区拉萨市林周县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540125', '堆龙德庆县', '540100', '西藏自治区拉萨市堆龙德庆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542100', '昌都地区', '540000', '西藏自治区昌都地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542126', '察雅县', '542100', '西藏自治区昌都地区察雅县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542129', '芒康县', '542100', '西藏自治区昌都地区芒康县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542200', '山南地区', '540000', '西藏自治区山南地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542222', '扎囊县', '542200', '西藏自治区山南地区扎囊县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542231', '隆子县', '542200', '西藏自治区山南地区隆子县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542301', '日喀则市', '542300', '西藏自治区日喀则地区日喀则市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542325', '萨迦县', '542300', '西藏自治区日喀则地区萨迦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542338', '岗巴县', '542300', '西藏自治区日喀则地区岗巴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542400', '那曲地区', '540000', '西藏自治区那曲地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542422', '嘉黎县', '542400', '西藏自治区那曲地区嘉黎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542429', '巴青县', '542400', '西藏自治区那曲地区巴青县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542500', '阿里地区', '540000', '西藏自治区阿里地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542523', '噶尔县', '542500', '西藏自治区阿里地区噶尔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542527', '措勤县', '542500', '西藏自治区阿里地区措勤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542600', '林芝地区', '540000', '西藏自治区林芝地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542627', '朗县', '542600', '西藏自治区林芝地区朗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610000', '陕西省', null, '陕西省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610100', '西安市', '610000', '陕西省西安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610104', '莲湖区', '610100', '陕西省西安市莲湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610114', '阎良区', '610100', '陕西省西安市阎良区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610122', '蓝田县', '610100', '陕西省西安市蓝田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610125', '户县', '610100', '陕西省西安市户县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610200', '铜川市', '610000', '陕西省铜川市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610300', '宝鸡市', '610000', '陕西省宝鸡市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610302', '渭滨区', '610300', '陕西省宝鸡市渭滨区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610323', '岐山县', '610300', '陕西省宝鸡市岐山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610328', '千阳县', '610300', '陕西省宝鸡市千阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610400', '咸阳市', '610000', '陕西省咸阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610401', '市辖区', '610400', '陕西省咸阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610427', '彬县', '610400', '陕西省咸阳市彬县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610431', '武功县', '610400', '陕西省咸阳市武功县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610500', '渭南市', '610000', '陕西省渭南市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610521', '华县', '610500', '陕西省渭南市华县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610524', '合阳县', '610500', '陕西省渭南市合阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610528', '富平县', '610500', '陕西省渭南市富平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610600', '延安市', '610000', '陕西省延安市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610622', '延川县', '610600', '陕西省延安市延川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610626', '吴起县', '610600', '陕西省延安市吴起县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610630', '宜川县', '610600', '陕西省延安市宜川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610700', '汉中市', '610000', '陕西省汉中市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610701', '市辖区', '610700', '陕西省汉中市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610725', '勉县', '610700', '陕西省汉中市勉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610729', '留坝县', '610700', '陕西省汉中市留坝县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610800', '榆林市', '610000', '陕西省榆林市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610824', '靖边县', '610800', '陕西省榆林市靖边县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610900', '安康市', '610000', '陕西省安康市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610901', '市辖区', '610900', '陕西省安康市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610921', '汉阴县', '610900', '陕西省安康市汉阴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610924', '紫阳县', '610900', '陕西省安康市紫阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610928', '旬阳县', '610900', '陕西省安康市旬阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611000', '商洛市', '610000', '陕西省商洛市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611025', '镇安县', '611000', '陕西省商洛市镇安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620000', '甘肃省', null, '甘肃省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620100', '兰州市', '620000', '甘肃省兰州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620102', '城关区', '620100', '甘肃省兰州市城关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620111', '红古区', '620100', '甘肃省兰州市红古区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620201', '市辖区', '620200', '甘肃省嘉峪关市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620300', '金昌市', '620000', '甘肃省金昌市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620321', '永昌县', '620300', '甘肃省金昌市永昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620400', '白银市', '620000', '甘肃省白银市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620423', '景泰县', '620400', '甘肃省白银市景泰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620500', '天水市', '620000', '甘肃省天水市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620521', '清水县', '620500', '甘肃省天水市清水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620600', '武威市', '620000', '甘肃省武威市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620602', '凉州区', '620600', '甘肃省武威市凉州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620700', '张掖市', '620000', '甘肃省张掖市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620701', '市辖区', '620700', '甘肃省张掖市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620725', '山丹县', '620700', '甘肃省张掖市山丹县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620800', '平凉市', '620000', '甘肃省平凉市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620822', '灵台县', '620800', '甘肃省平凉市灵台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620826', '静宁县', '620800', '甘肃省平凉市静宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620900', '酒泉市', '620000', '甘肃省酒泉市', 2);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620921', '金塔县', '620900', '甘肃省酒泉市金塔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620981', '玉门市', '620900', '甘肃省酒泉市玉门市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620982', '敦煌市', '620900', '甘肃省酒泉市敦煌市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621000', '庆阳市', '620000', '甘肃省庆阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621021', '庆城县', '621000', '甘肃省庆阳市庆城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621025', '正宁县', '621000', '甘肃省庆阳市正宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621100', '定西市', '620000', '甘肃省定西市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621122', '陇西县', '621100', '甘肃省定西市陇西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621200', '陇南市', '620000', '甘肃省陇南市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621222', '文县', '621200', '甘肃省陇南市文县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621224', '康县', '621200', '甘肃省陇南市康县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622924', '广河县', '622900', '甘肃省临夏回族自治州广河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623001', '合作市', '623000', '甘肃省甘南藏族自治州合作市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623022', '卓尼县', '623000', '甘肃省甘南藏族自治州卓尼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623027', '夏河县', '623000', '甘肃省甘南藏族自治州夏河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630000', '青海省', null, '青海省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630100', '西宁市', '630000', '青海省西宁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630103', '城中区', '630100', '青海省西宁市城中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630123', '湟源县', '630100', '青海省西宁市湟源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632100', '海东地区', '630000', '青海省海东地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632123', '乐都县', '632100', '青海省海东地区乐都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632127', '化隆回族自治县', '632100', '青海省海东地区化隆回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632200', '海北藏族自治州', '630000', '青海省海北藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632300', '黄南藏族自治州', '630000', '青海省黄南藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632324', '河南蒙古族自治县', '632300', '青海省黄南藏族自治州河南蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632600', '果洛藏族自治州', '630000', '青海省果洛藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632622', '班玛县', '632600', '青海省果洛藏族自治州班玛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632625', '久治县', '632600', '青海省果洛藏族自治州久治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632721', '玉树县', '632700', '青海省玉树藏族自治州玉树县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632723', '称多县', '632700', '青海省玉树藏族自治州称多县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632726', '曲麻莱县', '632700', '青海省玉树藏族自治州曲麻莱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632800', '海西蒙古族藏族自治州', '630000', '青海省海西蒙古族藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632821', '乌兰县', '632800', '青海省海西蒙古族藏族自治州乌兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632823', '天峻县', '632800', '青海省海西蒙古族藏族自治州天峻县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640000', '宁夏回族自治区', null, '宁夏回族自治区', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640100', '银川市', '640000', '宁夏回族自治区银川市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640104', '兴庆区', '640100', '宁夏回族自治区银川市兴庆区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640122', '贺兰县', '640100', '宁夏回族自治区银川市贺兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640200', '石嘴山市', '640000', '宁夏回族自治区石嘴山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640300', '吴忠市', '640000', '宁夏回族自治区吴忠市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640301', '市辖区', '640300', '宁夏回族自治区吴忠市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640302', '利通区', '640300', '宁夏回族自治区吴忠市利通区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640381', '青铜峡市', '640300', '宁夏回族自治区吴忠市青铜峡市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640400', '固原市', '640000', '宁夏回族自治区固原市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640402', '原州区', '640400', '宁夏回族自治区固原市原州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640425', '彭阳县', '640400', '宁夏回族自治区固原市彭阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640500', '中卫市', '640000', '宁夏回族自治区中卫市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640502', '沙坡头区', '640500', '宁夏回族自治区中卫市沙坡头区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650000', '新疆维吾尔自治区', null, '新疆维吾尔自治区', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650100', '乌鲁木齐市', '650000', '新疆维吾尔自治区乌鲁木齐市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650102', '天山区', '650100', '新疆维吾尔自治区乌鲁木齐市天山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650106', '头屯河区', '650100', '新疆维吾尔自治区乌鲁木齐市头屯河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650109', '米东区', '650100', '新疆维吾尔自治区乌鲁木齐市米东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650200', '克拉玛依市', '650000', '新疆维吾尔自治区克拉玛依市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650203', '克拉玛依区', '650200', '新疆维吾尔自治区克拉玛依市克拉玛依区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650205', '乌尔禾区', '650200', '新疆维吾尔自治区克拉玛依市乌尔禾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652100', '吐鲁番地区', '650000', '新疆维吾尔自治区吐鲁番地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652200', '哈密地区', '650000', '新疆维吾尔自治区哈密地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652201', '哈密市', '652200', '新疆维吾尔自治区哈密地区哈密市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652223', '伊吾县', '652200', '新疆维吾尔自治区哈密地区伊吾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652300', '昌吉回族自治州', '650000', '新疆维吾尔自治区昌吉回族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652324', '玛纳斯县', '652300', '新疆维吾尔自治区昌吉回族自治州玛纳斯县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652700', '博尔塔拉蒙古自治州', '650000', '新疆维吾尔自治区博尔塔拉蒙古自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652722', '精河县', '652700', '新疆维吾尔自治区博尔塔拉蒙古自治州精河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652800', '巴音郭楞蒙古自治州', '650000', '新疆维吾尔自治区巴音郭楞蒙古自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652825', '且末县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州且末县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652827', '和静县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州和静县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652900', '阿克苏地区', '650000', '新疆维吾尔自治区阿克苏地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652922', '温宿县', '652900', '新疆维吾尔自治区阿克苏地区温宿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652925', '新和县', '652900', '新疆维吾尔自治区阿克苏地区新和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652927', '乌什县', '652900', '新疆维吾尔自治区阿克苏地区乌什县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653000', '克孜勒苏柯尔克孜自治州', '650000', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653023', '阿合奇县', '653000', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿合奇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653101', '喀什市', '653100', '新疆维吾尔自治区喀什地区喀什市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653124', '泽普县', '653100', '新疆维吾尔自治区喀什地区泽普县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653125', '莎车县', '653100', '新疆维吾尔自治区喀什地区莎车县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653129', '伽师县', '653100', '新疆维吾尔自治区喀什地区伽师县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653200', '和田地区', '650000', '新疆维吾尔自治区和田地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653201', '和田市', '653200', '新疆维吾尔自治区和田地区和田市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653222', '墨玉县', '653200', '新疆维吾尔自治区和田地区墨玉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653224', '洛浦县', '653200', '新疆维吾尔自治区和田地区洛浦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654000', '伊犁哈萨克自治州', '650000', '新疆维吾尔自治区伊犁哈萨克自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654003', '奎屯市', '654000', '新疆维吾尔自治区伊犁哈萨克自治州奎屯市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654026', '昭苏县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州昭苏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654200', '塔城地区', '650000', '新疆维吾尔自治区塔城地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654202', '乌苏市', '654200', '新疆维吾尔自治区塔城地区乌苏市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654224', '托里县', '654200', '新疆维吾尔自治区塔城地区托里县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654300', '阿勒泰地区', '650000', '新疆维吾尔自治区阿勒泰地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654323', '福海县', '654300', '新疆维吾尔自治区阿勒泰地区福海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('659000', '自治区直辖县级行政区划', '650000', '新疆维吾尔自治区自治区直辖县级行政区划', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('659002', '阿拉尔市', '659000', '新疆维吾尔自治区自治区直辖县级行政区划阿拉尔市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220882', '大安市', '220800', '吉林省白城市大安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222426', '安图县', '222400', '吉林省延边朝鲜族自治州安图县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230102', '道里区', '230100', '黑龙江省哈尔滨市道里区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230110', '香坊区', '230100', '黑龙江省哈尔滨市香坊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230126', '巴彦县', '230100', '黑龙江省哈尔滨市巴彦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230182', '双城市', '230100', '黑龙江省哈尔滨市双城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230201', '市辖区', '230200', '黑龙江省齐齐哈尔市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230223', '依安县', '230200', '黑龙江省齐齐哈尔市依安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230281', '讷河市', '230200', '黑龙江省齐齐哈尔市讷河市', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230303', '恒山区', '230300', '黑龙江省鸡西市恒山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230307', '麻山区', '230300', '黑龙江省鸡西市麻山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230381', '虎林市', '230300', '黑龙江省鸡西市虎林市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230403', '工农区', '230400', '黑龙江省鹤岗市工农区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230501', '市辖区', '230500', '黑龙江省双鸭山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230503', '岭东区', '230500', '黑龙江省双鸭山市岭东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230522', '友谊县', '230500', '黑龙江省双鸭山市友谊县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230524', '饶河县', '230500', '黑龙江省双鸭山市饶河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230605', '红岗区', '230600', '黑龙江省大庆市红岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230701', '市辖区', '230700', '黑龙江省伊春市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230703', '南岔区', '230700', '黑龙江省伊春市南岔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230708', '美溪区', '230700', '黑龙江省伊春市美溪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230714', '乌伊岭区', '230700', '黑龙江省伊春市乌伊岭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230804', '前进区', '230800', '黑龙江省佳木斯市前进区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230811', '郊区', '230800', '黑龙江省佳木斯市郊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230833', '抚远县', '230800', '黑龙江省佳木斯市抚远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230882', '富锦市', '230800', '黑龙江省佳木斯市富锦市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230921', '勃利县', '230900', '黑龙江省七台河市勃利县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513321', '康定县', '513300', '四川省甘孜藏族自治州康定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513324', '九龙县', '513300', '四川省甘孜藏族自治州九龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513326', '道孚县', '513300', '四川省甘孜藏族自治州道孚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513328', '甘孜县', '513300', '四川省甘孜藏族自治州甘孜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513330', '德格县', '513300', '四川省甘孜藏族自治州德格县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513332', '石渠县', '513300', '四川省甘孜藏族自治州石渠县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513334', '理塘县', '513300', '四川省甘孜藏族自治州理塘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513336', '乡城县', '513300', '四川省甘孜藏族自治州乡城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513401', '西昌市', '513400', '四川省凉山彝族自治州西昌市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513423', '盐源县', '513400', '四川省凉山彝族自治州盐源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513425', '会理县', '513400', '四川省凉山彝族自治州会理县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513427', '宁南县', '513400', '四川省凉山彝族自治州宁南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513431', '昭觉县', '513400', '四川省凉山彝族自治州昭觉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513433', '冕宁县', '513400', '四川省凉山彝族自治州冕宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520101', '市辖区', '520100', '贵州省贵阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520103', '云岩区', '520100', '贵州省贵阳市云岩区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520112', '乌当区', '520100', '贵州省贵阳市乌当区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520114', '小河区', '520100', '贵州省贵阳市小河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520122', '息烽县', '520100', '贵州省贵阳市息烽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520181', '清镇市', '520100', '贵州省贵阳市清镇市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520221', '水城县', '520200', '贵州省六盘水市水城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520301', '市辖区', '520300', '贵州省遵义市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520322', '桐梓县', '520300', '贵州省遵义市桐梓县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520324', '正安县', '520300', '贵州省遵义市正安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520326', '务川仡佬族苗族自治县', '520300', '贵州省遵义市务川仡佬族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520330', '习水县', '520300', '贵州省遵义市习水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520401', '市辖区', '520400', '贵州省安顺市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520421', '平坝县', '520400', '贵州省安顺市平坝县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520423', '镇宁布依族苗族自治县', '520400', '贵州省安顺市镇宁布依族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520522', '黔西县', '520500', '贵州省毕节市黔西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520527', '赫章县', '520500', '贵州省毕节市赫章县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520602', '碧江区', '520600', '贵州省铜仁市碧江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520621', '江口县', '520600', '贵州省铜仁市江口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520623', '石阡县', '520600', '贵州省铜仁市石阡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520625', '印江土家族苗族自治县', '520600', '贵州省铜仁市印江土家族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522324', '晴隆县', '522300', '贵州省黔西南布依族苗族自治州晴隆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522326', '望谟县', '522300', '贵州省黔西南布依族苗族自治州望谟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522328', '安龙县', '522300', '贵州省黔西南布依族苗族自治州安龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522622', '黄平县', '522600', '贵州省黔东南苗族侗族自治州黄平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522626', '岑巩县', '522600', '贵州省黔东南苗族侗族自治州岑巩县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522631', '黎平县', '522600', '贵州省黔东南苗族侗族自治州黎平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522635', '麻江县', '522600', '贵州省黔东南苗族侗族自治州麻江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522722', '荔波县', '522700', '贵州省黔南布依族苗族自治州荔波县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522727', '平塘县', '522700', '贵州省黔南布依族苗族自治州平塘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522732', '三都水族自治县', '522700', '贵州省黔南布依族苗族自治州三都水族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530114', '呈贡区', '530100', '云南省昆明市呈贡区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530129', '寻甸回族彝族自治县', '530100', '云南省昆明市寻甸回族彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530323', '师宗县', '530300', '云南省曲靖市师宗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530325', '富源县', '530300', '云南省曲靖市富源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530328', '沾益县', '530300', '云南省曲靖市沾益县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530423', '通海县', '530400', '云南省玉溪市通海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530501', '市辖区', '530500', '云南省保山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530521', '施甸县', '530500', '云南省保山市施甸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530601', '市辖区', '530600', '云南省昭通市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530621', '鲁甸县', '530600', '云南省昭通市鲁甸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530624', '大关县', '530600', '云南省昭通市大关县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530628', '彝良县', '530600', '云南省昭通市彝良县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530722', '永胜县', '530700', '云南省丽江市永胜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530822', '墨江哈尼族自治县', '530800', '云南省普洱市墨江哈尼族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530901', '市辖区', '530900', '云南省临沧市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530921', '凤庆县', '530900', '云南省临沧市凤庆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530926', '耿马傣族佤族自治县', '530900', '云南省临沧市耿马傣族佤族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532325', '姚安县', '532300', '云南省楚雄彝族自治州姚安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532501', '个旧市', '532500', '云南省红河哈尼族彝族自治州个旧市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532524', '建水县', '532500', '云南省红河哈尼族彝族自治州建水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532529', '红河县', '532500', '云南省红河哈尼族彝族自治州红河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532601', '文山市', '532600', '云南省文山壮族苗族自治州文山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532625', '马关县', '532600', '云南省文山壮族苗族自治州马关县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532822', '勐海县', '532800', '云南省西双版纳傣族自治州勐海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532923', '祥云县', '532900', '云南省大理白族自治州祥云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532927', '巍山彝族回族自治县', '532900', '云南省大理白族自治州巍山彝族回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533324', '贡山独龙族怒族自治县', '533300', '云南省怒江傈僳族自治州贡山独龙族怒族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540122', '当雄县', '540100', '西藏自治区拉萨市当雄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540124', '曲水县', '540100', '西藏自治区拉萨市曲水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540126', '达孜县', '540100', '西藏自治区拉萨市达孜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542123', '贡觉县', '542100', '西藏自治区昌都地区贡觉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542125', '丁青县', '542100', '西藏自治区昌都地区丁青县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542225', '琼结县', '542200', '西藏自治区山南地区琼结县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542229', '加查县', '542200', '西藏自治区山南地区加查县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542322', '南木林县', '542300', '西藏自治区日喀则地区南木林县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542324', '定日县', '542300', '西藏自治区日喀则地区定日县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542326', '拉孜县', '542300', '西藏自治区日喀则地区拉孜县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542328', '谢通门县', '542300', '西藏自治区日喀则地区谢通门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542331', '康马县', '542300', '西藏自治区日喀则地区康马县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542333', '仲巴县', '542300', '西藏自治区日喀则地区仲巴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542335', '吉隆县', '542300', '西藏自治区日喀则地区吉隆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542337', '萨嘎县', '542300', '西藏自治区日喀则地区萨嘎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542421', '那曲县', '542400', '西藏自治区那曲地区那曲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542426', '申扎县', '542400', '西藏自治区那曲地区申扎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542428', '班戈县', '542400', '西藏自治区那曲地区班戈县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542430', '尼玛县', '542400', '西藏自治区那曲地区尼玛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542522', '札达县', '542500', '西藏自治区阿里地区札达县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542621', '林芝县', '542600', '西藏自治区林芝地区林芝县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542624', '墨脱县', '542600', '西藏自治区林芝地区墨脱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542626', '察隅县', '542600', '西藏自治区林芝地区察隅县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610101', '市辖区', '610100', '陕西省西安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610111', '灞桥区', '610100', '陕西省西安市灞桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610113', '雁塔区', '610100', '陕西省西安市雁塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610115', '临潼区', '610100', '陕西省西安市临潼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610124', '周至县', '610100', '陕西省西安市周至县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610126', '高陵县', '610100', '陕西省西安市高陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610202', '王益区', '610200', '陕西省铜川市王益区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610204', '耀州区', '610200', '陕西省铜川市耀州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610303', '金台区', '610300', '陕西省宝鸡市金台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610322', '凤翔县', '610300', '陕西省宝鸡市凤翔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610326', '眉县', '610300', '陕西省宝鸡市眉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610327', '陇县', '610300', '陕西省宝鸡市陇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610329', '麟游县', '610300', '陕西省宝鸡市麟游县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610331', '太白县', '610300', '陕西省宝鸡市太白县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610403', '杨陵区', '610400', '陕西省咸阳市杨陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610426', '永寿县', '610400', '陕西省咸阳市永寿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610428', '长武县', '610400', '陕西省咸阳市长武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610430', '淳化县', '610400', '陕西省咸阳市淳化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610481', '兴平市', '610400', '陕西省咸阳市兴平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610502', '临渭区', '610500', '陕西省渭南市临渭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610522', '潼关县', '610500', '陕西省渭南市潼关县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610527', '白水县', '610500', '陕西省渭南市白水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610581', '韩城市', '610500', '陕西省渭南市韩城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610601', '市辖区', '610600', '陕西省延安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610621', '延长县', '610600', '陕西省延安市延长县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610623', '子长县', '610600', '陕西省延安市子长县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610625', '志丹县', '610600', '陕西省延安市志丹县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610628', '富县', '610600', '陕西省延安市富县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610632', '黄陵县', '610600', '陕西省延安市黄陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610722', '城固县', '610700', '陕西省汉中市城固县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610724', '西乡县', '610700', '陕西省汉中市西乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610726', '宁强县', '610700', '陕西省汉中市宁强县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610730', '佛坪县', '610700', '陕西省汉中市佛坪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610825', '定边县', '610800', '陕西省榆林市定边县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610827', '米脂县', '610800', '陕西省榆林市米脂县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610831', '子洲县', '610800', '陕西省榆林市子洲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610902', '汉滨区', '610900', '陕西省安康市汉滨区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610925', '岚皋县', '610900', '陕西省安康市岚皋县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610927', '镇坪县', '610900', '陕西省安康市镇坪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610929', '白河县', '610900', '陕西省安康市白河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611024', '山阳县', '611000', '陕西省商洛市山阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620103', '七里河区', '620100', '甘肃省兰州市七里河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620105', '安宁区', '620100', '甘肃省兰州市安宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620123', '榆中县', '620100', '甘肃省兰州市榆中县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620302', '金川区', '620300', '甘肃省金昌市金川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620422', '会宁县', '620400', '甘肃省白银市会宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620522', '秦安县', '620500', '甘肃省天水市秦安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620621', '民勤县', '620600', '甘肃省武威市民勤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620623', '天祝藏族自治县', '620600', '甘肃省武威市天祝藏族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620724', '高台县', '620700', '甘肃省张掖市高台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620801', '市辖区', '620800', '甘肃省平凉市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620821', '泾川县', '620800', '甘肃省平凉市泾川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620825', '庄浪县', '620800', '甘肃省平凉市庄浪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620924', '阿克塞哈萨克族自治县', '620900', '甘肃省酒泉市阿克塞哈萨克族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621022', '环县', '621000', '甘肃省庆阳市环县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621024', '合水县', '621000', '甘肃省庆阳市合水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621101', '市辖区', '621100', '甘肃省定西市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621121', '通渭县', '621100', '甘肃省定西市通渭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621125', '漳县', '621100', '甘肃省定西市漳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621201', '市辖区', '621200', '甘肃省陇南市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621225', '西和县', '621200', '甘肃省陇南市西和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622922', '康乐县', '622900', '甘肃省临夏回族自治州康乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623024', '迭部县', '623000', '甘肃省甘南藏族自治州迭部县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623026', '碌曲县', '623000', '甘肃省甘南藏族自治州碌曲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630102', '城东区', '630100', '青海省西宁市城东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632122', '民和回族土族自治县', '632100', '青海省海东地区民和回族土族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632128', '循化撒拉族自治县', '632100', '青海省海东地区循化撒拉族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632321', '同仁县', '632300', '青海省黄南藏族自治州同仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632522', '同德县', '632500', '青海省海南藏族自治州同德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632524', '兴海县', '632500', '青海省海南藏族自治州兴海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360922', '万载县', '360900', '江西省宜春市万载县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360924', '宜丰县', '360900', '江西省宜春市宜丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360926', '铜鼓县', '360900', '江西省宜春市铜鼓县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360982', '樟树市', '360900', '江西省宜春市樟树市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361001', '市辖区', '361000', '江西省抚州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361021', '南城县', '361000', '江西省抚州市南城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361024', '崇仁县', '361000', '江西省抚州市崇仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361026', '宜黄县', '361000', '江西省抚州市宜黄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361028', '资溪县', '361000', '江西省抚州市资溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361030', '广昌县', '361000', '江西省抚州市广昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361102', '信州区', '361100', '江西省上饶市信州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361122', '广丰县', '361100', '江西省上饶市广丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361127', '余干县', '361100', '江西省上饶市余干县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361129', '万年县', '361100', '江西省上饶市万年县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361181', '德兴市', '361100', '江西省上饶市德兴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370102', '历下区', '370100', '山东省济南市历下区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370104', '槐荫区', '370100', '山东省济南市槐荫区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370112', '历城区', '370100', '山东省济南市历城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370214', '城阳区', '370200', '山东省青岛市城阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370285', '莱西市', '370200', '山东省青岛市莱西市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370302', '淄川区', '370300', '山东省淄博市淄川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370304', '博山区', '370300', '山东省淄博市博山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370306', '周村区', '370300', '山东省淄博市周村区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370322', '高青县', '370300', '山东省淄博市高青县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370403', '薛城区', '370400', '山东省枣庄市薛城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370406', '山亭区', '370400', '山东省枣庄市山亭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370501', '市辖区', '370500', '山东省东营市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370503', '河口区', '370500', '山东省东营市河口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370522', '利津县', '370500', '山东省东营市利津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370601', '市辖区', '370600', '山东省烟台市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370611', '福山区', '370600', '山东省烟台市福山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370682', '莱阳市', '370600', '山东省烟台市莱阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370684', '蓬莱市', '370600', '山东省烟台市蓬莱市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370686', '栖霞市', '370600', '山东省烟台市栖霞市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370703', '寒亭区', '370700', '山东省潍坊市寒亭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370705', '奎文区', '370700', '山东省潍坊市奎文区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370725', '昌乐县', '370700', '山东省潍坊市昌乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370785', '高密市', '370700', '山东省潍坊市高密市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370801', '市辖区', '370800', '山东省济宁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370811', '任城区', '370800', '山东省济宁市任城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370827', '鱼台县', '370800', '山东省济宁市鱼台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370829', '嘉祥县', '370800', '山东省济宁市嘉祥县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370831', '泗水县', '370800', '山东省济宁市泗水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370882', '兖州市', '370800', '山东省济宁市兖州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370911', '岱岳区', '370900', '山东省泰安市岱岳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370923', '东平县', '370900', '山东省泰安市东平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370983', '肥城市', '370900', '山东省泰安市肥城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371002', '环翠区', '371000', '山东省威海市环翠区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371082', '荣成市', '371000', '山东省威海市荣成市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371102', '东港区', '371100', '山东省日照市东港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371203', '钢城区', '371200', '山东省莱芜市钢城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371302', '兰山区', '371300', '山东省临沂市兰山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371312', '河东区', '371300', '山东省临沂市河东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371322', '郯城县', '371300', '山东省临沂市郯城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371325', '费县', '371300', '山东省临沂市费县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371329', '临沭县', '371300', '山东省临沂市临沭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371422', '宁津县', '371400', '山东省德州市宁津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371426', '平原县', '371400', '山东省德州市平原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371428', '武城县', '371400', '山东省德州市武城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371521', '阳谷县', '371500', '山东省聊城市阳谷县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371523', '茌平县', '371500', '山东省聊城市茌平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371581', '临清市', '371500', '山东省聊城市临清市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371602', '滨城区', '371600', '山东省滨州市滨城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371626', '邹平县', '371600', '山东省滨州市邹平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371723', '成武县', '371700', '山东省菏泽市成武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371725', '郓城县', '371700', '山东省菏泽市郓城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410103', '二七区', '410100', '河南省郑州市二七区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410108', '惠济区', '410100', '河南省郑州市惠济区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410182', '荥阳市', '410100', '河南省郑州市荥阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410203', '顺河回族区', '410200', '河南省开封市顺河回族区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410222', '通许县', '410200', '河南省开封市通许县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410224', '开封县', '410200', '河南省开封市开封县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410303', '西工区', '410300', '河南省洛阳市西工区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410305', '涧西区', '410300', '河南省洛阳市涧西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410322', '孟津县', '410300', '河南省洛阳市孟津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410326', '汝阳县', '410300', '河南省洛阳市汝阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410402', '新华区', '410400', '河南省平顶山市新华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410404', '石龙区', '410400', '河南省平顶山市石龙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410423', '鲁山县', '410400', '河南省平顶山市鲁山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410502', '文峰区', '410500', '河南省安阳市文峰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410505', '殷都区', '410500', '河南省安阳市殷都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410581', '林州市', '410500', '河南省安阳市林州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410622', '淇县', '410600', '河南省鹤壁市淇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410702', '红旗区', '410700', '河南省新乡市红旗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410724', '获嘉县', '410700', '河南省新乡市获嘉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410726', '延津县', '410700', '河南省新乡市延津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410782', '辉县市', '410700', '河南省新乡市辉县市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410802', '解放区', '410800', '河南省焦作市解放区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410821', '修武县', '410800', '河南省焦作市修武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410882', '沁阳市', '410800', '河南省焦作市沁阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410923', '南乐县', '410900', '河南省濮阳市南乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410927', '台前县', '410900', '河南省濮阳市台前县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411001', '市辖区', '411000', '河南省许昌市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411023', '许昌县', '411000', '河南省许昌市许昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411025', '襄城县', '411000', '河南省许昌市襄城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411082', '长葛市', '411000', '河南省许昌市长葛市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411103', '郾城区', '411100', '河南省漯河市郾城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411121', '舞阳县', '411100', '河南省漯河市舞阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411201', '市辖区', '411200', '河南省三门峡市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411224', '卢氏县', '411200', '河南省三门峡市卢氏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411282', '灵宝市', '411200', '河南省三门峡市灵宝市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411302', '宛城区', '411300', '河南省南阳市宛城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411322', '方城县', '411300', '河南省南阳市方城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411324', '镇平县', '411300', '河南省南阳市镇平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411326', '淅川县', '411300', '河南省南阳市淅川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411328', '唐河县', '411300', '河南省南阳市唐河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411401', '市辖区', '411400', '河南省商丘市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411403', '睢阳区', '411400', '河南省商丘市睢阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411423', '宁陵县', '411400', '河南省商丘市宁陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411425', '虞城县', '411400', '河南省商丘市虞城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411502', '师河区', '411500', '河南省信阳市师河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411521', '罗山县', '411500', '河南省信阳市罗山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411525', '固始县', '411500', '河南省信阳市固始县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411527', '淮滨县', '411500', '河南省信阳市淮滨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411601', '市辖区', '411600', '河南省周口市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411621', '扶沟县', '411600', '河南省周口市扶沟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411624', '沈丘县', '411600', '河南省周口市沈丘县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411626', '淮阳县', '411600', '河南省周口市淮阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411701', '市辖区', '411700', '河南省驻马店市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411721', '西平县', '411700', '河南省驻马店市西平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411723', '平舆县', '411700', '河南省驻马店市平舆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411725', '确山县', '411700', '河南省驻马店市确山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411728', '遂平县', '411700', '河南省驻马店市遂平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('419001', '济源市', '419000', '河南省省直辖县级行政区划济源市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420102', '江岸区', '420100', '湖北省武汉市江岸区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420106', '武昌区', '420100', '湖北省武汉市武昌区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420113', '汉南区', '420100', '湖北省武汉市汉南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420115', '江夏区', '420100', '湖北省武汉市江夏区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420201', '市辖区', '420200', '湖北省黄石市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420203', '西塞山区', '420200', '湖北省黄石市西塞山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420205', '铁山区', '420200', '湖北省黄石市铁山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130123', '正定县', '130100', '河北省石家庄市正定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130126', '灵寿县', '130100', '河北省石家庄市灵寿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130128', '深泽县', '130100', '河北省石家庄市深泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130130', '无极县', '130100', '河北省石家庄市无极县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130132', '元氏县', '130100', '河北省石家庄市元氏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130181', '辛集市', '130100', '河北省石家庄市辛集市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130183', '晋州市', '130100', '河北省石家庄市晋州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130203', '路北区', '130200', '河北省唐山市路北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130205', '开平区', '130200', '河北省唐山市开平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130224', '滦南县', '130200', '河北省唐山市滦南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130283', '迁安市', '130200', '河北省唐山市迁安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130303', '山海关区', '130300', '河北省秦皇岛市山海关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130324', '卢龙县', '130300', '河北省秦皇岛市卢龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130423', '临漳县', '130400', '河北省邯郸市临漳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130425', '大名县', '130400', '河北省邯郸市大名县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130427', '磁县', '130400', '河北省邯郸市磁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130431', '鸡泽县', '130400', '河北省邯郸市鸡泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130433', '馆陶县', '130400', '河北省邯郸市馆陶县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130502', '桥东区', '130500', '河北省邢台市桥东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130521', '邢台县', '130500', '河北省邢台市邢台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130527', '南和县', '130500', '河北省邢台市南和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130532', '平乡县', '130500', '河北省邢台市平乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130534', '清河县', '130500', '河北省邢台市清河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130601', '市辖区', '130600', '河北省保定市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130603', '北市区', '130600', '河北省保定市北市区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130621', '满城县', '130600', '河北省保定市满城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130632', '安新县', '130600', '河北省保定市安新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130634', '曲阳县', '130600', '河北省保定市曲阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130638', '雄县', '130600', '河北省保定市雄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130682', '定州市', '130600', '河北省保定市定州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130703', '桥西区', '130700', '河北省张家口市桥西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130706', '下花园区', '130700', '河北省张家口市下花园区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130725', '尚义县', '130700', '河北省张家口市尚义县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130731', '涿鹿县', '130700', '河北省张家口市涿鹿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130733', '崇礼县', '130700', '河北省张家口市崇礼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130804', '鹰手营子矿区', '130800', '河北省承德市鹰手营子矿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130826', '丰宁满族自治县', '130800', '河北省承德市丰宁满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130901', '市辖区', '130900', '河北省沧州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130922', '青县', '130900', '河北省沧州市青县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130924', '海兴县', '130900', '河北省沧州市海兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130930', '孟村回族自治县', '130900', '河北省沧州市孟村回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131002', '安次区', '131000', '河北省廊坊市安次区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131026', '文安县', '131000', '河北省廊坊市文安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131081', '霸州市', '131000', '河北省廊坊市霸州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131122', '武邑县', '131100', '河北省衡水市武邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131124', '饶阳县', '131100', '河北省衡水市饶阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131182', '深州市', '131100', '河北省衡水市深州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140105', '小店区', '140100', '山西省太原市小店区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140108', '尖草坪区', '140100', '山西省太原市尖草坪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140110', '晋源区', '140100', '山西省太原市晋源区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140122', '阳曲县', '140100', '山西省太原市阳曲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140181', '古交市', '140100', '山西省太原市古交市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140202', '城区', '140200', '山西省大同市城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140211', '南郊区', '140200', '山西省大同市南郊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140221', '阳高县', '140200', '山西省大同市阳高县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140224', '灵丘县', '140200', '山西省大同市灵丘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140226', '左云县', '140200', '山西省大同市左云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140301', '市辖区', '140300', '山西省阳泉市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140303', '矿区', '140300', '山西省阳泉市矿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140401', '市辖区', '140400', '山西省长治市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140411', '郊区', '140400', '山西省长治市郊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140423', '襄垣县', '140400', '山西省长治市襄垣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140425', '平顺县', '140400', '山西省长治市平顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140427', '壶关县', '140400', '山西省长治市壶关县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140429', '武乡县', '140400', '山西省长治市武乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140481', '潞城市', '140400', '山西省长治市潞城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140522', '阳城县', '140500', '山西省晋城市阳城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140525', '泽州县', '140500', '山西省晋城市泽州县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140601', '市辖区', '140600', '山西省朔州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140603', '平鲁区', '140600', '山西省朔州市平鲁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140622', '应县', '140600', '山西省朔州市应县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140624', '怀仁县', '140600', '山西省朔州市怀仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140724', '昔阳县', '140700', '山西省晋中市昔阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140727', '祁县', '140700', '山西省晋中市祁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140728', '平遥县', '140700', '山西省晋中市平遥县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140801', '市辖区', '140800', '山西省运城市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140821', '临猗县', '140800', '山西省运城市临猗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140823', '闻喜县', '140800', '山西省运城市闻喜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140827', '垣曲县', '140800', '山西省运城市垣曲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140829', '平陆县', '140800', '山西省运城市平陆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140881', '永济市', '140800', '山西省运城市永济市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140902', '忻府区', '140900', '山西省忻州市忻府区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140922', '五台县', '140900', '山西省忻州市五台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140924', '繁峙县', '140900', '山西省忻州市繁峙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140928', '五寨县', '140900', '山西省忻州市五寨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140930', '河曲县', '140900', '山西省忻州市河曲县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140932', '偏关县', '140900', '山西省忻州市偏关县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141002', '尧都区', '141000', '山西省临汾市尧都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141024', '洪洞县', '141000', '山西省临汾市洪洞县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141026', '安泽县', '141000', '山西省临汾市安泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141030', '大宁县', '141000', '山西省临汾市大宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141032', '永和县', '141000', '山西省临汾市永和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141034', '汾西县', '141000', '山西省临汾市汾西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141082', '霍州市', '141000', '山西省临汾市霍州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141121', '文水县', '141100', '山西省吕梁市文水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141123', '兴县', '141100', '山西省吕梁市兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141127', '岚县', '141100', '山西省吕梁市岚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141129', '中阳县', '141100', '山西省吕梁市中阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141181', '孝义市', '141100', '山西省吕梁市孝义市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150101', '市辖区', '150100', '内蒙古自治区呼和浩特市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420222', '阳新县', '420200', '湖北省黄石市阳新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420321', '郧县', '420300', '湖北省十堰市郧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420381', '丹江口市', '420300', '湖北省十堰市丹江口市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420525', '远安县', '420500', '湖北省宜昌市远安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420527', '秭归县', '420500', '湖北省宜昌市秭归县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420583', '枝江市', '420500', '湖北省宜昌市枝江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420602', '襄城区', '420600', '湖北省襄阳市襄城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420625', '谷城县', '420600', '湖北省襄阳市谷城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420703', '华容区', '420700', '湖北省鄂州市华容区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420801', '市辖区', '420800', '湖北省荆门市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420822', '沙洋县', '420800', '湖北省荆门市沙洋县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420901', '市辖区', '420900', '湖北省孝感市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420981', '应城市', '420900', '湖北省孝感市应城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420984', '汉川市', '420900', '湖北省孝感市汉川市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421022', '公安县', '421000', '湖北省荆州市公安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421024', '江陵县', '421000', '湖北省荆州市江陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421122', '红安县', '421100', '湖北省黄冈市红安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421124', '英山县', '421100', '湖北省黄冈市英山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421181', '麻城市', '421100', '湖北省黄冈市麻城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421201', '市辖区', '421200', '湖北省咸宁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421301', '市辖区', '421300', '湖北省随州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422825', '宣恩县', '422800', '湖北省恩施土家族苗族自治州宣恩县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('429004', '仙桃市', '429000', '湖北省省直辖县级行政区划仙桃市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430102', '芙蓉区', '430100', '湖南省长沙市芙蓉区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430104', '岳麓区', '430100', '湖南省长沙市岳麓区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430121', '长沙县', '430100', '湖南省长沙市长沙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430181', '浏阳市', '430100', '湖南省长沙市浏阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430202', '荷塘区', '430200', '湖南省株洲市荷塘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430223', '攸县', '430200', '湖南省株洲市攸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430224', '茶陵县', '430200', '湖南省株洲市茶陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430304', '岳塘区', '430300', '湖南省湘潭市岳塘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430406', '雁峰区', '430400', '湖南省衡阳市雁峰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430408', '蒸湘区', '430400', '湖南省衡阳市蒸湘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430424', '衡东县', '430400', '湖南省衡阳市衡东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430481', '耒阳市', '430400', '湖南省衡阳市耒阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430503', '大祥区', '430500', '湖南省邵阳市大祥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430529', '城步苗族自治县', '430500', '湖南省邵阳市城步苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430602', '岳阳楼区', '430600', '湖南省岳阳市岳阳楼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430611', '君山区', '430600', '湖南省岳阳市君山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430623', '华容县', '430600', '湖南省岳阳市华容县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430681', '汨罗市', '430600', '湖南省岳阳市汨罗市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430701', '市辖区', '430700', '湖南省常德市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430703', '鼎城区', '430700', '湖南省常德市鼎城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430722', '汉寿县', '430700', '湖南省常德市汉寿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430726', '石门县', '430700', '湖南省常德市石门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430801', '市辖区', '430800', '湖南省张家界市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430821', '慈利县', '430800', '湖南省张家界市慈利县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430901', '市辖区', '430900', '湖南省益阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430903', '赫山区', '430900', '湖南省益阳市赫山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430981', '沅江市', '430900', '湖南省益阳市沅江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431021', '桂阳县', '431000', '湖南省郴州市桂阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431024', '嘉禾县', '431000', '湖南省郴州市嘉禾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431026', '汝城县', '431000', '湖南省郴州市汝城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431028', '安仁县', '431000', '湖南省郴州市安仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431101', '市辖区', '431100', '湖南省永州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431103', '冷水滩区', '431100', '湖南省永州市冷水滩区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431123', '双牌县', '431100', '湖南省永州市双牌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431127', '蓝山县', '431100', '湖南省永州市蓝山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431129', '江华瑶族自治县', '431100', '湖南省永州市江华瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431221', '中方县', '431200', '湖南省怀化市中方县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431223', '辰溪县', '431200', '湖南省怀化市辰溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431226', '麻阳苗族自治县', '431200', '湖南省怀化市麻阳苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431229', '靖州苗族侗族自治县', '431200', '湖南省怀化市靖州苗族侗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431302', '娄星区', '431300', '湖南省娄底市娄星区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433122', '泸溪县', '433100', '湖南省湘西土家族苗族自治州泸溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433124', '花垣县', '433100', '湖南省湘西土家族苗族自治州花垣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433126', '古丈县', '433100', '湖南省湘西土家族苗族自治州古丈县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440101', '市辖区', '440100', '广东省广州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440104', '越秀区', '440100', '广东省广州市越秀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440106', '天河区', '440100', '广东省广州市天河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440114', '花都区', '440100', '广东省广州市花都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440116', '萝岗区', '440100', '广东省广州市萝岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440184', '从化市', '440100', '广东省广州市从化市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440204', '浈江区', '440200', '广东省韶关市浈江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440222', '始兴县', '440200', '广东省韶关市始兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440229', '翁源县', '440200', '广东省韶关市翁源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440282', '南雄市', '440200', '广东省韶关市南雄市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440303', '罗湖区', '440300', '广东省深圳市罗湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440305', '南山区', '440300', '广东省深圳市南山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440308', '盐田区', '440300', '广东省深圳市盐田区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440404', '金湾区', '440400', '广东省珠海市金湾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440507', '龙湖区', '440500', '广东省汕头市龙湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440514', '潮南区', '440500', '广东省汕头市潮南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440523', '南澳县', '440500', '广东省汕头市南澳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440607', '三水区', '440600', '广东省佛山市三水区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440701', '市辖区', '440700', '广东省江门市市辖区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440781', '台山市', '440700', '广东省江门市台山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440784', '鹤山市', '440700', '广东省江门市鹤山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440804', '坡头区', '440800', '广东省湛江市坡头区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440883', '吴川市', '440800', '广东省湛江市吴川市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440902', '茂南区', '440900', '广东省茂名市茂南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440982', '化州市', '440900', '广东省茂名市化州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441202', '端州区', '441200', '广东省肇庆市端州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441223', '广宁县', '441200', '广东省肇庆市广宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441283', '高要市', '441200', '广东省肇庆市高要市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441301', '市辖区', '441300', '广东省惠州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441424', '五华县', '441400', '广东省梅州市五华县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441427', '蕉岭县', '441400', '广东省梅州市蕉岭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441521', '海丰县', '441500', '广东省汕尾市海丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441581', '陆丰市', '441500', '广东省汕尾市陆丰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441623', '连平县', '441600', '广东省河源市连平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441625', '东源县', '441600', '广东省河源市东源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441802', '清城区', '441800', '广东省清远市清城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441823', '阳山县', '441800', '广东省清远市阳山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441882', '连州市', '441800', '广东省清远市连州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445102', '湘桥区', '445100', '广东省潮州市湘桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445221', '揭东县', '445200', '广东省揭阳市揭东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445224', '惠来县', '445200', '广东省揭阳市惠来县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445321', '新兴县', '445300', '广东省云浮市新兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450101', '市辖区', '450100', '广西壮族自治区南宁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450108', '良庆区', '450100', '广西壮族自治区南宁市良庆区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450201', '市辖区', '450200', '广西壮族自治区柳州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450205', '柳北区', '450200', '广西壮族自治区柳州市柳北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450302', '秀峰区', '450300', '广西壮族自治区桂林市秀峰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450304', '象山区', '450300', '广西壮族自治区桂林市象山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450311', '雁山区', '450300', '广西壮族自治区桂林市雁山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450327', '灌阳县', '450300', '广西壮族自治区桂林市灌阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450331', '荔蒲县', '450300', '广西壮族自治区桂林市荔蒲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450401', '市辖区', '450400', '广西壮族自治区梧州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450481', '岑溪市', '450400', '广西壮族自治区梧州市岑溪市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450512', '铁山港区', '450500', '广西壮族自治区北海市铁山港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450601', '市辖区', '450600', '广西壮族自治区防城港市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450603', '防城区', '450600', '广西壮族自治区防城港市防城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450701', '市辖区', '450700', '广西壮族自治区钦州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450703', '钦北区', '450700', '广西壮族自治区钦州市钦北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450722', '浦北县', '450700', '广西壮族自治区钦州市浦北县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450802', '港北区', '450800', '广西壮族自治区贵港市港北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450881', '桂平市', '450800', '广西壮族自治区贵港市桂平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450902', '玉州区', '450900', '广西壮族自治区玉林市玉州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450923', '博白县', '450900', '广西壮族自治区玉林市博白县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451002', '右江区', '451000', '广西壮族自治区百色市右江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451022', '田东县', '451000', '广西壮族自治区百色市田东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451024', '德保县', '451000', '广西壮族自治区百色市德保县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451028', '乐业县', '451000', '广西壮族自治区百色市乐业县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451031', '隆林各族自治县', '451000', '广西壮族自治区百色市隆林各族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451121', '昭平县', '451100', '广西壮族自治区贺州市昭平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451221', '南丹县', '451200', '广西壮族自治区河池市南丹县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451226', '环江毛南族自治县', '451200', '广西壮族自治区河池市环江毛南族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451229', '大化瑶族自治县', '451200', '广西壮族自治区河池市大化瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451323', '武宣县', '451300', '广西壮族自治区来宾市武宣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451381', '合山市', '451300', '广西壮族自治区来宾市合山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451402', '江洲区', '451400', '广西壮族自治区崇左市江洲区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451424', '大新县', '451400', '广西壮族自治区崇左市大新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451481', '凭祥市', '451400', '广西壮族自治区崇左市凭祥市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460105', '秀英区', '460100', '海南省海口市秀英区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460108', '美兰区', '460100', '海南省海口市美兰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469001', '五指山市', '469000', '海南省省直辖县级行政区划五指山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469006', '万宁市', '469000', '海南省省直辖县级行政区划万宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469021', '定安县', '469000', '海南省省直辖县级行政区划定安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469024', '临高县', '469000', '海南省省直辖县级行政区划临高县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469026', '昌江黎族自治县', '469000', '海南省省直辖县级行政区划昌江黎族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469029', '保亭黎族苗族自治县', '469000', '海南省省直辖县级行政区划保亭黎族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469033', '中沙群岛的岛礁及其海域', '469000', '海南省省直辖县级行政区划中沙群岛的岛礁及其海域', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500104', '大渡口区', '500100', '重庆市大渡口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500107', '九龙坡区', '500100', '重庆市九龙坡区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500113', '巴南区', '500100', '重庆市巴南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500116', '江津区', '500100', '重庆市江津区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500118', '永川区', '500100', '重庆市永川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500223', '潼南县', '500200', '重庆市县潼南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500226', '荣昌县', '500200', '重庆市县荣昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500228', '梁平县', '500200', '重庆市县梁平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500230', '丰都县', '500200', '重庆市县丰都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500235', '云阳县', '500200', '重庆市县云阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500237', '巫山县', '500200', '重庆市县巫山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500243', '彭水苗族土家族自治县', '500200', '重庆市县彭水苗族土家族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510107', '武侯区', '510100', '四川省成都市武侯区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510114', '新都区', '510100', '四川省成都市新都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510121', '金堂县', '510100', '四川省成都市金堂县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510181', '都江堰市', '510100', '四川省成都市都江堰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510184', '崇州市', '510100', '四川省成都市崇州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510304', '大安区', '510300', '四川省自贡市大安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510411', '仁和区', '510400', '四川省攀枝花市仁和区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510422', '盐边县', '510400', '四川省攀枝花市盐边县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510522', '合江县', '510500', '四川省泸州市合江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510623', '中江县', '510600', '四川省德阳市中江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510681', '广汉市', '510600', '四川省德阳市广汉市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510703', '涪城区', '510700', '四川省绵阳市涪城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510722', '三台县', '510700', '四川省绵阳市三台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510726', '北川羌族自治县', '510700', '四川省绵阳市北川羌族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510812', '朝天区', '510800', '四川省广元市朝天区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510822', '青川县', '510800', '四川省广元市青川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510921', '蓬溪县', '510900', '四川省遂宁市蓬溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510923', '大英县', '510900', '四川省遂宁市大英县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511025', '资中县', '511000', '四川省内江市资中县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511101', '市辖区', '511100', '四川省乐山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511113', '金口河区', '511100', '四川省乐山市金口河区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511301', '市辖区', '511300', '四川省南充市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511321', '南部县', '511300', '四川省南充市南部县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511381', '阆中市', '511300', '四川省南充市阆中市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511424', '丹棱县', '511400', '四川省眉山市丹棱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511503', '南溪区', '511500', '四川省宜宾市南溪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511523', '江安县', '511500', '四川省宜宾市江安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511527', '筠连县', '511500', '四川省宜宾市筠连县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511623', '邻水县', '511600', '四川省广安市邻水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511701', '市辖区', '511700', '四川省达州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511723', '开江县', '511700', '四川省达州市开江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511725', '渠县', '511700', '四川省达州市渠县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511821', '名山县', '511800', '四川省雅安市名山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511823', '汉源县', '511800', '四川省雅安市汉源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511901', '市辖区', '511900', '四川省巴中市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511923', '平昌县', '511900', '四川省巴中市平昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('512022', '乐至县', '512000', '四川省资阳市乐至县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513228', '黑水县', '513200', '四川省阿坝藏族羌族自治州黑水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513230', '壤塘县', '513200', '四川省阿坝藏族羌族自治州壤塘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230231', '拜泉县', '230200', '黑龙江省齐齐哈尔市拜泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230302', '鸡冠区', '230300', '黑龙江省鸡西市鸡冠区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230306', '城子河区', '230300', '黑龙江省鸡西市城子河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230402', '向阳区', '230400', '黑龙江省鹤岗市向阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230406', '东山区', '230400', '黑龙江省鹤岗市东山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230422', '绥滨县', '230400', '黑龙江省鹤岗市绥滨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230505', '四方台区', '230500', '黑龙江省双鸭山市四方台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230523', '宝清县', '230500', '黑龙江省双鸭山市宝清县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230604', '让胡路区', '230600', '黑龙江省大庆市让胡路区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230622', '肇源县', '230600', '黑龙江省大庆市肇源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230624', '杜尔伯特蒙古族自治县', '230600', '黑龙江省大庆市杜尔伯特蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230707', '新青区', '230700', '黑龙江省伊春市新青区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230711', '乌马河区', '230700', '黑龙江省伊春市乌马河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230716', '上甘岭区', '230700', '黑龙江省伊春市上甘岭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230803', '向阳区', '230800', '黑龙江省佳木斯市向阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230822', '桦南县', '230800', '黑龙江省佳木斯市桦南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230881', '同江市', '230800', '黑龙江省佳木斯市同江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230902', '新兴区', '230900', '黑龙江省七台河市新兴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231001', '市辖区', '231000', '黑龙江省牡丹江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231005', '西安区', '231000', '黑龙江省牡丹江市西安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231083', '海林市', '231000', '黑龙江省牡丹江市海林市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231101', '市辖区', '231100', '黑龙江省黑河市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231124', '孙吴县', '231100', '黑龙江省黑河市孙吴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231202', '北林区', '231200', '黑龙江省绥化市北林区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231223', '青冈县', '231200', '黑龙江省绥化市青冈县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231281', '安达市', '231200', '黑龙江省绥化市安达市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('232722', '塔河县', '232700', '黑龙江省大兴安岭地区塔河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310105', '长宁区', '310100', '上海市长宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310108', '闸北区', '310100', '上海市闸北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310115', '浦东新区', '310100', '上海市浦东新区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310120', '奉贤区', '310100', '上海市奉贤区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320103', '白下区', '320100', '江苏省南京市白下区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320106', '鼓楼区', '320100', '江苏省南京市鼓楼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320114', '雨花台区', '320100', '江苏省南京市雨花台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320202', '崇安区', '320200', '江苏省无锡市崇安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320205', '锡山区', '320200', '江苏省无锡市锡山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320282', '宜兴市', '320200', '江苏省无锡市宜兴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320305', '贾汪区', '320300', '江苏省徐州市贾汪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320322', '沛县', '320300', '江苏省徐州市沛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320401', '市辖区', '320400', '江苏省常州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320405', '戚墅堰区', '320400', '江苏省常州市戚墅堰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320502', '沧浪区', '320500', '江苏省苏州市沧浪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320506', '吴中区', '320500', '江苏省苏州市吴中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320583', '昆山市', '320500', '江苏省苏州市昆山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320601', '市辖区', '320600', '江苏省南通市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320621', '海安县', '320600', '江苏省南通市海安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320701', '市辖区', '320700', '江苏省连云港市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320721', '赣榆县', '320700', '江苏省连云港市赣榆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320801', '市辖区', '320800', '江苏省淮安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320811', '清浦区', '320800', '江苏省淮安市清浦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320830', '盱眙县', '320800', '江苏省淮安市盱眙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320903', '盐都区', '320900', '江苏省盐城市盐都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320924', '射阳县', '320900', '江苏省盐城市射阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321001', '市辖区', '321000', '江苏省扬州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321012', '江都区', '321000', '江苏省扬州市江都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321111', '润州区', '321100', '江苏省镇江市润州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321183', '句容市', '321100', '江苏省镇江市句容市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321281', '兴化市', '321200', '江苏省泰州市兴化市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321322', '沭阳县', '321300', '江苏省宿迁市沭阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330102', '上城区', '330100', '浙江省杭州市上城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330108', '滨江区', '330100', '浙江省杭州市滨江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330127', '淳安县', '330100', '浙江省杭州市淳安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330201', '市辖区', '330200', '浙江省宁波市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330206', '北仑区', '330200', '浙江省宁波市北仑区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330225', '象山县', '330200', '浙江省宁波市象山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330283', '奉化市', '330200', '浙江省宁波市奉化市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330304', '瓯海区', '330300', '浙江省温州市瓯海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330329', '泰顺县', '330300', '浙江省温州市泰顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330401', '市辖区', '330400', '浙江省嘉兴市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330424', '海盐县', '330400', '浙江省嘉兴市海盐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330501', '市辖区', '330500', '浙江省湖州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330522', '长兴县', '330500', '浙江省湖州市长兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330602', '越城区', '330600', '浙江省绍兴市越城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330701', '市辖区', '330700', '浙江省金华市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330782', '义乌市', '330700', '浙江省金华市义乌市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330802', '柯城区', '330800', '浙江省衢州市柯城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330825', '龙游县', '330800', '浙江省衢州市龙游县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330903', '普陀区', '330900', '浙江省舟山市普陀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331001', '市辖区', '331000', '浙江省台州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331023', '天台县', '331000', '浙江省台州市天台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331101', '市辖区', '331100', '浙江省丽水市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331124', '松阳县', '331100', '浙江省丽水市松阳县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331126', '庆元县', '331100', '浙江省丽水市庆元县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331127', '景宁畲族自治县', '331100', '浙江省丽水市景宁畲族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340103', '庐阳区', '340100', '安徽省合肥市庐阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340121', '长丰县', '340100', '安徽省合肥市长丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340181', '巢湖市', '340100', '安徽省合肥市巢湖市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340207', '鸠江区', '340200', '安徽省芜湖市鸠江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340222', '繁昌县', '340200', '安徽省芜湖市繁昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340323', '固镇县', '340300', '安徽省蚌埠市固镇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340403', '田家庵区', '340400', '安徽省淮南市田家庵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340421', '凤台县', '340400', '安徽省淮南市凤台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340504', '雨山区', '340500', '安徽省马鞍山市雨山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340523', '和县', '340500', '安徽省马鞍山市和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340604', '烈山区', '340600', '安徽省淮北市烈山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340703', '狮子山区', '340700', '安徽省铜陵市狮子山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340802', '迎江区', '340800', '安徽省安庆市迎江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340824', '潜山县', '340800', '安徽省安庆市潜山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340828', '岳西县', '340800', '安徽省安庆市岳西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341003', '黄山区', '341000', '安徽省黄山市黄山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341023', '黟县', '341000', '安徽省黄山市黟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450323', '灵川县', '450300', '广西壮族自治区桂林市灵川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450326', '永福县', '450300', '广西壮族自治区桂林市永福县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450328', '龙胜各族自治县', '450300', '广西壮族自治区桂林市龙胜各族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450403', '万秀区', '450400', '广西壮族自治区梧州市万秀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450423', '蒙山县', '450400', '广西壮族自治区梧州市蒙山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450503', '银海区', '450500', '广西壮族自治区北海市银海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450602', '港口区', '450600', '广西壮族自治区防城港市港口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450681', '东兴市', '450600', '广西壮族自治区防城港市东兴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450721', '灵山县', '450700', '广西壮族自治区钦州市灵山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450803', '港南区', '450800', '广西壮族自治区贵港市港南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450901', '市辖区', '450900', '广西壮族自治区玉林市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450924', '兴业县', '450900', '广西壮族自治区玉林市兴业县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451021', '田阳县', '451000', '广西壮族自治区百色市田阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451025', '靖西县', '451000', '广西壮族自治区百色市靖西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451029', '田林县', '451000', '广西壮族自治区百色市田林县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451101', '市辖区', '451100', '广西壮族自治区贺州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451122', '钟山县', '451100', '广西壮族自治区贺州市钟山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451202', '金城江区', '451200', '广西壮族自治区河池市金城江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451225', '罗城仫佬族自治县', '451200', '广西壮族自治区河池市罗城仫佬族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451228', '都安瑶族自治县', '451200', '广西壮族自治区河池市都安瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451321', '忻城县', '451300', '广西壮族自治区来宾市忻城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451324', '金秀瑶族自治县', '451300', '广西壮族自治区来宾市金秀瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451423', '龙州县', '451400', '广西壮族自治区崇左市龙州县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460101', '市辖区', '460100', '海南省海口市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460107', '琼山区', '460100', '海南省海口市琼山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469002', '琼海市', '469000', '海南省省直辖县级行政区划琼海市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469022', '屯昌县', '469000', '海南省省直辖县级行政区划屯昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469025', '白沙黎族自治县', '469000', '海南省省直辖县级行政区划白沙黎族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469027', '乐东黎族自治县', '469000', '海南省省直辖县级行政区划乐东黎族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469030', '琼中黎族苗族自治县', '469000', '海南省省直辖县级行政区划琼中黎族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469032', '南沙群岛', '469000', '海南省省直辖县级行政区划南沙群岛', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500103', '渝中区', '500100', '重庆市渝中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500106', '沙坪坝区', '500100', '重庆市沙坪坝区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500112', '渝北区', '500100', '重庆市渝北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500115', '长寿区', '500100', '重庆市长寿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500119', '南川区', '500100', '重庆市南川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500229', '城口县', '500200', '重庆市县城口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500234', '开县', '500200', '重庆市县开县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500238', '巫溪县', '500200', '重庆市县巫溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500241', '秀山土家族苗族自治县', '500200', '重庆市县秀山土家族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510105', '青羊区', '510100', '四川省成都市青羊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510108', '成华区', '510100', '四川省成都市成华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510115', '温江区', '510100', '四川省成都市温江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510129', '大邑县', '510100', '四川省成都市大邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510182', '彭州市', '510100', '四川省成都市彭州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510311', '沿滩区', '510300', '四川省自贡市沿滩区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510403', '西区', '510400', '四川省攀枝花市西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510421', '米易县', '510400', '四川省攀枝花市米易县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510521', '泸县', '510500', '四川省泸州市泸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510525', '古蔺县', '510500', '四川省泸州市古蔺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510626', '罗江县', '510600', '四川省德阳市罗江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510701', '市辖区', '510700', '四川省绵阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510723', '盐亭县', '510700', '四川省绵阳市盐亭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510727', '平武县', '510700', '四川省绵阳市平武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510801', '市辖区', '510800', '四川省广元市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510823', '剑阁县', '510800', '四川省广元市剑阁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510904', '安居区', '510900', '四川省遂宁市安居区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511001', '市辖区', '511000', '四川省内江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511024', '威远县', '511000', '四川省内江市威远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511102', '市中区', '511100', '四川省乐山市市中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511123', '犍为县', '511100', '四川省乐山市犍为县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511181', '峨眉山市', '511100', '四川省乐山市峨眉山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511304', '嘉陵区', '511300', '四川省南充市嘉陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511324', '仪陇县', '511300', '四川省南充市仪陇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511402', '东坡区', '511400', '四川省眉山市东坡区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511423', '洪雅县', '511400', '四川省眉山市洪雅县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511502', '翠屏区', '511500', '四川省宜宾市翠屏区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511524', '长宁县', '511500', '四川省宜宾市长宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511528', '兴文县', '511500', '四川省宜宾市兴文县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511602', '广安区', '511600', '四川省广安市广安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511702', '通川区', '511700', '四川省达州市通川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511724', '大竹县', '511700', '四川省达州市大竹县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511802', '雨城区', '511800', '四川省雅安市雨城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511824', '石棉县', '511800', '四川省雅安市石棉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511827', '宝兴县', '511800', '四川省雅安市宝兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511922', '南江县', '511900', '四川省巴中市南江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('512021', '安岳县', '512000', '四川省资阳市安岳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513226', '金川县', '513200', '四川省阿坝藏族羌族自治州金川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513227', '小金县', '513200', '四川省阿坝藏族羌族自治州小金县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513231', '阿坝县', '513200', '四川省阿坝藏族羌族自治州阿坝县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513233', '红原县', '513200', '四川省阿坝藏族羌族自治州红原县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513323', '丹巴县', '513300', '四川省甘孜藏族自治州丹巴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513327', '炉霍县', '513300', '四川省甘孜藏族自治州炉霍县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513331', '白玉县', '513300', '四川省甘孜藏族自治州白玉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513333', '色达县', '513300', '四川省甘孜藏族自治州色达县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513337', '稻城县', '513300', '四川省甘孜藏族自治州稻城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513422', '木里藏族自治县', '513400', '四川省凉山彝族自治州木里藏族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513426', '会东县', '513400', '四川省凉山彝族自治州会东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513430', '金阳县', '513400', '四川省凉山彝族自治州金阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513432', '喜德县', '513400', '四川省凉山彝族自治州喜德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513435', '甘洛县', '513400', '四川省凉山彝族自治州甘洛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520102', '南明区', '520100', '贵州省贵阳市南明区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520113', '白云区', '520100', '贵州省贵阳市白云区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520123', '修文县', '520100', '贵州省贵阳市修文县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520203', '六枝特区', '520200', '贵州省六盘水市六枝特区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520302', '红花岗区', '520300', '贵州省遵义市红花岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520325', '道真仡佬族苗族自治县', '520300', '贵州省遵义市道真仡佬族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520329', '余庆县', '520300', '贵州省遵义市余庆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520382', '仁怀市', '520300', '贵州省遵义市仁怀市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520422', '普定县', '520400', '贵州省安顺市普定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520424', '关岭布依族苗族自治县', '520400', '贵州省安顺市关岭布依族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520523', '金沙县', '520500', '贵州省毕节市金沙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520526', '威宁彝族回族苗族自治县', '520500', '贵州省毕节市威宁彝族回族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520622', '玉屏侗族自治县', '520600', '贵州省铜仁市玉屏侗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520627', '沿河土家族自治县', '520600', '贵州省铜仁市沿河土家族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522322', '兴仁县', '522300', '贵州省黔西南布依族苗族自治州兴仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522323', '普安县', '522300', '贵州省黔西南布依族苗族自治州普安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522327', '册亨县', '522300', '贵州省黔西南布依族苗族自治州册亨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522601', '凯里市', '522600', '贵州省黔东南苗族侗族自治州凯里市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522625', '镇远县', '522600', '贵州省黔东南苗族侗族自治州镇远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522629', '剑河县', '522600', '贵州省黔东南苗族侗族自治州剑河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522630', '台江县', '522600', '贵州省黔东南苗族侗族自治州台江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522634', '雷山县', '522600', '贵州省黔东南苗族侗族自治州雷山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522636', '丹寨县', '522600', '贵州省黔东南苗族侗族自治州丹寨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522723', '贵定县', '522700', '贵州省黔南布依族苗族自治州贵定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522726', '独山县', '522700', '贵州省黔南布依族苗族自治州独山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522729', '长顺县', '522700', '贵州省黔南布依族苗族自治州长顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522731', '惠水县', '522700', '贵州省黔南布依族苗族自治州惠水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530113', '东川区', '530100', '云南省昆明市东川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530125', '宜良县', '530100', '云南省昆明市宜良县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530126', '石林彝族自治县', '530100', '云南省昆明市石林彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530301', '市辖区', '530300', '云南省曲靖市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530322', '陆良县', '530300', '云南省曲靖市陆良县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530326', '会泽县', '530300', '云南省曲靖市会泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530402', '红塔区', '530400', '云南省玉溪市红塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530424', '华宁县', '530400', '云南省玉溪市华宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530427', '新平彝族傣族自治县', '530400', '云南省玉溪市新平彝族傣族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530502', '隆阳区', '530500', '云南省保山市隆阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530524', '昌宁县', '530500', '云南省保山市昌宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530623', '盐津县', '530600', '云南省昭通市盐津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530627', '镇雄县', '530600', '云南省昭通市镇雄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530701', '市辖区', '530700', '云南省丽江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530721', '玉龙纳西族自治县', '530700', '云南省丽江市玉龙纳西族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530821', '宁洱哈尼族彝族自治县', '530800', '云南省普洱市宁洱哈尼族彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530824', '景谷傣族彝族自治县', '530800', '云南省普洱市景谷傣族彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530827', '孟连傣族拉祜族佤族自治县', '530800', '云南省普洱市孟连傣族拉祜族佤族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530902', '临翔区', '530900', '云南省临沧市临翔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530923', '永德县', '530900', '云南省临沧市永德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900', '云南省临沧市双江拉祜族佤族布朗族傣族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532322', '双柏县', '532300', '云南省楚雄彝族自治州双柏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532326', '大姚县', '532300', '云南省楚雄彝族自治州大姚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532331', '禄丰县', '532300', '云南省楚雄彝族自治州禄丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532502', '开远市', '532500', '云南省红河哈尼族彝族自治州开远市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532525', '石屏县', '532500', '云南省红河哈尼族彝族自治州石屏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532526', '弥勒县', '532500', '云南省红河哈尼族彝族自治州弥勒县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532530', '金平苗族瑶族傣族自治县', '532500', '云南省红河哈尼族彝族自治州金平苗族瑶族傣族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532622', '砚山县', '532600', '云南省文山壮族苗族自治州砚山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532624', '麻栗坡县', '532600', '云南省文山壮族苗族自治州麻栗坡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532628', '富宁县', '532600', '云南省文山壮族苗族自治州富宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532801', '景洪市', '532800', '云南省西双版纳傣族自治州景洪市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532922', '漾濞彝族自治县', '532900', '云南省大理白族自治州漾濞彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532926', '南涧彝族自治县', '532900', '云南省大理白族自治州南涧彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532929', '云龙县', '532900', '云南省大理白族自治州云龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532932', '鹤庆县', '532900', '云南省大理白族自治州鹤庆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533122', '梁河县', '533100', '云南省德宏傣族景颇族自治州梁河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533123', '盈江县', '533100', '云南省德宏傣族景颇族自治州盈江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533321', '泸水县', '533300', '云南省怒江傈僳族自治州泸水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533325', '兰坪白族普米族自治县', '533300', '云南省怒江傈僳族自治州兰坪白族普米族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540102', '城关区', '540100', '西藏自治区拉萨市城关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540123', '尼木县', '540100', '西藏自治区拉萨市尼木县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('540127', '墨竹工卡县', '540100', '西藏自治区拉萨市墨竹工卡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542124', '类乌齐县', '542100', '西藏自治区昌都地区类乌齐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542128', '左贡县', '542100', '西藏自治区昌都地区左贡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542133', '边坝县', '542100', '西藏自治区昌都地区边坝县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542224', '桑日县', '542200', '西藏自治区山南地区桑日县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542228', '洛扎县', '542200', '西藏自治区山南地区洛扎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542233', '浪卡子县', '542200', '西藏自治区山南地区浪卡子县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542323', '江孜县', '542300', '西藏自治区日喀则地区江孜县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542327', '昂仁县', '542300', '西藏自治区日喀则地区昂仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542330', '仁布县', '542300', '西藏自治区日喀则地区仁布县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542334', '亚东县', '542300', '西藏自治区日喀则地区亚东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542336', '聂拉木县', '542300', '西藏自治区日喀则地区聂拉木县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542424', '聂荣县', '542400', '西藏自治区那曲地区聂荣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542427', '索县', '542400', '西藏自治区那曲地区索县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542521', '普兰县', '542500', '西藏自治区阿里地区普兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542525', '革吉县', '542500', '西藏自治区阿里地区革吉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542625', '波密县', '542600', '西藏自治区林芝地区波密县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610102', '新城区', '610100', '陕西省西安市新城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610112', '未央区', '610100', '陕西省西安市未央区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610116', '长安区', '610100', '陕西省西安市长安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610201', '市辖区', '610200', '陕西省铜川市市辖区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610222', '宜君县', '610200', '陕西省铜川市宜君县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610304', '陈仓区', '610300', '陕西省宝鸡市陈仓区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610324', '扶风县', '610300', '陕西省宝鸡市扶风县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341102', '琅琊区', '341100', '安徽省滁州市琅琊区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341125', '定远县', '341100', '安徽省滁州市定远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341201', '市辖区', '341200', '安徽省阜阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341222', '太和县', '341200', '安徽省阜阳市太和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341301', '市辖区', '341300', '安徽省宿州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341323', '灵璧县', '341300', '安徽省宿州市灵璧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341503', '裕安区', '341500', '安徽省六安市裕安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341524', '金寨县', '341500', '安徽省六安市金寨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341621', '涡阳县', '341600', '安徽省亳州市涡阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341722', '石台县', '341700', '安徽省池州市石台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341802', '宣州区', '341800', '安徽省宣城市宣州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341824', '绩溪县', '341800', '安徽省宣城市绩溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350102', '鼓楼区', '350100', '福建省福州市鼓楼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350111', '晋安区', '350100', '福建省福州市晋安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350124', '闽清县', '350100', '福建省福州市闽清县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350181', '福清市', '350100', '福建省福州市福清市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350211', '集美区', '350200', '福建省厦门市集美区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350302', '城厢区', '350300', '福建省莆田市城厢区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350322', '仙游县', '350300', '福建省莆田市仙游县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350403', '三元区', '350400', '福建省三明市三元区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350425', '大田县', '350400', '福建省三明市大田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350481', '永安市', '350400', '福建省三明市永安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350503', '丰泽区', '350500', '福建省泉州市丰泽区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350524', '安溪县', '350500', '福建省泉州市安溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350581', '石狮市', '350500', '福建省泉州市石狮市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350602', '芗城区', '350600', '福建省漳州市芗城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350623', '漳浦县', '350600', '福建省漳州市漳浦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350627', '南靖县', '350600', '福建省漳州市南靖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350721', '顺昌县', '350700', '福建省南平市顺昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350725', '政和县', '350700', '福建省南平市政和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350783', '建瓯市', '350700', '福建省南平市建瓯市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350821', '长汀县', '350800', '福建省龙岩市长汀县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350825', '连城县', '350800', '福建省龙岩市连城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350902', '蕉城区', '350900', '福建省宁德市蕉城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350926', '柘荣县', '350900', '福建省宁德市柘荣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360102', '东湖区', '360100', '江西省南昌市东湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360105', '湾里区', '360100', '江西省南昌市湾里区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360123', '安义县', '360100', '江西省南昌市安义县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360203', '珠山区', '360200', '江西省景德镇市珠山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360301', '市辖区', '360300', '江西省萍乡市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360322', '上栗县', '360300', '江西省萍乡市上栗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360403', '浔阳区', '360400', '江西省九江市浔阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360425', '永修县', '360400', '江西省九江市永修县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360428', '都昌县', '360400', '江西省九江市都昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360482', '共青城市', '360400', '江西省九江市共青城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360622', '余江县', '360600', '江西省鹰潭市余江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360721', '赣县', '360700', '江西省赣州市赣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360724', '上犹县', '360700', '江西省赣州市上犹县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360728', '定南县', '360700', '江西省赣州市定南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360732', '兴国县', '360700', '江西省赣州市兴国县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360782', '南康市', '360700', '江西省赣州市南康市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360821', '吉安县', '360800', '江西省吉安市吉安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360825', '永丰县', '360800', '江西省吉安市永丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360829', '安福县', '360800', '江西省吉安市安福县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360901', '市辖区', '360900', '江西省宜春市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360923', '上高县', '360900', '江西省宜春市上高县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360981', '丰城市', '360900', '江西省宜春市丰城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361002', '临川区', '361000', '江西省抚州市临川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361025', '乐安县', '361000', '江西省抚州市乐安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361029', '东乡县', '361000', '江西省抚州市东乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361125', '横峰县', '361100', '江西省上饶市横峰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361128', '鄱阳县', '361100', '江西省上饶市鄱阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370101', '市辖区', '370100', '山东省济南市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370113', '长清区', '370100', '山东省济南市长清区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370125', '济阳县', '370100', '山东省济南市济阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370201', '市辖区', '370200', '山东省青岛市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370203', '市北区', '370200', '山东省青岛市市北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370211', '黄岛区', '370200', '山东省青岛市黄岛区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370213', '李沧区', '370200', '山东省青岛市李沧区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370283', '平度市', '370200', '山东省青岛市平度市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370301', '市辖区', '370300', '山东省淄博市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370321', '桓台县', '370300', '山东省淄博市桓台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370402', '市中区', '370400', '山东省枣庄市市中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370405', '台儿庄区', '370400', '山东省枣庄市台儿庄区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370502', '东营区', '370500', '山东省东营市东营区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370523', '广饶县', '370500', '山东省东营市广饶县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370683', '莱州市', '370600', '山东省烟台市莱州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370687', '海阳市', '370600', '山东省烟台市海阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370704', '坊子区', '370700', '山东省潍坊市坊子区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370781', '青州市', '370700', '山东省潍坊市青州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370784', '安丘市', '370700', '山东省潍坊市安丘市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370802', '市中区', '370800', '山东省济宁市市中区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370830', '汶上县', '370800', '山东省济宁市汶上县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370881', '曲阜市', '370800', '山东省济宁市曲阜市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370902', '泰山区', '370900', '山东省泰安市泰山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370982', '新泰市', '370900', '山东省泰安市新泰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371081', '文登市', '371000', '山东省威海市文登市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371101', '市辖区', '371100', '山东省日照市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371202', '莱城区', '371200', '山东省莱芜市莱城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371311', '罗庄区', '371300', '山东省临沂市罗庄区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371323', '沂水县', '371300', '山东省临沂市沂水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371401', '市辖区', '371400', '山东省德州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371425', '齐河县', '371400', '山东省德州市齐河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371481', '乐陵市', '371400', '山东省德州市乐陵市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371502', '东昌府区', '371500', '山东省聊城市东昌府区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371524', '东阿县', '371500', '山东省聊城市东阿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371601', '市辖区', '371600', '山东省滨州市市辖区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371625', '博兴县', '371600', '山东省滨州市博兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371721', '曹县', '371700', '山东省菏泽市曹县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371724', '巨野县', '371700', '山东省菏泽市巨野县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371728', '东明县', '371700', '山东省菏泽市东明县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410104', '管城回族区', '410100', '河南省郑州市管城回族区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410181', '巩义市', '410100', '河南省郑州市巩义市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410185', '登封市', '410100', '河南省郑州市登封市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410204', '鼓楼区', '410200', '河南省开封市鼓楼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410221', '杞县', '410200', '河南省开封市杞县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410225', '兰考县', '410200', '河南省开封市兰考县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410304', '廛河回族区', '410300', '河南省洛阳市廛河回族区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410323', '新安县', '410300', '河南省洛阳市新安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410327', '宜阳县', '410300', '河南省洛阳市宜阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410401', '市辖区', '410400', '河南省平顶山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410411', '湛河区', '410400', '河南省平顶山市湛河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410425', '郏县', '410400', '河南省平顶山市郏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410501', '市辖区', '410500', '河南省安阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410506', '龙安区', '410500', '河南省安阳市龙安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410527', '内黄县', '410500', '河南省安阳市内黄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410603', '山城区', '410600', '河南省鹤壁市山城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410703', '卫滨区', '410700', '河南省新乡市卫滨区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410721', '新乡县', '410700', '河南省新乡市新乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410727', '封丘县', '410700', '河南省新乡市封丘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410801', '市辖区', '410800', '河南省焦作市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410811', '山阳区', '410800', '河南省焦作市山阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410823', '武陟县', '410800', '河南省焦作市武陟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410922', '清丰县', '410900', '河南省濮阳市清丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410928', '濮阳县', '410900', '河南省濮阳市濮阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411024', '鄢陵县', '411000', '河南省许昌市鄢陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411101', '市辖区', '411100', '河南省漯河市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411104', '召陵区', '411100', '河南省漯河市召陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411202', '湖滨区', '411200', '河南省三门峡市湖滨区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411281', '义马市', '411200', '河南省三门峡市义马市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411321', '南召县', '411300', '河南省南阳市南召县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411325', '内乡县', '411300', '河南省南阳市内乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411329', '新野县', '411300', '河南省南阳市新野县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411402', '梁园区', '411400', '河南省商丘市梁园区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411424', '柘城县', '411400', '河南省商丘市柘城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411501', '市辖区', '411500', '河南省信阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411522', '光山县', '411500', '河南省信阳市光山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411526', '潢川县', '411500', '河南省信阳市潢川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411602', '川汇区', '411600', '河南省周口市川汇区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411623', '商水县', '411600', '河南省周口市商水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411681', '项城市', '411600', '河南省周口市项城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411722', '上蔡县', '411700', '河南省驻马店市上蔡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411726', '泌阳县', '411700', '河南省驻马店市泌阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411729', '新蔡县', '411700', '河南省驻马店市新蔡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420103', '江汉区', '420100', '湖北省武汉市江汉区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420107', '青山区', '420100', '湖北省武汉市青山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420114', '蔡甸区', '420100', '湖北省武汉市蔡甸区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420117', '新洲区', '420100', '湖北省武汉市新洲区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420204', '下陆区', '420200', '湖北省黄石市下陆区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110101', '东城区', '110100', '北京市东城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110105', '朝阳区', '110100', '北京市朝阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110107', '石景山区', '110100', '北京市石景山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110109', '门头沟区', '110100', '北京市门头沟区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110113', '顺义区', '110100', '北京市顺义区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110115', '大兴区', '110100', '北京市大兴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110117', '平谷区', '110100', '北京市平谷区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120101', '和平区', '120100', '天津市和平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120103', '河西区', '120100', '天津市河西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120105', '河北区', '120100', '天津市河北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120110', '东丽区', '120100', '天津市东丽区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120112', '津南区', '120100', '天津市津南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120115', '宝坻区', '120100', '天津市宝坻区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120221', '宁河县', '120200', '天津市县宁河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130101', '市辖区', '130100', '河北省石家庄市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130103', '桥东区', '130100', '河北省石家庄市桥东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130105', '新华区', '130100', '河北省石家庄市新华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130107', '井陉矿区', '130100', '河北省石家庄市井陉矿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130125', '行唐县', '130100', '河北省石家庄市行唐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130129', '赞皇县', '130100', '河北省石家庄市赞皇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130133', '赵县', '130100', '河北省石家庄市赵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130184', '新乐市', '130100', '河北省石家庄市新乐市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130202', '路南区', '130200', '河北省唐山市路南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130207', '丰南区', '130200', '河北省唐山市丰南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130225', '乐亭县', '130200', '河北省唐山市乐亭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130281', '遵化市', '130200', '河北省唐山市遵化市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130302', '海港区', '130300', '河北省秦皇岛市海港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130322', '昌黎县', '130300', '河北省秦皇岛市昌黎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130404', '复兴区', '130400', '河北省邯郸市复兴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130424', '成安县', '130400', '河北省邯郸市成安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130430', '邱县', '130400', '河北省邯郸市邱县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130434', '魏县', '130400', '河北省邯郸市魏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130501', '市辖区', '130500', '河北省邢台市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130522', '临城县', '130500', '河北省邢台市临城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130526', '任县', '130500', '河北省邢台市任县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130530', '新河县', '130500', '河北省邢台市新河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130533', '威县', '130500', '河北省邢台市威县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130582', '沙河市', '130500', '河北省邢台市沙河市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130604', '南市区', '130600', '河北省保定市南市区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130625', '徐水县', '130600', '河北省保定市徐水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130629', '容城县', '130600', '河北省保定市容城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130633', '易县', '130600', '河北省保定市易县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130637', '博野县', '130600', '河北省保定市博野县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130683', '安国市', '130600', '河北省保定市安国市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130721', '宣化县', '130700', '河北省张家口市宣化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130724', '沽源县', '130700', '河北省张家口市沽源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130728', '怀安县', '130700', '河北省张家口市怀安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130732', '赤城县', '130700', '河北省张家口市赤城县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130821', '承德县', '130800', '河北省承德市承德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130824', '滦平县', '130800', '河北省承德市滦平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130827', '宽城满族自治县', '130800', '河北省承德市宽城满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130902', '新华区', '130900', '河北省沧州市新华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130923', '东光县', '130900', '河北省沧州市东光县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130927', '南皮县', '130900', '河北省沧州市南皮县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130981', '泊头市', '130900', '河北省沧州市泊头市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131001', '市辖区', '131000', '河北省廊坊市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131023', '永清县', '131000', '河北省廊坊市永清县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131028', '大厂回族自治县', '131000', '河北省廊坊市大厂回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131121', '枣强县', '131100', '河北省衡水市枣强县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131125', '安平县', '131100', '河北省衡水市安平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131181', '冀州市', '131100', '河北省衡水市冀州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140106', '迎泽区', '140100', '山西省太原市迎泽区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140109', '万柏林区', '140100', '山西省太原市万柏林区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140201', '市辖区', '140200', '山西省大同市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140212', '新荣区', '140200', '山西省大同市新荣区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140223', '广灵县', '140200', '山西省大同市广灵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140227', '大同县', '140200', '山西省大同市大同县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140322', '盂县', '140300', '山西省阳泉市盂县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140421', '长治县', '140400', '山西省长治市长治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140426', '黎城县', '140400', '山西省长治市黎城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140430', '沁县', '140400', '山西省长治市沁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140501', '市辖区', '140500', '山西省晋城市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140524', '陵川县', '140500', '山西省晋城市陵川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140602', '朔城区', '140600', '山西省朔州市朔城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140701', '市辖区', '140700', '山西省晋中市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140723', '和顺县', '140700', '山西省晋中市和顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140726', '太谷县', '140700', '山西省晋中市太谷县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140781', '介休市', '140700', '山西省晋中市介休市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140822', '万荣县', '140800', '山西省运城市万荣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140826', '绛县', '140800', '山西省运城市绛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140830', '芮城县', '140800', '山西省运城市芮城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140921', '定襄县', '140900', '山西省忻州市定襄县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140925', '宁武县', '140900', '山西省忻州市宁武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140929', '岢岚县', '140900', '山西省忻州市岢岚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140981', '原平市', '140900', '山西省忻州市原平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141021', '曲沃县', '141000', '山西省临汾市曲沃县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141027', '浮山县', '141000', '山西省临汾市浮山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141031', '隰县', '141000', '山西省临汾市隰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141081', '侯马市', '141000', '山西省临汾市侯马市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141102', '离石区', '141100', '山西省吕梁市离石区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141124', '临县', '141100', '山西省吕梁市临县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141128', '方山县', '141100', '山西省吕梁市方山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141182', '汾阳市', '141100', '山西省吕梁市汾阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150104', '玉泉区', '150100', '内蒙古自治区呼和浩特市玉泉区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420301', '市辖区', '420300', '湖北省十堰市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420303', '张湾区', '420300', '湖北省十堰市张湾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420324', '竹溪县', '420300', '湖北省十堰市竹溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420502', '西陵区', '420500', '湖北省宜昌市西陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420506', '夷陵区', '420500', '湖北省宜昌市夷陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420528', '长阳土家族自治县', '420500', '湖北省宜昌市长阳土家族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420601', '市辖区', '420600', '湖北省襄阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420624', '南漳县', '420600', '湖北省襄阳市南漳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420683', '枣阳市', '420600', '湖北省襄阳市枣阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420702', '梁子湖区', '420700', '湖北省鄂州市梁子湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420802', '东宝区', '420800', '湖北省荆门市东宝区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420881', '钟祥市', '420800', '湖北省荆门市钟祥市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420923', '云梦县', '420900', '湖北省孝感市云梦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421001', '市辖区', '421000', '湖北省荆州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421023', '监利县', '421000', '湖北省荆州市监利县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421087', '松滋市', '421000', '湖北省荆州市松滋市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421121', '团风县', '421100', '湖北省黄冈市团风县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421125', '浠水县', '421100', '湖北省黄冈市浠水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421202', '咸安区', '421200', '湖北省咸宁市咸安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421223', '崇阳县', '421200', '湖北省咸宁市崇阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421303', '曾都区', '421300', '湖北省随州市曾都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422802', '利川市', '422800', '湖北省恩施土家族苗族自治州利川市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422823', '巴东县', '422800', '湖北省恩施土家族苗族自治州巴东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422828', '鹤峰县', '422800', '湖北省恩施土家族苗族自治州鹤峰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('429005', '潜江市', '429000', '湖北省省直辖县级行政区划潜江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430101', '市辖区', '430100', '湖南省长沙市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430105', '开福区', '430100', '湖南省长沙市开福区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430201', '市辖区', '430200', '湖南省株洲市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430211', '天元区', '430200', '湖南省株洲市天元区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430225', '炎陵县', '430200', '湖南省株洲市炎陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430302', '雨湖区', '430300', '湖南省湘潭市雨湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430382', '韶山市', '430300', '湖南省湘潭市韶山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430407', '石鼓区', '430400', '湖南省衡阳市石鼓区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430423', '衡山县', '430400', '湖南省衡阳市衡山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430482', '常宁市', '430400', '湖南省衡阳市常宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430511', '北塔区', '430500', '湖南省邵阳市北塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430524', '隆回县', '430500', '湖南省邵阳市隆回县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430528', '新宁县', '430500', '湖南省邵阳市新宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430601', '市辖区', '430600', '湖南省岳阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430621', '岳阳县', '430600', '湖南省岳阳市岳阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430682', '临湘市', '430600', '湖南省岳阳市临湘市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430721', '安乡县', '430700', '湖南省常德市安乡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430802', '永定区', '430800', '湖南省张家界市永定区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430822', '桑植县', '430800', '湖南省张家界市桑植县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430921', '南县', '430900', '湖南省益阳市南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431001', '市辖区', '431000', '湖南省郴州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431022', '宜章县', '431000', '湖南省郴州市宜章县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431027', '桂东县', '431000', '湖南省郴州市桂东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431102', '零陵区', '431100', '湖南省永州市零陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431122', '东安县', '431100', '湖南省永州市东安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431126', '宁远县', '431100', '湖南省永州市宁远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431201', '市辖区', '431200', '湖南省怀化市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431222', '沅陵县', '431200', '湖南省怀化市沅陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431227', '新晃侗族自治县', '431200', '湖南省怀化市新晃侗族自治县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431230', '通道侗族自治县', '431200', '湖南省怀化市通道侗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431321', '双峰县', '431300', '湖南省娄底市双峰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433101', '吉首市', '433100', '湖南省湘西土家族苗族自治州吉首市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433123', '凤凰县', '433100', '湖南省湘西土家族苗族自治州凤凰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433130', '龙山县', '433100', '湖南省湘西土家族苗族自治州龙山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440111', '白云区', '440100', '广东省广州市白云区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440115', '南沙区', '440100', '广东省广州市南沙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440201', '市辖区', '440200', '广东省韶关市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440224', '仁化县', '440200', '广东省韶关市仁化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440232', '乳源瑶族自治县', '440200', '广东省韶关市乳源瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440304', '福田区', '440300', '广东省深圳市福田区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440401', '市辖区', '440400', '广东省珠海市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440501', '市辖区', '440500', '广东省汕头市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440513', '潮阳区', '440500', '广东省汕头市潮阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440601', '市辖区', '440600', '广东省佛山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440606', '顺德区', '440600', '广东省佛山市顺德区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440703', '蓬江区', '440700', '广东省江门市蓬江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440785', '恩平市', '440700', '广东省江门市恩平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440803', '霞山区', '440800', '广东省湛江市霞山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440825', '徐闻县', '440800', '广东省湛江市徐闻县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440901', '市辖区', '440900', '广东省茂名市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440981', '高州市', '440900', '广东省茂名市高州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441201', '市辖区', '441200', '广东省肇庆市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441224', '怀集县', '441200', '广东省肇庆市怀集县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441302', '惠城区', '441300', '广东省惠州市惠城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441324', '龙门县', '441300', '广东省惠州市龙门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441421', '梅县', '441400', '广东省梅州市梅县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441426', '平远县', '441400', '广东省梅州市平远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441502', '城区', '441500', '广东省汕尾市城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320982', '大丰市', '320900', '江苏省盐城市大丰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321084', '高邮市', '321000', '江苏省扬州市高邮市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321182', '扬中市', '321100', '江苏省镇江市扬中市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321283', '泰兴市', '321200', '江苏省泰州市泰兴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321323', '泗阳县', '321300', '江苏省宿迁市泗阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330105', '拱墅区', '330100', '浙江省杭州市拱墅区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330185', '临安市', '330100', '浙江省杭州市临安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330211', '镇海区', '330200', '浙江省宁波市镇海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330301', '市辖区', '330300', '浙江省温州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330326', '平阳县', '330300', '浙江省温州市平阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330402', '南湖区', '330400', '浙江省嘉兴市南湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330483', '桐乡市', '330400', '浙江省嘉兴市桐乡市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330601', '市辖区', '330600', '浙江省绍兴市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330702', '婺城区', '330700', '浙江省金华市婺城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330783', '东阳市', '330700', '浙江省金华市东阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330824', '开化县', '330800', '浙江省衢州市开化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330921', '岱山县', '330900', '浙江省舟山市岱山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331022', '三门县', '331000', '浙江省台州市三门县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331102', '莲都区', '331100', '浙江省丽水市莲都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340124', '庐江县', '340100', '安徽省合肥市庐江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340221', '芜湖县', '340200', '安徽省芜湖市芜湖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350426', '尤溪县', '350400', '福建省三明市尤溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350501', '市辖区', '350500', '福建省泉州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350525', '永春县', '350500', '福建省泉州市永春县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350601', '市辖区', '350600', '福建省漳州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350628', '平和县', '350600', '福建省漳州市平和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350722', '浦城县', '350700', '福建省南平市浦城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350824', '武平县', '350800', '福建省龙岩市武平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350923', '屏南县', '350900', '福建省宁德市屏南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360101', '市辖区', '360100', '江西省南昌市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360122', '新建县', '360100', '江西省南昌市新建县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360222', '浮梁县', '360200', '江西省景德镇市浮梁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360323', '芦溪县', '360300', '江西省萍乡市芦溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360424', '修水县', '360400', '江西省九江市修水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360501', '市辖区', '360500', '江西省新余市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360681', '贵溪市', '360600', '江西省鹰潭市贵溪市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360725', '崇义县', '360700', '江西省赣州市崇义县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360731', '于都县', '360700', '江西省赣州市于都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360801', '市辖区', '360800', '江西省吉安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360824', '新干县', '360800', '江西省吉安市新干县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360902', '袁州区', '360900', '江西省宜春市袁州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210202', '中山区', '210200', '辽宁省大连市中山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210311', '千山区', '210300', '辽宁省鞍山市千山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210404', '望花区', '210400', '辽宁省抚顺市望花区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210503', '溪湖区', '210500', '辽宁省本溪市溪湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210522', '桓仁满族自治县', '210500', '辽宁省本溪市桓仁满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210711', '太和区', '210700', '辽宁省锦州市太和区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210802', '站前区', '210800', '辽宁省营口市站前区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210902', '海州区', '210900', '辽宁省阜新市海州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210922', '彰武县', '210900', '辽宁省阜新市彰武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211021', '辽阳县', '211000', '辽宁省辽阳市辽阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211201', '市辖区', '211200', '辽宁省铁岭市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211281', '调兵山市', '211200', '辽宁省铁岭市调兵山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211324', '喀喇沁左翼蒙古族自治县', '211300', '辽宁省朝阳市喀喇沁左翼蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220104', '朝阳区', '220100', '吉林省长春市朝阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220182', '榆树市', '220100', '吉林省长春市榆树市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220221', '永吉县', '220200', '吉林省吉林市永吉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220302', '铁西区', '220300', '吉林省四平市铁西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220402', '龙山区', '220400', '吉林省辽源市龙山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220621', '抚松县', '220600', '吉林省白山市抚松县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220721', '前郭尔罗斯蒙古族自治县', '220700', '吉林省松原市前郭尔罗斯蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441602', '源城区', '441600', '广东省河源市源城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441622', '龙川县', '441600', '广东省河源市龙川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441701', '市辖区', '441700', '广东省阳江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441781', '阳春市', '441700', '广东省阳江市阳春市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441821', '佛冈县', '441800', '广东省清远市佛冈县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441825', '连山壮族瑶族自治县', '441800', '广东省清远市连山壮族瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445121', '潮安县', '445100', '广东省潮州市潮安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445222', '揭西县', '445200', '广东省揭阳市揭西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445302', '云城区', '445300', '广东省云浮市云城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445381', '罗定市', '445300', '广东省云浮市罗定市', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450105', '江南区', '450100', '广西壮族自治区南宁市江南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450109', '邕宁区', '450100', '广西壮族自治区南宁市邕宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450125', '上林县', '450100', '广西壮族自治区南宁市上林县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450204', '柳南区', '450200', '广西壮族自治区柳州市柳南区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450222', '柳城县', '450200', '广西壮族自治区柳州市柳城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450305', '七星区', '450300', '广西壮族自治区桂林市七星区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654023', '霍城县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州霍城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654025', '新源县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州新源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654027', '特克斯县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州特克斯县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654201', '塔城市', '654200', '新疆维吾尔自治区塔城地区塔城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654223', '沙湾县', '654200', '新疆维吾尔自治区塔城地区沙湾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654225', '裕民县', '654200', '新疆维吾尔自治区塔城地区裕民县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654301', '阿勒泰市', '654300', '新疆维吾尔自治区阿勒泰地区阿勒泰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654322', '富蕴县', '654300', '新疆维吾尔自治区阿勒泰地区富蕴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654324', '哈巴河县', '654300', '新疆维吾尔自治区阿勒泰地区哈巴河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('659003', '图木舒克市', '659000', '新疆维吾尔自治区自治区直辖县级行政区划图木舒克市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150121', '土默特左旗', '150100', '内蒙古自治区呼和浩特市土默特左旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150123', '和林格尔县', '150100', '内蒙古自治区呼和浩特市和林格尔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150125', '武川县', '150100', '内蒙古自治区呼和浩特市武川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150204', '青山区', '150200', '内蒙古自治区包头市青山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150207', '九原区', '150200', '内蒙古自治区包头市九原区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150223', '达尔罕茂明安联合旗', '150200', '内蒙古自治区包头市达尔罕茂明安联合旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150402', '红山区', '150400', '内蒙古自治区赤峰市红山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150421', '阿鲁科尔沁旗', '150400', '内蒙古自治区赤峰市阿鲁科尔沁旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150425', '克什克腾旗', '150400', '内蒙古自治区赤峰市克什克腾旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150501', '市辖区', '150500', '内蒙古自治区通辽市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150521', '科尔沁左翼中旗', '150500', '内蒙古自治区通辽市科尔沁左翼中旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150581', '霍林郭勒市', '150500', '内蒙古自治区通辽市霍林郭勒市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150622', '准格尔旗', '150600', '内蒙古自治区鄂尔多斯市准格尔旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150623', '鄂托克前旗', '150600', '内蒙古自治区鄂尔多斯市鄂托克前旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150702', '海拉尔区', '150700', '内蒙古自治区呼伦贝尔市海拉尔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150722', '莫力达瓦达斡尔族自治旗', '150700', '内蒙古自治区呼伦贝尔市莫力达瓦达斡尔族自治旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150727', '新巴尔虎右旗', '150700', '内蒙古自治区呼伦贝尔市新巴尔虎右旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150783', '扎兰屯市', '150700', '内蒙古自治区呼伦贝尔市扎兰屯市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150801', '市辖区', '150800', '内蒙古自治区巴彦淖尔市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150821', '五原县', '150800', '内蒙古自治区巴彦淖尔市五原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150825', '乌拉特后旗', '150800', '内蒙古自治区巴彦淖尔市乌拉特后旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150902', '集宁区', '150900', '内蒙古自治区乌兰察布市集宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150924', '兴和县', '150900', '内蒙古自治区乌兰察布市兴和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150926', '察哈尔右翼前旗', '150900', '内蒙古自治区乌兰察布市察哈尔右翼前旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150981', '丰镇市', '150900', '内蒙古自治区乌兰察布市丰镇市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152224', '突泉县', '152200', '内蒙古自治区兴安盟突泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152522', '阿巴嘎旗', '152500', '内蒙古自治区锡林郭勒盟阿巴嘎旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152526', '西乌珠穆沁旗', '152500', '内蒙古自治区锡林郭勒盟西乌珠穆沁旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152529', '正镶白旗', '152500', '内蒙古自治区锡林郭勒盟正镶白旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152921', '阿拉善左旗', '152900', '内蒙古自治区阿拉善盟阿拉善左旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210102', '和平区', '210100', '辽宁省沈阳市和平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210105', '皇姑区', '210100', '辽宁省沈阳市皇姑区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210113', '沈北新区', '210100', '辽宁省沈阳市沈北新区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210124', '法库县', '210100', '辽宁省沈阳市法库县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210212', '旅顺口区', '210200', '辽宁省大连市旅顺口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210301', '市辖区', '210300', '辽宁省鞍山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210304', '立山区', '210300', '辽宁省鞍山市立山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210381', '海城市', '210300', '辽宁省鞍山市海城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210403', '东洲区', '210400', '辽宁省抚顺市东洲区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210422', '新宾满族自治县', '210400', '辽宁省抚顺市新宾满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210502', '平山区', '210500', '辽宁省本溪市平山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210604', '振安区', '210600', '辽宁省丹东市振安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210682', '凤城市', '210600', '辽宁省丹东市凤城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210726', '黑山县', '210700', '辽宁省锦州市黑山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210801', '市辖区', '210800', '辽宁省营口市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210811', '老边区', '210800', '辽宁省营口市老边区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210901', '市辖区', '210900', '辽宁省阜新市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210905', '清河门区', '210900', '辽宁省阜新市清河门区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211004', '宏伟区', '211000', '辽宁省辽阳市宏伟区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211121', '大洼县', '211100', '辽宁省盘锦市大洼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211202', '银州区', '211200', '辽宁省铁岭市银州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211224', '昌图县', '211200', '辽宁省铁岭市昌图县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211301', '市辖区', '211300', '辽宁省朝阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211381', '北票市', '211300', '辽宁省朝阳市北票市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211401', '市辖区', '211400', '辽宁省葫芦岛市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211404', '南票区', '211400', '辽宁省葫芦岛市南票区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220105', '二道区', '220100', '吉林省长春市二道区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220181', '九台市', '220100', '吉林省长春市九台市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220201', '市辖区', '220200', '吉林省吉林市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220211', '丰满区', '220200', '吉林省吉林市丰满区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220283', '舒兰市', '220200', '吉林省吉林市舒兰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220323', '伊通满族自治县', '220300', '吉林省四平市伊通满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220401', '市辖区', '220400', '吉林省辽源市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220601', '市辖区', '220600', '吉林省白山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220622', '靖宇县', '220600', '吉林省白山市靖宇县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220701', '市辖区', '220700', '吉林省松原市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220722', '长岭县', '220700', '吉林省松原市长岭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220724', '扶余县', '220700', '吉林省松原市扶余县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220821', '镇赉县', '220800', '吉林省白城市镇赉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222405', '龙井市', '222400', '吉林省延边朝鲜族自治州龙井市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222424', '汪清县', '222400', '吉林省延边朝鲜族自治州汪清县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230104', '道外区', '230100', '黑龙江省哈尔滨市道外区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230111', '呼兰区', '230100', '黑龙江省哈尔滨市呼兰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230125', '宾县', '230100', '黑龙江省哈尔滨市宾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230129', '延寿县', '230100', '黑龙江省哈尔滨市延寿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230184', '五常市', '230100', '黑龙江省哈尔滨市五常市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230206', '富拉尔基区', '230200', '黑龙江省齐齐哈尔市富拉尔基区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230221', '龙江县', '230200', '黑龙江省齐齐哈尔市龙江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230225', '甘南县', '230200', '黑龙江省齐齐哈尔市甘南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500242', '酉阳土家族苗族自治县', '500200', '重庆市县酉阳土家族苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510321', '荣县', '510300', '四川省自贡市荣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510603', '旌阳区', '510600', '四川省德阳市旌阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510821', '旺苍县', '510800', '四川省广元市旺苍县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511124', '井研县', '511100', '四川省乐山市井研县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511401', '市辖区', '511400', '四川省眉山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511525', '高县', '511500', '四川省宜宾市高县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511781', '万源市', '511700', '四川省达州市万源市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('512081', '简阳市', '512000', '四川省资阳市简阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513335', '巴塘县', '513300', '四川省甘孜藏族自治州巴塘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520121', '开阳县', '520100', '贵州省贵阳市开阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520328', '湄潭县', '520300', '贵州省遵义市湄潭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520521', '大方县', '520500', '贵州省毕节市大方县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520628', '松桃苗族自治县', '520600', '贵州省铜仁市松桃苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530102', '五华区', '530100', '云南省昆明市五华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530324', '罗平县', '530300', '云南省曲靖市罗平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530602', '昭阳区', '530600', '云南省昭通市昭阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530801', '市辖区', '530800', '云南省普洱市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530922', '云县', '530900', '云南省临沧市云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532523', '屏边苗族自治县', '532500', '云南省红河哈尼族彝族自治州屏边苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533422', '德钦县', '533400', '云南省迪庆藏族自治州德钦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542122', '江达县', '542100', '西藏自治区昌都地区江达县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542226', '曲松县', '542200', '西藏自治区山南地区曲松县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542329', '白朗县', '542300', '西藏自治区日喀则地区白朗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542425', '安多县', '542400', '西藏自治区那曲地区安多县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542623', '米林县', '542600', '西藏自治区林芝地区米林县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610203', '印台区', '610200', '陕西省铜川市印台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610425', '礼泉县', '610400', '陕西省咸阳市礼泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610582', '华阴市', '610500', '陕西省渭南市华阴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610723', '洋县', '610700', '陕西省汉中市洋县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610828', '佳县', '610800', '陕西省榆林市佳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611021', '洛南县', '611000', '陕西省商洛市洛南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620402', '白银区', '620400', '甘肃省白银市白银区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620721', '肃南裕固族自治县', '620700', '甘肃省张掖市肃南裕固族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621027', '镇原县', '621000', '甘肃省庆阳市镇原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621228', '两当县', '621200', '甘肃省陇南市两当县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630105', '城北区', '630100', '青海省西宁市城北区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632525', '贵南县', '632500', '青海省海南藏族自治州贵南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640106', '金凤区', '640100', '宁夏回族自治区银川市金凤区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640205', '惠农区', '640200', '宁夏回族自治区石嘴山市惠农区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640323', '盐池县', '640300', '宁夏回族自治区吴忠市盐池县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640423', '隆德县', '640400', '宁夏回族自治区固原市隆德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640522', '海原县', '640500', '宁夏回族自治区中卫市海原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650104', '新市区', '650100', '新疆维吾尔自治区乌鲁木齐市新市区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650201', '市辖区', '650200', '新疆维吾尔自治区克拉玛依市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652122', '鄯善县', '652100', '新疆维吾尔自治区吐鲁番地区鄯善县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652302', '阜康市', '652300', '新疆维吾尔自治区昌吉回族自治州阜康市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652822', '轮台县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州轮台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652829', '博湖县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州博湖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652929', '柯坪县', '652900', '新疆维吾尔自治区阿克苏地区柯坪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653121', '疏附县', '653100', '新疆维吾尔自治区喀什地区疏附县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653127', '麦盖提县', '653100', '新疆维吾尔自治区喀什地区麦盖提县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653221', '和田县', '653200', '新疆维吾尔自治区和田地区和田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653226', '于田县', '653200', '新疆维吾尔自治区和田地区于田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654024', '巩留县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州巩留县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654321', '布尔津县', '654300', '新疆维吾尔自治区阿勒泰地区布尔津县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222404', '珲春市', '222400', '吉林省延边朝鲜族自治州珲春市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230205', '昂昂溪区', '230200', '黑龙江省齐齐哈尔市昂昂溪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230405', '兴安区', '230400', '黑龙江省鹤岗市兴安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230621', '肇州县', '230600', '黑龙江省大庆市肇州县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230722', '嘉荫县', '230700', '黑龙江省伊春市嘉荫县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513436', '美姑县', '513400', '四川省凉山彝族自治州美姑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520303', '汇川区', '520300', '贵州省遵义市汇川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520502', '七星关区', '520500', '贵州省毕节市七星关区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522301', '兴义市', '522300', '贵州省黔西南布依族苗族自治州兴义市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530103', '盘龙区', '530100', '云南省昆明市盘龙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530421', '江川县', '530400', '云南省玉溪市江川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530630', '水富县', '530600', '云南省昭通市水富县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532327', '永仁县', '532300', '云南省楚雄彝族自治州永仁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533102', '瑞丽市', '533100', '云南省德宏傣族景颇族自治州瑞丽市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542132', '洛隆县', '542100', '西藏自治区昌都地区洛隆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542232', '错那县', '542200', '西藏自治区山南地区错那县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542423', '比如县', '542400', '西藏自治区那曲地区比如县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542524', '日土县', '542500', '西藏自治区阿里地区日土县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610103', '碑林区', '610100', '陕西省西安市碑林区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610301', '市辖区', '610300', '陕西省宝鸡市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610422', '三原县', '610400', '陕西省咸阳市三原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610525', '澄城县', '610500', '陕西省渭南市澄城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610629', '洛川县', '610600', '陕西省延安市洛川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610821', '神木县', '610800', '陕西省榆林市神木县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611022', '丹凤县', '611000', '陕西省商洛市丹凤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620503', '麦积区', '620500', '甘肃省天水市麦积区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620901', '市辖区', '620900', '甘肃省酒泉市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621221', '成县', '621200', '甘肃省陇南市成县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630104', '城西区', '630100', '青海省西宁市城西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361124', '铅山县', '361100', '江西省上饶市铅山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370124', '平阴县', '370100', '山东省济南市平阴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370401', '市辖区', '370400', '山东省枣庄市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370613', '莱山区', '370600', '山东省烟台市莱山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370783', '寿光市', '370700', '山东省潍坊市寿光市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370901', '市辖区', '370900', '山东省泰安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371201', '市辖区', '371200', '山东省莱芜市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371402', '德城区', '371400', '山东省德州市德城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371624', '沾化县', '371600', '山东省滨州市沾化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410201', '市辖区', '410200', '河南省开封市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410328', '洛宁县', '410300', '河南省洛阳市洛宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410602', '鹤山区', '410600', '河南省鹤壁市鹤山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410825', '温县', '410800', '河南省焦作市温县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411221', '渑池县', '411200', '河南省三门峡市渑池县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411330', '桐柏县', '411300', '河南省南阳市桐柏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411523', '新县', '411500', '河南省信阳市新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411628', '鹿邑县', '411600', '河南省周口市鹿邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420104', '硚口区', '420100', '湖北省武汉市硚口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130108', '裕华区', '130100', '河北省石家庄市裕华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130185', '鹿泉市', '130100', '河北省石家庄市鹿泉市', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130402', '邯山区', '130400', '河北省邯郸市邯山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130525', '隆尧县', '130500', '河北省邢台市隆尧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130628', '高阳县', '130600', '河北省保定市高阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130727', '阳原县', '130700', '河北省张家口市阳原县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130928', '吴桥县', '130900', '河北省沧州市吴桥县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131128', '阜城县', '131100', '河北省衡水市阜城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140321', '平定县', '140300', '山西省阳泉市平定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140502', '城区', '140500', '山西省晋城市城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140702', '榆次区', '140700', '山西省晋中市榆次区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140825', '新绛县', '140800', '山西省运城市新绛县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140926', '静乐县', '140900', '山西省忻州市静乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141028', '吉县', '141000', '山西省临汾市吉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141125', '柳林县', '141100', '山西省吕梁市柳林县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420322', '郧西县', '420300', '湖北省十堰市郧西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420682', '老河口市', '420600', '湖北省襄阳市老河口市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421083', '洪湖市', '421000', '湖北省荆州市洪湖市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422801', '恩施市', '422800', '湖北省恩施土家族苗族自治州恩施市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430381', '湘乡市', '430300', '湖南省湘潭市湘乡市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430525', '洞口县', '430500', '湖南省邵阳市洞口县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430724', '临澧县', '430700', '湖南省常德市临澧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431002', '北湖区', '431000', '湖南省郴州市北湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431125', '江永县', '431100', '湖南省永州市江永县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431322', '新化县', '431300', '湖南省娄底市新化县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440112', '黄埔区', '440100', '广东省广州市黄埔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440233', '新丰县', '440200', '广东省韶关市新丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440512', '濠江区', '440500', '广东省汕头市濠江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440823', '遂溪县', '440800', '广东省湛江市遂溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441323', '惠东县', '441300', '广东省惠州市惠东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441723', '阳东县', '441700', '广东省阳江市阳东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445323', '云安县', '445300', '广东省云浮市云安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450122', '武鸣县', '450100', '广西壮族自治区南宁市武鸣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450223', '鹿寨县', '450200', '广西壮族自治区柳州市鹿寨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450325', '兴安县', '450300', '广西壮族自治区桂林市兴安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450421', '苍梧县', '450400', '广西壮族自治区梧州市苍梧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450804', '覃塘区', '450800', '广西壮族自治区贵港市覃塘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450981', '北流市', '450900', '广西壮族自治区玉林市北流市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451026', '那坡县', '451000', '广西壮族自治区百色市那坡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451123', '富川瑶族自治县', '451100', '广西壮族自治区贺州市富川瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451302', '兴宾区', '451300', '广西壮族自治区来宾市兴宾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451422', '宁明县', '451400', '广西壮族自治区崇左市宁明县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469003', '儋州市', '469000', '海南省省直辖县级行政区划儋州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500111', '大足区', '500100', '重庆市大足区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500232', '武隆县', '500200', '重庆市县武隆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510124', '郫县', '510100', '四川省成都市郫县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510504', '龙马潭区', '510500', '四川省泸州市龙马潭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510824', '苍溪县', '510800', '四川省广元市苍溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511303', '高坪区', '511300', '四川省南充市高坪区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511601', '市辖区', '511600', '四川省广安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511921', '通江县', '511900', '四川省巴中市通江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210203', '西岗区', '210200', '辽宁省大连市西岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210521', '本溪满族自治县', '210500', '辽宁省本溪市本溪满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211081', '灯塔市', '211000', '辽宁省辽阳市灯塔市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220101', '市辖区', '220100', '吉林省长春市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220422', '东辽县', '220400', '吉林省辽源市东辽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222401', '延吉市', '222400', '吉林省延边朝鲜族自治州延吉市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230204', '铁锋区', '230200', '黑龙江省齐齐哈尔市铁锋区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652801', '库尔勒市', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州库尔勒市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542227', '措美县', '542200', '西藏自治区山南地区措美县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620501', '市辖区', '620500', '甘肃省天水市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210000', '辽宁省', null, '辽宁省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310000', '上海市', null, '上海市', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340000', '安徽省', null, '安徽省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410000', '河南省', null, '河南省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110000', '北京市', null, '北京市', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430000', '湖南省', null, '湖南省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450000', '广西壮族自治区', null, '广西壮族自治区', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520000', '贵州省', null, '贵州省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150500', '通辽市', '150000', '内蒙古自治区通辽市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210600', '丹东市', '210000', '辽宁省丹东市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220200', '吉林市', '220000', '吉林省吉林市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('232700', '大兴安岭地区', '230000', '黑龙江省大兴安岭地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321300', '宿迁市', '320000', '江苏省宿迁市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331000', '台州市', '330000', '浙江省台州市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341000', '黄山市', '340000', '安徽省黄山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350400', '三明市', '350000', '福建省三明市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360500', '新余市', '360000', '江西省新余市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371300', '临沂市', '370000', '山东省临沂市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410700', '新乡市', '410000', '河南省新乡市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411700', '驻马店市', '410000', '河南省驻马店市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110100', '市辖区', '110000', '北京市市辖区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130700', '张家口市', '130000', '河北省张家口市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610330', '凤县', '610300', '陕西省宝鸡市凤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610402', '秦都区', '610400', '陕西省咸阳市秦都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610423', '泾阳县', '610400', '陕西省咸阳市泾阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610429', '旬邑县', '610400', '陕西省咸阳市旬邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610501', '市辖区', '610500', '陕西省渭南市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610523', '大荔县', '610500', '陕西省渭南市大荔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610526', '蒲城县', '610500', '陕西省渭南市蒲城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610602', '宝塔区', '610600', '陕西省延安市宝塔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610624', '安塞县', '610600', '陕西省延安市安塞县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610627', '甘泉县', '610600', '陕西省延安市甘泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610631', '黄龙县', '610600', '陕西省延安市黄龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610721', '南郑县', '610700', '陕西省汉中市南郑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610727', '略阳县', '610700', '陕西省汉中市略阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610801', '市辖区', '610800', '陕西省榆林市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610822', '府谷县', '610800', '陕西省榆林市府谷县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610830', '清涧县', '610800', '陕西省榆林市清涧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610922', '石泉县', '610900', '陕西省安康市石泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610926', '平利县', '610900', '陕西省安康市平利县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611001', '市辖区', '611000', '陕西省商洛市市辖区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611023', '商南县', '611000', '陕西省商洛市商南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611026', '柞水县', '611000', '陕西省商洛市柞水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620104', '西固区', '620100', '甘肃省兰州市西固区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620122', '皋兰县', '620100', '甘肃省兰州市皋兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620301', '市辖区', '620300', '甘肃省金昌市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620421', '靖远县', '620400', '甘肃省白银市靖远县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620502', '秦州区', '620500', '甘肃省天水市秦州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620523', '甘谷县', '620500', '甘肃省天水市甘谷县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620601', '市辖区', '620600', '甘肃省武威市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620622', '古浪县', '620600', '甘肃省武威市古浪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620702', '甘州区', '620700', '甘肃省张掖市甘州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620723', '临泽县', '620700', '甘肃省张掖市临泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620824', '华亭县', '620800', '甘肃省平凉市华亭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620902', '肃州区', '620900', '甘肃省酒泉市肃州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620923', '肃北蒙古族自治县', '620900', '甘肃省酒泉市肃北蒙古族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621001', '市辖区', '621000', '甘肃省庆阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621023', '华池县', '621000', '甘肃省庆阳市华池县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621102', '安定区', '621100', '甘肃省定西市安定区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621124', '临洮县', '621100', '甘肃省定西市临洮县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621202', '武都区', '621200', '甘肃省陇南市武都区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621226', '礼县', '621200', '甘肃省陇南市礼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622921', '临夏县', '622900', '甘肃省临夏回族自治州临夏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622923', '永靖县', '622900', '甘肃省临夏回族自治州永靖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622926', '东乡族自治县', '622900', '甘肃省临夏回族自治州东乡族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623021', '临潭县', '623000', '甘肃省甘南藏族自治州临潭县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623023', '舟曲县', '623000', '甘肃省甘南藏族自治州舟曲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('623025', '玛曲县', '623000', '甘肃省甘南藏族自治州玛曲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630101', '市辖区', '630100', '青海省西宁市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632121', '平安县', '632100', '青海省海东地区平安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632126', '互助土族自治县', '632100', '青海省海东地区互助土族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632221', '门源回族自治县', '632200', '青海省海北藏族自治州门源回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632224', '刚察县', '632200', '青海省海北藏族自治州刚察县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632322', '尖扎县', '632300', '青海省黄南藏族自治州尖扎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632521', '共和县', '632500', '青海省海南藏族自治州共和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632523', '贵德县', '632500', '青海省海南藏族自治州贵德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632621', '玛沁县', '632600', '青海省果洛藏族自治州玛沁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632623', '甘德县', '632600', '青海省果洛藏族自治州甘德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632624', '达日县', '632600', '青海省果洛藏族自治州达日县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632626', '玛多县', '632600', '青海省果洛藏族自治州玛多县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632722', '杂多县', '632700', '青海省玉树藏族自治州杂多县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632724', '治多县', '632700', '青海省玉树藏族自治州治多县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632725', '囊谦县', '632700', '青海省玉树藏族自治州囊谦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632801', '格尔木市', '632800', '青海省海西蒙古族藏族自治州格尔木市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632822', '都兰县', '632800', '青海省海西蒙古族藏族自治州都兰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640101', '市辖区', '640100', '宁夏回族自治区银川市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640105', '西夏区', '640100', '宁夏回族自治区银川市西夏区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640121', '永宁县', '640100', '宁夏回族自治区银川市永宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640181', '灵武市', '640100', '宁夏回族自治区银川市灵武市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640202', '大武口区', '640200', '宁夏回族自治区石嘴山市大武口区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640221', '平罗县', '640200', '宁夏回族自治区石嘴山市平罗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640303', '红寺堡区', '640300', '宁夏回族自治区吴忠市红寺堡区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640324', '同心县', '640300', '宁夏回族自治区吴忠市同心县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640401', '市辖区', '640400', '宁夏回族自治区固原市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640422', '西吉县', '640400', '宁夏回族自治区固原市西吉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640424', '泾源县', '640400', '宁夏回族自治区固原市泾源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640501', '市辖区', '640500', '宁夏回族自治区中卫市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640521', '中宁县', '640500', '宁夏回族自治区中卫市中宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650101', '市辖区', '650100', '新疆维吾尔自治区乌鲁木齐市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650103', '沙依巴克区', '650100', '新疆维吾尔自治区乌鲁木齐市沙依巴克区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650105', '水磨沟区', '650100', '新疆维吾尔自治区乌鲁木齐市水磨沟区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650107', '达坂城区', '650100', '新疆维吾尔自治区乌鲁木齐市达坂城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650121', '乌鲁木齐县', '650100', '新疆维吾尔自治区乌鲁木齐市乌鲁木齐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650202', '独山子区', '650200', '新疆维吾尔自治区克拉玛依市独山子区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('650204', '白碱滩区', '650200', '新疆维吾尔自治区克拉玛依市白碱滩区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652101', '吐鲁番市', '652100', '新疆维吾尔自治区吐鲁番地区吐鲁番市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652222', '巴里坤哈萨克自治县', '652200', '新疆维吾尔自治区哈密地区巴里坤哈萨克自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652301', '昌吉市', '652300', '新疆维吾尔自治区昌吉回族自治州昌吉市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652323', '呼图壁县', '652300', '新疆维吾尔自治区昌吉回族自治州呼图壁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652325', '奇台县', '652300', '新疆维吾尔自治区昌吉回族自治州奇台县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652327', '吉木萨尔县', '652300', '新疆维吾尔自治区昌吉回族自治州吉木萨尔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652701', '博乐市', '652700', '新疆维吾尔自治区博尔塔拉蒙古自治州博乐市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652723', '温泉县', '652700', '新疆维吾尔自治区博尔塔拉蒙古自治州温泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652823', '尉犁县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州尉犁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652824', '若羌县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州若羌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652826', '焉耆回族自治县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州焉耆回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652901', '阿克苏市', '652900', '新疆维吾尔自治区阿克苏地区阿克苏市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652923', '库车县', '652900', '新疆维吾尔自治区阿克苏地区库车县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652924', '沙雅县', '652900', '新疆维吾尔自治区阿克苏地区沙雅县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652926', '拜城县', '652900', '新疆维吾尔自治区阿克苏地区拜城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652928', '阿瓦提县', '652900', '新疆维吾尔自治区阿克苏地区阿瓦提县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653001', '阿图什市', '653000', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿图什市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653022', '阿克陶县', '653000', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州阿克陶县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653024', '乌恰县', '653000', '新疆维吾尔自治区克孜勒苏柯尔克孜自治州乌恰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653122', '疏勒县', '653100', '新疆维吾尔自治区喀什地区疏勒县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653123', '英吉沙县', '653100', '新疆维吾尔自治区喀什地区英吉沙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653126', '叶城县', '653100', '新疆维吾尔自治区喀什地区叶城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653128', '岳普湖县', '653100', '新疆维吾尔自治区喀什地区岳普湖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653130', '巴楚县', '653100', '新疆维吾尔自治区喀什地区巴楚县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653131', '塔什库尔干塔吉克自治县', '653100', '新疆维吾尔自治区喀什地区塔什库尔干塔吉克自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653223', '皮山县', '653200', '新疆维吾尔自治区和田地区皮山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653225', '策勒县', '653200', '新疆维吾尔自治区和田地区策勒县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653227', '民丰县', '653200', '新疆维吾尔自治区和田地区民丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654002', '伊宁市', '654000', '新疆维吾尔自治区伊犁哈萨克自治州伊宁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654021', '伊宁县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州伊宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654022', '察布查尔锡伯自治县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州察布查尔锡伯自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654028', '尼勒克县', '654000', '新疆维吾尔自治区伊犁哈萨克自治州尼勒克县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654221', '额敏县', '654200', '新疆维吾尔自治区塔城地区额敏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654226', '和布克赛尔蒙古自治县', '654200', '新疆维吾尔自治区塔城地区和布克赛尔蒙古自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654326', '吉木乃县', '654300', '新疆维吾尔自治区阿勒泰地区吉木乃县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('659004', '五家渠市', '659000', '新疆维吾尔自治区自治区直辖县级行政区划五家渠市', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222402', '图们市', '222400', '吉林省延边朝鲜族自治州图们市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('222406', '和龙市', '222400', '吉林省延边朝鲜族自治州和龙市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230108', '平房区', '230100', '黑龙江省哈尔滨市平房区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230112', '阿城区', '230100', '黑龙江省哈尔滨市阿城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230128', '通河县', '230100', '黑龙江省哈尔滨市通河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230203', '建华区', '230200', '黑龙江省齐齐哈尔市建华区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230207', '碾子山区', '230200', '黑龙江省齐齐哈尔市碾子山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230305', '梨树区', '230300', '黑龙江省鸡西市梨树区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230401', '市辖区', '230400', '黑龙江省鹤岗市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230421', '萝北县', '230400', '黑龙江省鹤岗市萝北县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230506', '宝山区', '230500', '黑龙江省双鸭山市宝山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230602', '萨尔图区', '230600', '黑龙江省大庆市萨尔图区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230623', '林甸县', '230600', '黑龙江省大庆市林甸县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230706', '翠峦区', '230700', '黑龙江省伊春市翠峦区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230712', '汤旺河区', '230700', '黑龙江省伊春市汤旺河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230801', '市辖区', '230800', '黑龙江省佳木斯市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230826', '桦川县', '230800', '黑龙江省佳木斯市桦川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230903', '桃山区', '230900', '黑龙江省七台河市桃山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522628', '锦屏县', '522600', '贵州省黔东南苗族侗族自治州锦屏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522633', '从江县', '522600', '贵州省黔东南苗族侗族自治州从江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522701', '都匀市', '522700', '贵州省黔南布依族苗族自治州都匀市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522725', '瓮安县', '522700', '贵州省黔南布依族苗族自治州瓮安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522730', '龙里县', '522700', '贵州省黔南布依族苗族自治州龙里县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530112', '西山区', '530100', '云南省昆明市西山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530127', '嵩明县', '530100', '云南省昆明市嵩明县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530321', '马龙县', '530300', '云南省曲靖市马龙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530401', '市辖区', '530400', '云南省玉溪市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530426', '峨山彝族自治县', '530400', '云南省玉溪市峨山彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530523', '龙陵县', '530500', '云南省保山市龙陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530626', '绥江县', '530600', '云南省昭通市绥江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530702', '古城区', '530700', '云南省丽江市古城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530724', '宁蒗彝族自治县', '530700', '云南省丽江市宁蒗彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800', '云南省普洱市镇沅彝族哈尼族拉祜族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532323', '牟定县', '532300', '云南省楚雄彝族自治州牟定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532329', '武定县', '532300', '云南省楚雄彝族自治州武定县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532503', '蒙自市', '532500', '云南省红河哈尼族彝族自治州蒙自市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532527', '泸西县', '532500', '云南省红河哈尼族彝族自治州泸西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532531', '绿春县', '532500', '云南省红河哈尼族彝族自治州绿春县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532623', '西畴县', '532600', '云南省文山壮族苗族自治州西畴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532901', '大理市', '532900', '云南省大理白族自治州大理市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532925', '弥渡县', '532900', '云南省大理白族自治州弥渡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532931', '剑川县', '532900', '云南省大理白族自治州剑川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533103', '芒市', '533100', '云南省德宏傣族景颇族自治州芒市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533423', '维西傈僳族自治县', '533400', '云南省迪庆藏族自治州维西傈僳族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542121', '昌都县', '542100', '西藏自治区昌都地区昌都县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542127', '八宿县', '542100', '西藏自治区昌都地区八宿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542223', '贡嘎县', '542200', '西藏自治区山南地区贡嘎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610728', '镇巴县', '610700', '陕西省汉中市镇巴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610823', '横山县', '610800', '陕西省榆林市横山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610829', '吴堡县', '610800', '陕西省榆林市吴堡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610923', '宁陕县', '610900', '陕西省安康市宁陕县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('611002', '商州区', '611000', '陕西省商洛市商州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620101', '市辖区', '620100', '甘肃省兰州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620121', '永登县', '620100', '甘肃省兰州市永登县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620401', '市辖区', '620400', '甘肃省白银市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620525', '张家川回族自治县', '620500', '甘肃省天水市张家川回族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620722', '民乐县', '620700', '甘肃省张掖市民乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620823', '崇信县', '620800', '甘肃省平凉市崇信县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621002', '西峰区', '621000', '甘肃省庆阳市西峰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621026', '宁县', '621000', '甘肃省庆阳市宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621123', '渭源县', '621100', '甘肃省定西市渭源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621223', '宕昌县', '621200', '甘肃省陇南市宕昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622901', '临夏市', '622900', '甘肃省临夏回族自治州临夏市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622925', '和政县', '622900', '甘肃省临夏回族自治州和政县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622927', '积石山保安族东乡族撒拉族自治县', '622900', '甘肃省临夏回族自治州积石山保安族东乡族撒拉族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630121', '大通回族土族自治县', '630100', '青海省西宁市大通回族土族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632223', '海晏县', '632200', '青海省海北藏族自治州海晏县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632323', '泽库县', '632300', '青海省黄南藏族自治州泽库县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371326', '平邑县', '371300', '山东省临沂市平邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371424', '临邑县', '371400', '山东省德州市临邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371482', '禹城市', '371400', '山东省德州市禹城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371525', '冠县', '371500', '山东省聊城市冠县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371622', '阳信县', '371600', '山东省滨州市阳信县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371702', '牡丹区', '371700', '山东省菏泽市牡丹区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371727', '定陶县', '371700', '山东省菏泽市定陶县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410105', '金水区', '410100', '河南省郑州市金水区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410184', '新郑市', '410100', '河南省郑州市新郑市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410211', '金明区', '410200', '河南省开封市金明区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410301', '市辖区', '410300', '河南省洛阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410324', '栾川县', '410300', '河南省洛阳市栾川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410381', '偃师市', '410300', '河南省洛阳市偃师市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410422', '叶县', '410400', '河南省平顶山市叶县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410482', '汝州市', '410400', '河南省平顶山市汝州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410526', '滑县', '410500', '河南省安阳市滑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410611', '淇滨区', '410600', '河南省鹤壁市淇滨区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410704', '凤泉区', '410700', '河南省新乡市凤泉区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410728', '长垣县', '410700', '河南省新乡市长垣县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410804', '马村区', '410800', '河南省焦作市马村区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410902', '华龙区', '410900', '河南省濮阳市华龙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130208', '丰润区', '130200', '河北省唐山市丰润区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130230', '唐海县', '130200', '河北省唐山市唐海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130321', '青龙满族自治县', '130300', '河北省秦皇岛市青龙满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130406', '峰峰矿区', '130400', '河北省邯郸市峰峰矿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130429', '永年县', '130400', '河北省邯郸市永年县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130481', '武安市', '130400', '河北省邯郸市武安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130523', '内丘县', '130500', '河北省邢台市内丘县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130529', '巨鹿县', '130500', '河北省邢台市巨鹿县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130581', '南宫市', '130500', '河北省邢台市南宫市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130623', '涞水县', '130600', '河北省保定市涞水县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130630', '涞源县', '130600', '河北省保定市涞源县', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130636', '顺平县', '130600', '河北省保定市顺平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130684', '高碑店市', '130600', '河北省保定市高碑店市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130722', '张北县', '130700', '河北省张家口市张北县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130802', '双桥区', '130800', '河北省承德市双桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130823', '平泉县', '130800', '河北省承德市平泉县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130903', '运河区', '130900', '河北省沧州市运河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130926', '肃宁县', '130900', '河北省沧州市肃宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130984', '河间市', '130900', '河北省沧州市河间市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131024', '香河县', '131000', '河北省廊坊市香河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131102', '桃城区', '131100', '河北省衡水市桃城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131126', '故城县', '131100', '河北省衡水市故城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150103', '回民区', '150100', '内蒙古自治区呼和浩特市回民区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420325', '房县', '420300', '湖北省十堰市房县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420505', '猇亭区', '420500', '湖北省宜昌市猇亭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420581', '宜都市', '420500', '湖北省宜昌市宜都市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420607', '襄州区', '420600', '湖北省襄阳市襄州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420701', '市辖区', '420700', '湖北省鄂州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420804', '掇刀区', '420800', '湖北省荆门市掇刀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420922', '大悟县', '420900', '湖北省孝感市大悟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421002', '沙市区', '421000', '湖北省荆州市沙市区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421126', '蕲春县', '421100', '湖北省黄冈市蕲春县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421221', '嘉鱼县', '421200', '湖北省咸宁市嘉鱼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421321', '随县', '421300', '湖北省随州市随县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422822', '建始县', '422800', '湖北省恩施土家族苗族自治州建始县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('422827', '来凤县', '422800', '湖北省恩施土家族苗族自治州来凤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('429006', '天门市', '429000', '湖北省省直辖县级行政区划天门市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430111', '雨花区', '430100', '湖南省长沙市雨花区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430204', '石峰区', '430200', '湖南省株洲市石峰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430301', '市辖区', '430300', '湖南省湘潭市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430401', '市辖区', '430400', '湖南省衡阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430421', '衡阳县', '430400', '湖南省衡阳市衡阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430501', '市辖区', '430500', '湖南省邵阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430523', '邵阳县', '430500', '湖南省邵阳市邵阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440605', '南海区', '440600', '广东省佛山市南海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440704', '江海区', '440700', '广东省江门市江海区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440881', '廉江市', '440800', '广东省湛江市廉江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440923', '电白县', '440900', '广东省茂名市电白县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441225', '封开县', '441200', '广东省肇庆市封开县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441303', '惠阳区', '441300', '广东省惠州市惠阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441422', '大埔县', '441400', '广东省梅州市大埔县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441501', '市辖区', '441500', '广东省汕尾市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441601', '市辖区', '441600', '广东省河源市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441702', '江城区', '441700', '广东省阳江市江城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441826', '连南瑶族自治县', '441800', '广东省清远市连南瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445122', '饶平县', '445100', '广东省潮州市饶平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('445301', '市辖区', '445300', '广东省云浮市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450103', '青秀区', '450100', '广西壮族自治区南宁市青秀区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450124', '马山县', '450100', '广西壮族自治区南宁市马山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450203', '鱼峰区', '450200', '广西壮族自治区柳州市鱼峰区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450225', '融水苗族自治县', '450200', '广西壮族自治区柳州市融水苗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450322', '临桂县', '450300', '广西壮族自治区桂林市临桂县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450404', '蝶山区', '450400', '广西壮族自治区梧州市蝶山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450502', '海城区', '450500', '广西壮族自治区北海市海城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500240', '石柱土家族自治县', '500200', '重庆市县石柱土家族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510112', '龙泉驿区', '510100', '四川省成都市龙泉驿区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510131', '蒲江县', '510100', '四川省成都市蒲江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510302', '自流井区', '510300', '四川省自贡市自流井区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510402', '东区', '510400', '四川省攀枝花市东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510502', '江阳区', '510500', '四川省泸州市江阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510601', '市辖区', '510600', '四川省德阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510683', '绵竹市', '510600', '四川省德阳市绵竹市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510724', '安县', '510700', '四川省绵阳市安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510802', '利州区', '510800', '四川省广元市利州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510903', '船山区', '510900', '四川省遂宁市船山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511011', '东兴区', '511000', '四川省内江市东兴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511111', '沙湾区', '511100', '四川省乐山市沙湾区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511132', '峨边彝族自治县', '511100', '四川省乐山市峨边彝族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511323', '蓬安县', '511300', '四川省南充市蓬安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511501', '市辖区', '511500', '四川省宜宾市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511526', '珙县', '511500', '四川省宜宾市珙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511621', '岳池县', '511600', '四川省广安市岳池县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511721', '达县', '511700', '四川省达州市达县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511801', '市辖区', '511800', '四川省雅安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511825', '天全县', '511800', '四川省雅安市天全县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('512002', '雁江区', '512000', '四川省资阳市雁江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513221', '汶川县', '513200', '四川省阿坝藏族羌族自治州汶川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513225', '九寨沟县', '513200', '四川省阿坝藏族羌族自治州九寨沟县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513232', '若尔盖县', '513200', '四川省阿坝藏族羌族自治州若尔盖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150122', '托克托县', '150100', '内蒙古自治区呼和浩特市托克托县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150221', '土默特右旗', '150200', '内蒙古自治区包头市土默特右旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150423', '巴林右旗', '150400', '内蒙古自治区赤峰市巴林右旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150524', '库伦旗', '150500', '内蒙古自治区通辽市库伦旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150625', '杭锦旗', '150600', '内蒙古自治区鄂尔多斯市杭锦旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150781', '满洲里市', '150700', '内蒙古自治区呼伦贝尔市满洲里市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150922', '化德县', '150900', '内蒙古自治区乌兰察布市化德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152202', '阿尔山市', '152200', '内蒙古自治区兴安盟阿尔山市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152527', '太仆寺旗', '152500', '内蒙古自治区锡林郭勒盟太仆寺旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210122', '辽中县', '210100', '辽宁省沈阳市辽中县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210321', '台安县', '210300', '辽宁省鞍山市台安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210602', '元宝区', '210600', '辽宁省丹东市元宝区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210803', '西市区', '210800', '辽宁省营口市西市区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211102', '双台子区', '211100', '辽宁省盘锦市双台子区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211382', '凌源市', '211300', '辽宁省朝阳市凌源市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220203', '龙潭区', '220200', '吉林省吉林市龙潭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220502', '东昌区', '220500', '吉林省通化市东昌区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220702', '宁江区', '220700', '吉林省松原市宁江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230103', '南岗区', '230100', '黑龙江省哈尔滨市南岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230183', '尚志市', '230100', '黑龙江省哈尔滨市尚志市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230227', '富裕县', '230200', '黑龙江省齐齐哈尔市富裕县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230382', '密山市', '230300', '黑龙江省鸡西市密山市', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230601', '市辖区', '230600', '黑龙江省大庆市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230704', '友好区', '230700', '黑龙江省伊春市友好区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230781', '铁力市', '230700', '黑龙江省伊春市铁力市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230904', '茄子河区', '230900', '黑龙江省七台河市茄子河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231182', '五大连池市', '231100', '黑龙江省黑河市五大连池市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310113', '宝山区', '310100', '上海市宝山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320116', '六合区', '320100', '江苏省南京市六合区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320381', '新沂市', '320300', '江苏省徐州市新沂市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320584', '吴江市', '320500', '江苏省苏州市吴江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320723', '灌云县', '320700', '江苏省连云港市灌云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321003', '邗江区', '321000', '江苏省扬州市邗江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321302', '宿城区', '321300', '江苏省宿迁市宿城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330204', '江东区', '330200', '浙江省宁波市江东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330327', '苍南县', '330300', '浙江省温州市苍南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330624', '新昌县', '330600', '浙江省绍兴市新昌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330901', '市辖区', '330900', '浙江省舟山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331121', '青田县', '331100', '浙江省丽水市青田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331181', '龙泉市', '331100', '浙江省丽水市龙泉市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340208', '三山区', '340200', '安徽省芜湖市三山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340405', '八公山区', '340400', '安徽省淮南市八公山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340822', '怀宁县', '340800', '安徽省安庆市怀宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341122', '来安县', '341100', '安徽省滁州市来安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341501', '市辖区', '341500', '安徽省六安市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341822', '广德县', '341800', '安徽省宣城市广德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350201', '市辖区', '350200', '福建省厦门市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350427', '沙县', '350400', '福建省三明市沙县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350583', '南安市', '350500', '福建省泉州市南安市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350781', '邵武市', '350700', '福建省南平市邵武市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350924', '寿宁县', '350900', '福建省宁德市寿宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360313', '湘东区', '360300', '江西省萍乡市湘东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360601', '市辖区', '360600', '江西省鹰潭市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360734', '寻乌县', '360700', '江西省赣州市寻乌县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360921', '奉新县', '360900', '江西省宜春市奉新县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361101', '市辖区', '361100', '江西省上饶市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370105', '天桥区', '370100', '山东省济南市天桥区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370205', '四方区', '370200', '山东省青岛市四方区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370323', '沂源县', '370300', '山东省淄博市沂源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370681', '龙口市', '370600', '山东省烟台市龙口市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370786', '昌邑市', '370700', '山东省潍坊市昌邑市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371001', '市辖区', '371000', '山东省威海市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371324', '苍山县', '371300', '山东省临沂市苍山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371501', '市辖区', '371500', '山东省聊城市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371722', '单县', '371700', '山东省菏泽市单县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410183', '新密市', '410100', '河南省郑州市新密市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410311', '洛龙区', '410300', '河南省洛阳市洛龙区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410481', '舞钢市', '410400', '河南省平顶山市舞钢市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410711', '牧野区', '410700', '河南省新乡市牧野区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410901', '市辖区', '410900', '河南省濮阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411222', '陕县', '411200', '河南省三门峡市陕县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411381', '邓州市', '411300', '河南省南阳市邓州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411528', '息县', '411500', '河南省信阳市息县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411724', '正阳县', '411700', '河南省驻马店市正阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420202', '黄石港区', '420200', '湖北省黄石市黄石港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110112', '通州区', '110100', '北京市通州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120102', '河东区', '120100', '天津市河东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('120116', '滨海新区', '120100', '天津市滨海新区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130124', '栾城县', '130100', '河北省石家庄市栾城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130223', '滦县', '130200', '河北省唐山市滦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130403', '丛台区', '130400', '河北省邯郸市丛台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130503', '桥西区', '130500', '河北省邢台市桥西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130622', '清苑县', '130600', '河北省保定市清苑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130681', '涿州市', '130600', '河北省保定市涿州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130801', '市辖区', '130800', '河北省承德市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130925', '盐山县', '130900', '河北省沧州市盐山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131025', '大城县', '131000', '河北省廊坊市大城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140107', '杏花岭区', '140100', '山西省太原市杏花岭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140302', '城区', '140300', '山西省阳泉市城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140431', '沁源县', '140400', '山西省长治市沁源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140725', '寿阳县', '140700', '山西省晋中市寿阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140901', '市辖区', '140900', '山西省忻州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141023', '襄汾县', '141000', '山西省临汾市襄汾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141126', '石楼县', '141100', '山西省吕梁市石楼县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420302', '茅箭区', '420300', '湖北省十堰市茅箭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420529', '五峰土家族自治县', '420500', '湖北省宜昌市五峰土家族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420982', '安陆市', '420900', '湖北省孝感市安陆市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421182', '武穴市', '421100', '湖北省黄冈市武穴市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430103', '天心区', '430100', '湖南省长沙市天心区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430281', '醴陵市', '430200', '湖南省株洲市醴陵市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430502', '双清区', '430500', '湖南省邵阳市双清区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430626', '平江县', '430600', '湖南省岳阳市平江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430902', '资阳区', '430900', '湖南省益阳市资阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431121', '祁阳县', '431100', '湖南省永州市祁阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431228', '芷江侗族自治县', '431200', '湖南省怀化市芷江侗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440183', '增城市', '440100', '广东省广州市增城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440307', '龙岗区', '440300', '广东省深圳市龙岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440608', '高明区', '440600', '广东省佛山市高明区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440903', '茂港区', '440900', '广东省茂名市茂港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441401', '市辖区', '441400', '广东省梅州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231221', '望奎县', '231200', '黑龙江省绥化市望奎县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310104', '徐汇区', '310100', '上海市徐汇区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320102', '玄武区', '320100', '江苏省南京市玄武区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320206', '惠山区', '320200', '江苏省无锡市惠山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320402', '天宁区', '320400', '江苏省常州市天宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320582', '张家港市', '320500', '江苏省苏州市张家港市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320724', '灌南县', '320700', '江苏省连云港市灌南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320925', '建湖县', '320900', '江苏省盐城市建湖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321311', '宿豫区', '321300', '江苏省宿迁市宿豫区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330226', '宁海县', '330200', '浙江省宁波市宁海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330502', '吴兴区', '330500', '浙江省湖州市吴兴区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330801', '市辖区', '330800', '浙江省衢州市市辖区', 3);

insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('331122', '缙云县', '331100', '浙江省丽水市缙云县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340603', '相山区', '340600', '安徽省淮北市相山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340825', '太湖县', '340800', '安徽省安庆市太湖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341124', '全椒县', '341100', '安徽省滁州市全椒县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341322', '萧县', '341300', '安徽省宿州市萧县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341622', '蒙城县', '341600', '安徽省亳州市蒙城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350103', '台江区', '350100', '福建省福州市台江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350212', '同安区', '350200', '福建省厦门市同安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350430', '建宁县', '350400', '福建省三明市建宁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350681', '龙海市', '350600', '福建省漳州市龙海市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350921', '霞浦县', '350900', '福建省宁德市霞浦县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360321', '莲花县', '360300', '江西省萍乡市莲花县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360702', '章贡区', '360700', '江西省赣州市章贡区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360826', '泰和县', '360800', '江西省吉安市泰和县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150301', '市辖区', '150300', '内蒙古自治区乌海市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150424', '林西县', '150400', '内蒙古自治区赤峰市林西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150522', '科尔沁左翼后旗', '150500', '内蒙古自治区通辽市科尔沁左翼后旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150701', '市辖区', '150700', '内蒙古自治区呼伦贝尔市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150785', '根河市', '150700', '内蒙古自治区呼伦贝尔市根河市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150901', '市辖区', '150900', '内蒙古自治区乌兰察布市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152201', '乌兰浩特市', '152200', '内蒙古自治区兴安盟乌兰浩特市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152528', '镶黄旗', '152500', '内蒙古自治区锡林郭勒盟镶黄旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210123', '康平县', '210100', '辽宁省沈阳市康平县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210402', '新抚区', '210400', '辽宁省抚顺市新抚区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210782', '北镇市', '210700', '辽宁省锦州市北镇市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211103', '兴隆台区', '211100', '辽宁省盘锦市兴隆台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220106', '绿园区', '220100', '吉林省长春市绿园区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220382', '双辽市', '220300', '吉林省四平市双辽市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220822', '通榆县', '220800', '吉林省白城市通榆县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441621', '紫金县', '441600', '广东省河源市紫金县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441881', '英德市', '441800', '广东省清远市英德市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450102', '兴宁区', '450100', '广西壮族自治区南宁市兴宁区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450127', '横县', '450100', '广西壮族自治区南宁市横县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450221', '柳江县', '450200', '广西壮族自治区柳州市柳江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450303', '叠彩区', '450300', '广西壮族自治区桂林市叠彩区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450330', '平乐县', '450300', '广西壮族自治区桂林市平乐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450422', '藤县', '450400', '广西壮族自治区梧州市藤县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450621', '上思县', '450600', '广西壮族自治区防城港市上思县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450821', '平南县', '450800', '广西壮族自治区贵港市平南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451001', '市辖区', '451000', '广西壮族自治区百色市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451030', '西林县', '451000', '广西壮族自治区百色市西林县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451222', '天峨县', '451200', '广西壮族自治区河池市天峨县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451281', '宜州市', '451200', '广西壮族自治区河池市宜州市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451401', '市辖区', '451400', '广西壮族自治区崇左市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('460201', '市辖区', '460200', '海南省三亚市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500102', '涪陵区', '500100', '重庆市涪陵区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500224', '铜梁县', '500200', '重庆市县铜梁县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530924', '镇康县', '530900', '云南省临沧市镇康县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542221', '乃东县', '542200', '西藏自治区山南地区乃东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542526', '改则县', '542500', '西藏自治区阿里地区改则县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610424', '乾县', '610400', '陕西省咸阳市乾县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610702', '汉台区', '610700', '陕西省汉中市汉台区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620403', '平川区', '620400', '甘肃省白银市平川区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621227', '徽县', '621200', '甘肃省陇南市徽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370282', '即墨市', '370200', '山东省青岛市即墨市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370701', '市辖区', '370700', '山东省潍坊市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371121', '五莲县', '371100', '山东省日照市五莲县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410101', '市辖区', '410100', '河南省郑州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410522', '安阳县', '410500', '河南省安阳市安阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411481', '永城市', '411400', '河南省商丘市永城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420111', '洪山区', '420100', '湖北省武汉市洪山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130227', '迁西县', '130200', '河北省唐山市迁西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130626', '定兴县', '130600', '河北省保定市定兴县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131022', '固安县', '131000', '河北省廊坊市固安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140722', '左权县', '140700', '山西省晋中市左权县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('141022', '翼城县', '141000', '山西省临汾市翼城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420503', '伍家岗区', '420500', '湖北省宜昌市伍家岗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421224', '通山县', '421200', '湖北省咸宁市通山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430521', '邵东县', '430500', '湖南省邵阳市邵东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430922', '桃江县', '430900', '湖南省益阳市桃江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431382', '涟源市', '431300', '湖南省娄底市涟源市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440402', '香洲区', '440400', '广东省珠海市香洲区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('441402', '梅江区', '441400', '广东省梅州市梅江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450126', '宾阳县', '450100', '广西壮族自治区南宁市宾阳县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451223', '凤山县', '451200', '广西壮族自治区河池市凤山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500109', '北碚区', '500100', '重庆市北碚区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510322', '富顺县', '510300', '四川省自贡市富顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511126', '夹江县', '511100', '四川省乐山市夹江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513223', '茂县', '513200', '四川省阿坝藏族羌族自治州茂县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('321284', '姜堰市', '321200', '江苏省泰州市姜堰市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330726', '浦江县', '330700', '浙江省金华市浦江县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340302', '龙子湖区', '340300', '安徽省蚌埠市龙子湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('469007', '东方市', '469000', '海南省省直辖县级行政区划东方市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510301', '市辖区', '510300', '四川省自贡市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511129', '沐川县', '511100', '四川省乐山市沐川县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513222', '理县', '513200', '四川省阿坝藏族羌族自治州理县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('533323', '福贡县', '533300', '云南省怒江傈僳族自治州福贡县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542622', '工布江达县', '542600', '西藏自治区林芝地区工布江达县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361121', '上饶县', '361100', '江西省上饶市上饶县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370612', '牟平区', '370600', '山东省烟台市牟平区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371327', '莒南县', '371300', '山东省临沂市莒南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130401', '市辖区', '130400', '河北省邯郸市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130702', '桥东区', '130700', '河北省张家口市桥东区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430725', '桃源县', '430700', '湖南省常德市桃源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433127', '永顺县', '433100', '湖南省湘西土家族苗族自治州永顺县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350784', '建阳市', '350700', '福建省南平市建阳市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210281', '瓦房店市', '210200', '辽宁省大连市瓦房店市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220503', '二道江区', '220500', '吉林省通化市二道江区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450226', '三江侗族自治县', '450200', '广西壮族自治区柳州市三江侗族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('659001', '石河子市', '659000', '新疆维吾尔自治区自治区直辖县级行政区划石河子市', 3);


insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('152221', '科尔沁右翼前旗', '152200', '内蒙古自治区兴安盟科尔沁右翼前旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211001', '市辖区', '211000', '辽宁省辽阳市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220523', '辉南县', '220500', '吉林省通化市辉南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230229', '克山县', '230200', '黑龙江省齐齐哈尔市克山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610826', '绥德县', '610800', '陕西省榆林市绥德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620802', '崆峒区', '620800', '甘肃省平凉市崆峒区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('630122', '湟中县', '630100', '青海省西宁市湟中县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632802', '德令哈市', '632800', '青海省海西蒙古族藏族自治州德令哈市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652123', '托克逊县', '652100', '新疆维吾尔自治区吐鲁番地区托克逊县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652828', '和硕县', '652800', '新疆维吾尔自治区巴音郭楞蒙古自治州和硕县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('654325', '青河县', '654300', '新疆维吾尔自治区阿勒泰地区青河县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('522624', '三穗县', '522600', '贵州省黔东南苗族侗族自治州三穗县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532627', '广南县', '532600', '云南省文山壮族苗族自治州广南县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620922', '瓜州县', '620900', '甘肃省酒泉市瓜州县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130729', '万全县', '130700', '河北省张家口市万全县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421102', '黄州区', '421100', '湖北省黄冈市黄州区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440801', '市辖区', '440800', '广东省湛江市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450329', '资源县', '450300', '广西壮族自治区桂林市资源县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220000', '吉林省', null, '吉林省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440000', '广东省', null, '广东省', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500000', '重庆市', null, '重庆市', 1);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140800', '运城市', '140000', '山西省运城市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420800', '荆门市', '420000', '湖北省荆门市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430400', '衡阳市', '430000', '湖南省衡阳市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('433100', '湘西土家族苗族自治州', '430000', '湖南省湘西土家族苗族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230200', '齐齐哈尔市', '230000', '黑龙江省齐齐哈尔市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450500', '北海市', '450000', '广西壮族自治区北海市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500100', '市辖区', '500000', '重庆市市辖区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511400', '眉山市', '510000', '四川省眉山市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513300', '甘孜藏族自治州', '510000', '四川省甘孜藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530700', '丽江市', '530000', '云南省丽江市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542300', '日喀则地区', '540000', '西藏自治区日喀则地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620200', '嘉峪关市', '620000', '甘肃省嘉峪关市', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('622900', '临夏回族自治州', '620000', '甘肃省临夏回族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632700', '玉树藏族自治州', '630000', '青海省玉树藏族自治州', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('653100', '喀什地区', '650000', '新疆维吾尔自治区喀什地区', 2);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150202', '东河区', '150200', '内蒙古自治区包头市东河区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('150826', '杭锦后旗', '150800', '内蒙古自治区巴彦淖尔市杭锦后旗', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210423', '清原满族自治县', '210400', '辽宁省抚顺市清原满族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('211403', '龙港区', '211400', '辽宁省葫芦岛市龙港区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220681', '临江市', '220600', '吉林省白山市临江市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230606', '大同区', '230600', '黑龙江省大庆市大同区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('231222', '兰西县', '231200', '黑龙江省绥化市兰西县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320302', '鼓楼区', '320300', '江苏省徐州市鼓楼区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320829', '洪泽县', '320800', '江苏省淮安市洪泽县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330110', '余杭区', '330100', '浙江省杭州市余杭区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330781', '兰溪市', '330700', '浙江省金华市兰溪市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340101', '市辖区', '340100', '安徽省合肥市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340721', '铜陵县', '340700', '安徽省铜陵市铜陵县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341601', '市辖区', '341600', '安徽省亳州市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350423', '清流县', '350400', '福建省三明市清流县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350922', '古田县', '350900', '福建省宁德市古田县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360722', '信丰县', '360700', '江西省赣州市信丰县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('361027', '金溪县', '361000', '江西省抚州市金溪县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370404', '峄城区', '370400', '山东省枣庄市峄城区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('370883', '邹城市', '370800', '山东省济宁市邹城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('371526', '高唐县', '371500', '山东省聊城市高唐县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410325', '嵩县', '410300', '河南省洛阳市嵩县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('410803', '中站区', '410800', '河南省焦作市中站区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('411421', '民权县', '411400', '河南省商丘市民权县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420112', '东西湖区', '420100', '湖北省武汉市东西湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('110116', '怀柔区', '110100', '北京市怀柔区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130127', '高邑县', '130100', '河北省石家庄市高邑县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130435', '曲周县', '130400', '河北省邯郸市曲周县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('130723', '康保县', '130700', '河北省张家口市康保县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('131101', '市辖区', '131100', '河北省衡水市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140428', '长子县', '140400', '山西省长治市长子县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('140931', '保德县', '140900', '山西省忻州市保德县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('420626', '保康县', '420600', '湖北省襄阳市保康县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('421281', '赤壁市', '421200', '湖北省咸宁市赤壁市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('430426', '祁东县', '430400', '湖南省衡阳市祁东县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('431025', '临武县', '431000', '湖南省郴州市临武县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440105', '海珠区', '440100', '广东省广州市海珠区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('440783', '开平市', '440700', '广东省江门市开平市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('310106', '静安区', '310100', '上海市静安区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320311', '泉山区', '320300', '江苏省徐州市泉山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('320722', '东海县', '320700', '江苏省连云港市东海县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330109', '萧山区', '330100', '浙江省杭州市萧山区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('330727', '磐安县', '330700', '浙江省金华市磐安县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('340881', '桐城市', '340800', '安徽省安庆市桐城市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('341523', '舒城县', '341500', '安徽省六安市舒城县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350301', '市辖区', '350300', '福建省莆田市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('350802', '新罗区', '350800', '福建省龙岩市新罗区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('360602', '月湖区', '360600', '江西省鹰潭市月湖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210106', '铁西区', '210100', '辽宁省沈阳市铁西区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('210882', '大石桥市', '210800', '辽宁省营口市大石桥市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('220284', '磐石市', '220200', '吉林省吉林市磐石市', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('450107', '西乡塘区', '450100', '广西壮族自治区南宁市西乡塘区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('451102', '八步区', '451100', '广西壮族自治区贺州市八步区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('500108', '南岸区', '500100', '重庆市南岸区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510122', '双流县', '510100', '四川省成都市双流县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('510811', '元坝区', '510800', '四川省广元市元坝区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('511422', '彭山县', '511400', '四川省眉山市彭山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513229', '马尔康县', '513200', '四川省阿坝藏族羌族自治州马尔康县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520501', '市辖区', '520500', '贵州省毕节市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530101', '市辖区', '530100', '云南省昆明市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530629', '威信县', '530600', '云南省昭通市威信县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('532532', '河口瑶族自治县', '532500', '云南省红河哈尼族彝族自治州河口瑶族自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('542332', '定结县', '542300', '西藏自治区日喀则地区定结县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610404', '渭城区', '610400', '陕西省咸阳市渭城区', 3);


insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('610802', '榆阳区', '610800', '陕西省榆林市榆阳区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('620524', '武山县', '620500', '甘肃省天水市武山县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('621126', '岷县', '621100', '甘肃省定西市岷县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('632222', '祁连县', '632200', '青海省海北藏族自治州祁连县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('640201', '市辖区', '640200', '宁夏回族自治区石嘴山市市辖区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('652328', '木垒哈萨克自治县', '652300', '新疆维吾尔自治区昌吉回族自治州木垒哈萨克自治县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230124', '方正县', '230100', '黑龙江省哈尔滨市方正县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('230710', '五营区', '230700', '黑龙江省伊春市五营区', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('513429', '布拖县', '513400', '四川省凉山彝族自治州布拖县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('520525', '纳雍县', '520500', '贵州省毕节市纳雍县', 3);
insert into SYS_CANT_TMP (CODE, NAME, PARENT_CODE, FULL_NAME, CANT_LEVEL)
values ('530124', '富民县', '530100', '云南省昆明市富民县', 3);

