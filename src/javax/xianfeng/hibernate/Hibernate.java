package javax.xianfeng.hibernate;

/**
 * Hibernate的配置属性类
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午08:25:35
 */
public final class Hibernate {

	public static String VERSION = "3.3.2.GA";

	// Hibernate配置属性
	public static String DIALECT = "dialect";

	/**
	 * Hibernate的Connection属性类
	 * @author Programmer.Wenlong
	 * @since 2011-12-12 下午08:29:43
	 */
	public static class Connection {

		public static String URL = "connection.url";

		public static String USERNAME = "connection.username";

		public static String PASSWORD = "connection.password";

		public static String DRIVER_CLASS = "connection.driver_class";

	}

}
