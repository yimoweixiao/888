package javax.xianfeng.jdbc;

import java.beans.PropertyVetoException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.sql.DataSource;
import javax.xianfeng.jdbc.util.JdbcUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * DataSource的提供类<br>
 * 注：依赖数据库连接池c3p0<br>
 * @author Programmer.Wenlong
 * @since 2011-11-18 上午12:53:10
 */
public final class DataSourceProvider {

	private static final Log logger = LogFactory.getLog(DataSourceProvider.class);

	private static String path = "datasource.properties"; // 数据源配置文件

	private static boolean isLoad = false; // 是否加载数据源

	private static Map<String, DataSource> dataSources; // 数据源集合

	private static Map<DataSource, Map<String, String>> configurations; // 数据源的属性集合

	private DataSourceProvider() {
		super();
	}

	/**
	 * 加载数据源 注：支持多数据源
	 * @throws Exception
	 */
	public static void init() throws DataSourceException {
		logger.info("Load datasource.properties ......");
		dataSources = new HashMap<String, DataSource>(DataSourceConfig.MAX_DATASOURCE_SIZE);

		// 读取配置文件
		Properties properties = new Properties();
		InputStream input = ClassLoader.getSystemResourceAsStream(path);
		try {
			properties.load(input);
		} catch (IOException e) {
			throw new DataSourceException("DataSource file load Exception", e);
		}
		// 查找数据源名称集合
		List<String> dataSourceNames = new ArrayList<String>(DataSourceConfig.MAX_DATASOURCE_SIZE);
		for (Object obj : properties.keySet()) {
			String key = (String) obj;
			if (key.length() == 0 || !key.contains(".")) {
				logger.debug("DataSource name " + key + " is valid");
				continue;
			}
			String dataSourceName = key.substring(0, key.indexOf("."));
			if (!dataSourceNames.contains(dataSourceName)) {
				dataSourceNames.add(dataSourceName);
			}
		}

		configurations = new HashMap<DataSource, Map<String, String>>(dataSourceNames.size());

		// 根据数据源名称加载数据源
		for (String dataSourceName : dataSourceNames) {
			if (!dataSources.keySet().contains(dataSourceName)) {
				ComboPooledDataSource dataSource = new ComboPooledDataSource();
				Map<String, String> configuration = new HashMap<String, String>(); // 单个数据源的属性集合

				// Driver
				String driver = properties.getProperty(dataSourceName + DataSourceConfig.DRIVER);
				logger.debug("Driver: " + driver);
				try {
					if (driver != null && driver.length() > 0) {
						dataSource.setDriverClass(driver);
					}
				} catch (PropertyVetoException e) {
					e.printStackTrace();
				}
				configuration.put(DataSourceConfig.DRIVER, driver);

				// Dialect
				String dialect = properties.getProperty(dataSourceName + DataSourceConfig.DIALECT);
				logger.debug("Dialect: " + dialect);
				// 注：如果*.jdbc.dialect配置为空，就通过*.jdbc.driver进行模糊匹配
				if (dialect == null || dialect.length() <= 0) {
					// TODO
				}
				configuration.put(DataSourceConfig.DIALECT, dialect);

				// URL
				String url = properties.getProperty(dataSourceName + DataSourceConfig.URL);
				logger.debug("URL: " + url);
				dataSource.setJdbcUrl(url);
				configuration.put(DataSourceConfig.URL, url);

				// User
				String user = properties.getProperty(dataSourceName + DataSourceConfig.USER);
				logger.debug("User: " + user);
				dataSource.setUser(user);
				configuration.put(DataSourceConfig.USER, user);

				// Password
				String password = properties.getProperty(dataSourceName + DataSourceConfig.PASSWORD);
				logger.debug("Password: " + password);
				dataSource.setPassword(password);
				configuration.put(DataSourceConfig.PASSWORD, password);

				// 判断DataSource是否可用
				try {

					Connection con = null;
					if (driver != null && driver.length() > 0) {
						con = JdbcUtil.getConnection(driver, url, user, password);
					} else {
						con = JdbcUtil.getConnection(url, user, password);
					}
					con.close();
					con = null;
				} catch (Exception e) {
					throw new DataSourceException("The datasource named " + dataSourceName + " is invalid", e);
				}

				dataSources.put(dataSourceName, dataSource);

				configurations.put(dataSource, configuration);
			}
		}
		isLoad = true;
		logger.info("DataSource is initialized completed");
	}

	/**
	 * 获取DataSource对象的方法
	 * @return
	 * @throws DataSourceException
	 */
	public static Map<String, DataSource> getDataSource() throws DataSourceException {
		if (!isLoad) {
			init();
		}
		return dataSources;
	}

	/**
	 * 获取DataSource对象的方法
	 * @param name 数据源的名称
	 * @return
	 * @throws DataSourceException
	 */
	public static DataSource getDataSource(String name) throws DataSourceException {
		if (!isLoad) {
			init();
		}
		return dataSources.get(name);
	}

	/**
	 * 获取DataSource的配置属性集合
	 * @param dataSource
	 * @return
	 */
	public static Map<String, String> getConfigOfDatasource(DataSource dataSource) {
		return configurations.get(dataSource);
	}

}
