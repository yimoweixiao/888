package javax.xianfeng.dao.jdbc;

/**
 * DbBuild校验类<br>
 * 在DbBuild开始构造数据库对象之前根据校验规则进行必要的校验<br>
 * 校验规则如下：<br>
 * 1.校验实体类对应的数据库对象关联的标注
 * @author Programmer.Wenlong
 * @since 2011-11-28 上午12:20:13
 */
public class DataBaseValidator {

	public boolean validate(Class<?> clazz) {
		// TODO
		return true;
	}
}
