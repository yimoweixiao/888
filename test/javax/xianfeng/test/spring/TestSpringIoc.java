package javax.xianfeng.test.spring;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.xianfeng.demo.service.DemoEntity1ServiceImpl;
import javax.xianfeng.demo.service.IDemoEntity1Service;
import javax.xianfeng.spring.DataSourceManager;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-29 下午10:31:14
 */
public class TestSpringIoc {

	@Test
	public void getBeanByName() throws SQLException {
		DataSource ds = (DataSource) SpringIoc.find("dataSource");
		System.out.println(ds);
		Connection con = ds.getConnection();
		System.out.println(con.getMetaData().getURL());
		System.out.println();

		DataSourceManager.setDataSource("DataSourceCMS");
		System.out.println(SpringIoc.find("dataSource"));
		con = ds.getConnection();
		System.out.println(con.getMetaData().getURL());
		System.out.println();

		DataSourceManager.setDataSource("DataSourceSYS");
		System.out.println(SpringIoc.find("dataSource"));
		con = ds.getConnection();
		System.out.println(con.getMetaData().getURL());
	}

	/**
	 * web运行时可用
	 * 
	 * @author Programmer.Wenlong
	 * @since 2014-5-19 下午10:28:22
	 */
	@Test
	public void getBeanByClass() {
		try {
			IDemoEntity1Service service = (IDemoEntity1Service) SpringIoc.find(DemoEntity1ServiceImpl.class);
			System.out.println(service);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
