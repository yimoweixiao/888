package javax.xianfeng.hibernate.dao;

import javax.annotation.Resource;
import javax.sql.DataSource;
import javax.xianfeng.dao.jdbc.JdbcDao;
import javax.xianfeng.hibernate.HibernateDaoException;
import javax.xianfeng.hibernate.util.HibernateSessionUtil;
import javax.xianfeng.jdbc.DataSourceException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Hibernate的DAO支持类<br>
 * 此类依赖于Spring注入的dataSource对象和sessionFactory对象<br>
 * 其中，dataSource属性会遮盖JdbcDao类的dataSource属性<br>
 * @author Programmer.Wenlong
 * @since 2011-12-25 上午11:30:00
 */
public abstract class HibernateDaoSupport extends JdbcDao {
	@Resource
	protected DataSource dataSource; // Spring注入的DataSource

	@Resource
	protected SessionFactory sessionFactory; // Spring注入的SessionFactory

	@Override
	public void init() throws DataSourceException {
		// 初始化dataSource对象
		// this.setDataSource();

		// 根据SessionFactory设置默认的JDBC数据源 2012-01-02
		/*
		 * if (this.sessionFactory.isClosed()) { throw new DataSourceException("SessionFactory is closed"); } SessionFactoryImplementor implementor = ((SessionFactoryImplementor) sessionFactory); ConnectionProvider provider = implementor.getConnectionProvider(); try { Connection con = provider.getConnection(); System.out.println("==> con = " + con); } catch (SQLException e) { throw new DataSourceException(e); }
		 */

	}

	/**
	 * 通过sessionFactory对象获取Session对象
	 * @return
	 * @throws HibernateDaoException
	 */
	protected Session getSession() throws HibernateDaoException {
		return HibernateSessionUtil.getSession(this.sessionFactory);
	}

	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
