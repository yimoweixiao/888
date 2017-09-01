package javax.xianfeng.spring;

import javax.sql.DataSource;
import javax.xianfeng.spring.ioc.SpringIoc;

/**
 * @author Programmer.Wenlong
 * @since 2014-4-24 下午10:56:34
 */
public final class SpringDataSourceMgr {

	public static DataSource getDataSource() {
		return getDataSource("dataSource");
	}

	public static DataSource getDataSource(String dataSourceName) {
		DataSource dataSource = (DataSource) SpringIoc.find(dataSourceName);
		return dataSource;
	}

}
