package javax.xianfeng.test.dao.jdbc;

import javax.xianfeng.dao.jdbc.JdbcDaoImpl;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午12:51:43
 */
public class TestDaoFactory {

	@SuppressWarnings("unchecked")
	@Test
	public void newInstance() {
		new JdbcDaoImpl(Object.class);
	}

	@Test
	public void build() {
		// EntityDao dao = DaoFactory.build(Object.class);
		// System.out.println(dao);
		// dao.save(null);
	}

}
