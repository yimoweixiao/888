package javax.xianfeng.jdbc;

/**
 * DataSource默认配置属性类
 * @author Programmer.Wenlong
 * @since 2011-11-18 上午12:53:39
 */
public final class DataSourceConfig {

	// DataSource缓存的属性
	public static final String DIALECT = ".dialect";

	public static final String URL = ".url";

	public static final String USER = ".user";

	public static final String PASSWORD = ".password";

	public static final String DRIVER = ".driver";

	// 数据源的属性
	public static final int MAX_DATASOURCE_SIZE = 6; // 最多数据源个数

	public static final int INITIAL_POOL_SIZE = 3;

	public static final int MAX_POOL_SIZE = 10; //

	public static final int MIN_POOL_SIZE = 3; //

	public static final int MAX_IDLE_TIME = 0; //

	public static final int CHECKOUT_TIME = 0; //

	public static final boolean AUTO_COMMIT = false;

	public static final int ACQUIRE_INCREMENT = 3;

}
