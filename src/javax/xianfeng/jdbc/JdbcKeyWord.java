package javax.xianfeng.jdbc;

/**
 * JDBC关键字常量类
 * @author Programmer.Wenlong
 * @since 2012-5-1 上午01:03:55
 */
public final class JdbcKeyWord {

	// 排序规则常量
	public static final String ASC = "asc";
	public static final String DESC = "desc";

	// 比较大小常量
	public static final String EQUAL = "=";

	public static final String NOT_EQUAL = "!=";

	public static final String LESS = "<";
	public static final String LESS_EQUAL = "<=";

	public static final String GREATER = ">";
	public static final String GREATER_EQUAL = ">=";

	// 逻辑词语常量
	public static final String LIKE = "like";

	public static final String BETWEEN = "between";

	public static final String AND = "and";

	public static final String OR = "or";

	public static final String IN = "in";

	public static final String IS_NULL = "isNull";

	public static final String IS_NOT_NULL = "isNotNull";

	private JdbcKeyWord() {
		super();
	}

}
