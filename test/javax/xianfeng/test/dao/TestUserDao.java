package javax.xianfeng.test.dao;

import java.util.Date;

import javax.xianfeng.dao.BaseEntityDao;
import javax.xianfeng.dao.jdbc.JdbcDaoFactory;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午02:15:52
 */
@SuppressWarnings("unchecked")
public class TestUserDao {

	private BaseEntityDao<User> dao = JdbcDaoFactory.build(User.class);

	@Test
	public void save() throws Exception {
		User user = new User("Jack", 22, new Date());
		dao.save(user);
	}
}
