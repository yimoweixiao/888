package javax.xianfeng.test.spring;

import java.sql.DatabaseMetaData;
import java.sql.SQLException;

import javax.sql.DataSource;
import javax.xianfeng.spring.SpringDataSourceMgr;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-4-24 下午10:59:28
 */
public class TestDataSource {

	@Test
	public void getConfig() {
		try {
			DataSource ds = SpringDataSourceMgr.getDataSource();
			DatabaseMetaData meta = ds.getConnection().getMetaData();
			System.out.println(meta.getURL());
			System.out.println(meta.getUserName());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
