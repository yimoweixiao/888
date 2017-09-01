package javax.xianfeng.test.dao.jdbc;

import javax.sql.DataSource;
import javax.xianfeng.jdbc.DataSourceException;
import javax.xianfeng.jdbc.DataSourceProvider;

import org.junit.Test;

/**
 * 数据源测试类
 * @author Programmer.Wenlong
 * @since 2011-11-19 下午01:33:21
 */
public class TestDataSourceProvider {
	/**
	 * 测试DataSourceProvider初始化
	 * @author Programmer.Wenlong
	 * @throws DataSourceException
	 * @since 2011-11-19 下午01:42:34
	 */
	@Test
	public void init() throws DataSourceException {
		System.out.println(DataSourceProvider.getDataSource().size());
	}

	/**
	 * 测试获取数据源对象
	 * @author Programmer.Wenlong
	 * @throws DataSourceException
	 * @since 2011-11-19 下午01:39:09
	 * @result success
	 */
	@Test
	public void get() throws DataSourceException {
		DataSource ds = DataSourceProvider.getDataSource("dataSource");
		System.out.println(ds);
	}
}
