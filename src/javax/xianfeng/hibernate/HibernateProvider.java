package javax.xianfeng.hibernate;

import java.util.Map;

import javax.sql.DataSource;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.hibernate.util.HibernateSessionUtil;
import javax.xianfeng.jdbc.DataSourceConfig;
import javax.xianfeng.jdbc.DataSourceProvider;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Hibernate提供类
 * 
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午08:11:41
 */
public final class HibernateProvider {

	private static final Log logger = LogFactory.getLog(HibernateProvider.class);

	private static Configuration configuration = new Configuration();

	private static SessionFactory sessionFactory; // 默认的SessionFactory

	static {
		try {
			configuration.configure(getCfgFilePath());
		} catch (Exception e) {
			logger.error("Failed to load the configuration of hibernate", e);
		}
		sessionFactory = configuration.buildSessionFactory();

		// TODO 获取Spring的Ioc注入的sessionFactory对象
	}

	private HibernateProvider() {
		super();
	}

	/**
	 * Returns the ThreadLocal Session instance. Lazy initialize the
	 * <code>SessionFactory</code> if needed.
	 * 
	 * @return Session
	 * @throws HibernateException
	 */
	public static Session getSession() throws HibernateException {
		return HibernateSessionUtil.getSession(sessionFactory);
	}

	/**
	 * 根据DataSource获取SessionFactory<br>
	 * 
	 * @param dataSource
	 * @return
	 * @throws DaoException
	 */
	public static SessionFactory getSessinFactory(DataSource dataSource) throws DaoException {
		Configuration configuration = HibernateProvider.getConfiguration();

		Map<String, String> configurations = DataSourceProvider.getConfigOfDatasource(dataSource);
		if (configurations == null || configurations.size() == 0) {
			throw new HibernateDaoException("DataSource information is invalid");
		}

		// 覆盖Hibernate.cfg.xml中的默认属性
		configuration.setProperty(Hibernate.DIALECT, configurations.get(DataSourceConfig.DIALECT));
		configuration.setProperty(Hibernate.Connection.URL, configurations.get(DataSourceConfig.URL));
		configuration.setProperty(Hibernate.Connection.USERNAME, configurations.get(DataSourceConfig.USER));
		configuration.setProperty(Hibernate.Connection.PASSWORD, configurations.get(DataSourceConfig.PASSWORD));
		configuration.setProperty(Hibernate.Connection.DRIVER_CLASS, configurations.get(DataSourceConfig.DRIVER));
		SessionFactory sessionFactory = configuration.buildSessionFactory();

		return sessionFactory;
	}

	/**
	 * Rebuild hibernate session factory
	 */
	public static void rebuildSessionFactory() {
		try {
			configuration.configure(HibernateProvider.getCfgFilePath());
			sessionFactory = configuration.buildSessionFactory();
		} catch (Exception e) {
			logger.error("Failed to create SessionFactory", e);
		}
	}

	/**
	 * return hibernate configuration
	 */
	public static Configuration getConfiguration() {
		return configuration;
	}

	/**
	 * return the path of hibernate configuaration file
	 * 
	 * @return
	 */
	public static String getCfgFilePath() {
		String filePath = ApplicationConfig.getConfig("Xianfeng.Hibernate.CfgFilePath");
		if (filePath == null) {
			filePath = "/hibernate.cfg.xml";
		}
		return filePath;
	}

	/**
	 * return session factory
	 */
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

}
