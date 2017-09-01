package javax.xianfeng.spring;

/**
 * DataSource管理类
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午11:26:57
 */
public class DataSourceManager {

	private static final ThreadLocal<String> threadLocal = new ThreadLocal<String>();

	/**
	 * 获取当前的DataSource标示符<br>
	 * @return
	 */
	public static String getDataSource() {
		return threadLocal.get();
	}

	public static void setDataSource(String dataSource) {
		threadLocal.set(dataSource);
	}

	public static void clear() {
		threadLocal.remove();
	}

}
