package javax.xianfeng.test.hibernate;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.hibernate.HibernateProvider;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-9 下午09:38:01
 */
public class TestHibernateProvider {
	private SessionFactory sessionFactory = HibernateProvider.getSessionFactory();

	@Test
	public void init() {
		System.out.println(sessionFactory.getCurrentSession());
	}

	@Test
	public void get() {
		Session session = sessionFactory.openSession();
		DemoEntity1 demo = (DemoEntity1) session.get(DemoEntity1.class, 1001L);
		System.out.println(Rebuilder.toString(demo));
	}
	
	/**
	 * 测试一级缓存：默认支持
	 * @author Programmer.Wenlong
	 * @since 2015-6-6 上午08:21:58
	 */
	@Test
	public void cacheL1() {
		Session session = sessionFactory.openSession();
		DemoEntity1 demo1 = (DemoEntity1) session.get(DemoEntity1.class, 1001L);
		System.out.println(Rebuilder.toString(demo1));
		
		System.out.println("================");
		DemoEntity1 demo2 = (DemoEntity1) session.get(DemoEntity1.class, 1001L);
		System.out.println(Rebuilder.toString(demo2));
		
		System.out.println("================");
		System.out.println(demo1 == demo2);
	}
}
