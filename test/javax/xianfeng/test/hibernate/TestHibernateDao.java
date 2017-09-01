package javax.xianfeng.test.hibernate;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.hibernate.HibernateDaoFactory;
import javax.xianfeng.hibernate.HibernateProvider;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午04:21:27
 */
public class TestHibernateDao {

	HibernateDaoImpl<DemoEntity1> dao = (HibernateDaoImpl<DemoEntity1>) HibernateDaoFactory.build(DemoEntity1.class);

	@Test
	public void init() {
		System.out.println(dao);
	}

	@Test
	public void get() throws DaoException {
		dao.setSessionFactory(HibernateProvider.getSessionFactory());
		DemoEntity1 demo = dao.get(1001L);
		System.out.println(Rebuilder.toString(demo));
	}

}
