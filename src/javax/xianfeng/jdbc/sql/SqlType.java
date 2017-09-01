package javax.xianfeng.jdbc.sql;

import javax.xianfeng.dao.jdbc.beans.DataBaseField;

/**
 * SQL类型转换类
 * @author Programmer.Wenlong
 * @since 2011-11-23 下午11:45:58
 */
public final class SqlType {

	// SQL操作类型
	public static final String CREATE = "create";
	public static final String INSERT = "insert";
	public static final String DELETE = "delete";
	public static final String UPDATE = "update";
	public static final String SELECT = "select";
	public static final String DROP = "drop";

	// 整型
	public static final String BYTE = "byte";
	public static final String SHORT = "short";
	public static final String INT = "int";
	public static final String LONG = "long";

	// 浮点型
	public static final String FLOAT = "float";
	public static final String DOUBLE = "double";
	public static final String DECIMAL = "decimal";
	public static final String NUMERIC = "numeric";

	// 字符型
	public static final String CHAR = "char";
	public static final String VARCHAR = "varchar";
	public static final String TEXT = "text";

	// 布尔型
	public static final String BOOLEAN = "boolean";

	// 日期型
	public static final String DATETIME = "datetime";

	public static final String CLOB = "clob";
	public static final String BLOB = "blob";
	public static final String BINARY = "binary";
	public static final String IMAGE = "image";

	/**
	 * 获取字段的类型信息
	 * @param field
	 * @return
	 */
	public static String getSqlType(DataBaseField field) {
		StringBuffer sb = new StringBuffer();
		String type = field.getType();
		if (SqlType.INT.equalsIgnoreCase(type)) {
			// int类型
			if (field.getLength() > 0) {
				sb.append(type).append("(").append(field.getLength()).append(")");
			} else {
				sb.append(type).append("(").append(SqlType.Length.INT).append(")");
			}
		} else if (SqlType.CHAR.equalsIgnoreCase(type)) {
			// char类型
			if (field.getLength() > 0) {
				sb.append(type).append("(").append(field.getLength()).append(")");
			} else {
				sb.append(type).append("(").append(SqlType.Length.CHAR).append(")");
			}
		} else if (SqlType.VARCHAR.equalsIgnoreCase(type)) {
			// varchar类型
			if (field.getLength() > 0) {
				sb.append(type).append("(").append(field.getLength()).append(")");
			} else {
				sb.append(type).append("(").append(SqlType.Length.VARCHAR).append(")");
			}
		} else {
			// 不需要指定长度的其他SQL类型
			sb.append(type);
		}
		return sb.toString();
	}

	/**
	 * 数据库默认长度常量类
	 * @author Programmer.Wenlong
	 * @since 2011-11-24 上午12:24:27
	 */
	public static class Length {

		public static final int INT = 11;

		public static final int LONG = 16;

		public static final int CHAR = 255;

		public static final int VARCHAR = 255;

		public static final int BOOLEAN = 1;

		public static final int DATETIME = 18; // 2011-08-08 15:32:48 214

		public static final int TEXT = 65535; // 2的17次方
	}

	/**
	 * 数据库约束常量类
	 * @author Programmer.Wenlong
	 * @since 2011-11-24 上午12:24:22
	 */
	public static class Constraint {

		public static final String PRIMARY_KEY = "primary key"; // 主键

		public static final String FOREIGN_KEY = ""; // 外键

		public static final String UNIQUE = "unique"; // 唯一约束

		public static final String NOT_NULL = "not null"; // 非空约束

	}

}
