package javax.xianfeng.hibernate;

import java.util.Map;

import javax.sql.DataSource;
import javax.xianfeng.jdbc.DataSourceConfig;
import javax.xianfeng.jdbc.DataSourceProvider;
import javax.xianfeng.jdbc.JdbcDialect;

/**
 * Hibernate的Dialect配置类
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午08:40:47
 */
public class HibernateDialect {

	public static String MySQL = "org.hibernate.dialect.MySQLDialect";

	public static String ORACLE = "org.hibernate.dialect.OracleDialect";

	/**
	 * 将datasource.properties中JDBC的Dialect转换为Hibernate的Dialect<br>
	 * @param dialect
	 * @return
	 */
	public static String getHibernateDialect(DataSource dataSource) {
		Map<String, String> configurations = DataSourceProvider.getConfigOfDatasource(dataSource);
		String jdbcDialect = configurations.get(DataSourceConfig.DIALECT);
		String hibernateDialect = null;
		if (JdbcDialect.MYSQL.equals(jdbcDialect)) {
			hibernateDialect = HibernateDialect.MySQL;
		} else if (JdbcDialect.ORACLE.equals(jdbcDialect)) {
			hibernateDialect = HibernateDialect.ORACLE;
		}
		return hibernateDialect;
	}

}
