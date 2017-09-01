package javax.xianfeng.test.dao.jdbc;

import java.util.Date;
import java.util.List;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.UUIDCreator;
import javax.xianfeng.dao.jdbc.DataBaseBuilder;
import javax.xianfeng.dao.jdbc.JdbcDaoException;
import javax.xianfeng.dao.jdbc.JdbcDaoFactory;
import javax.xianfeng.dao.jdbc.beans.DataBaseTable;
import javax.xianfeng.jdbc.sql.SqlFactory;
import javax.xianfeng.jdbc.sql.SqlFormat;
import javax.xianfeng.test.dao.User;

import org.junit.Test;

/**
 * JdbcDaoImpl测试类
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午08:56:30
 */
@SuppressWarnings("unchecked")
public class TestJdbcDao {

	private EntityDao<User> dao = JdbcDaoFactory.build(User.class);

	private DataBaseTable table = DataBaseBuilder.newInstance().buildTable(User.class);

	private UUIDCreator uuid = UUIDCreator.newInstance();

	@Test
	public void init() {
		System.out.println(dao);
	}

	@Test
	public void create() {
		String sql = SqlFactory.getCreateSql(table);
		System.out.println(SqlFormat.format(sql));
	}

	@Test
	public void insert() throws DaoException {
		String sql = SqlFactory.getInsertSql(table);
		System.out.println(SqlFormat.format(sql));
		User user = new User("Jack", 22, new Date());
		user.setId(uuid.getId());
		dao.save(user);
	}

	@Test
	public void select() throws DaoException, JdbcDaoException {
		dao.setAutoClose(false);
		List<User> users = dao.query();
		dao.close();
		System.out.println("size:" + users.size());
		for (User user : users) {
			System.out.println(Rebuilder.toString(user));
		}
	}

}
