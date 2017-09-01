package javax.xianfeng.jdbc.sql;

import java.sql.Types;
import java.util.Date;

/**
 * SQL类型转换器
 * @author Programmer.Wenlong
 * @since 2011-11-27 上午12:43:04
 */
public class SqlTypeFormat {
	/**
	 * 将java类型转换成SQL类型<br>
	 * 注：有长度修饰的字段会有默认的长度
	 * @param clazz
	 * @return
	 */
	public static String format(Class<?> clazz) {
		String type = null;
		if (clazz == Character.class) {
			type = SqlType.CHAR;
		} else if (clazz == String.class) {
			type = SqlType.VARCHAR;
		} else if (clazz == Integer.class) {
			type = SqlType.INT;
		} else if (clazz == Long.class) {
			type = SqlType.LONG;
		} else if (clazz == Boolean.class) {
			type = SqlType.BOOLEAN;
		} else if (clazz == Date.class || clazz == java.sql.Date.class) {
			type = SqlType.DATETIME;
		}
		return type;
	}

	/**
	 * 将java.sql.Types中的SQL类型int值转换为SQL类型名称
	 * @param code
	 * @return
	 */
	public static String format(int code) {
		String type = null;
		switch (code) {
		case Types.INTEGER:
			type = SqlType.INT;
			break;
		case Types.FLOAT:
			type = SqlType.FLOAT;
			break;
		case Types.DOUBLE:
			type = SqlType.DOUBLE;
			break;
		case Types.CHAR:
			type = SqlType.CHAR;
			break;
		case Types.VARCHAR:
			type = SqlType.VARCHAR;
			break;
		case Types.BOOLEAN:
			type = SqlType.BOOLEAN;
			break;
		case Types.DATE:
			type = SqlType.DATETIME;
			break;
		}
		return type;
	}

}
