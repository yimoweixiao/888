package javax.xianfeng.hibernate.util;

import javax.xianfeng.hibernate.HibernateDaoException;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Hibernate的工具类
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午08:05:15
 */
public final class HibernateSessionUtil {

	private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();

	/**
	 * 根据SessionFactory对象获取Session对象
	 * @param sessionFactory
	 * @return
	 * @throws HibernateDaoException
	 */
	public static Session getSession(SessionFactory sessionFactory) throws HibernateException {
		if (sessionFactory.isClosed()) {
			throw new HibernateException("SessionFactory is closed");
		}
		Session session = (Session) threadLocal.get();
		if (session == null || !session.isOpen()) {
			session = sessionFactory.openSession();
			threadLocal.set(session);
		}
		return session;
	}

	/**
	 * Close the single hibernate session instance.
	 * @throws HibernateException
	 */
	public static void closeSession() throws HibernateException {
		Session session = (Session) threadLocal.get();
		if (session != null) {
			session.close();
			session = null;
		}
		threadLocal.set(null);
	}

}
