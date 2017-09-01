package javax.xianfeng.hibernate.dao;

import java.io.Serializable;
import java.sql.ResultSet;
import java.util.List;

import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.util.DataSetUtil;
import javax.xianfeng.dao.DaoConfig;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.HibernateDaoException;
import javax.xianfeng.hibernate.util.HibernateCriteriaUtil;
import javax.xianfeng.hibernate.util.HibernateQueryUtil;
import javax.xianfeng.hibernate.util.HibernateSessionUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Hibernate实现的DAO类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:39:14
 */
public class HibernateDaoImpl<T extends Serializable> extends HibernateDaoSupport implements EntityDao<T> {

	protected final Log logger = LogFactory.getLog(getClass());

	// 实体类类型对象
	protected Class<T> entity;

	// Hibernate持久化对象
	protected Session session;

	protected Transaction transaction;

	protected Query query;

	protected Criteria criteria;

	protected SQLQuery sqlQuery;

	public HibernateDaoImpl(Class<T> entity) {
		super();
		this.entity = entity;
	}

	@Override
	public DataSet filter() throws HibernateDaoException {
		return this.filter(null, null);
	}

	@Override
	public DataSet filter(String hql) throws HibernateDaoException {
		if (hql == null) {
			throw new IllegalArgumentException("hql is null");
		}
		return this.filter(hql, null);
	}

	@Override
	public DataSet filter(ParameterSet parameterSet) throws HibernateDaoException {
		return this.filter(null, parameterSet);
	}

	@SuppressWarnings("unchecked")
	@Override
	public DataSet filter(String hql, ParameterSet parameterSet) throws HibernateDaoException {
		// 获取Criteria对象
		if (hql != null && hql.length() > 0) {
			logger.debug(hql);
			criteria = this.getSession().createCriteria(hql);
		} else {
			criteria = this.getSession().createCriteria(this.entity);
		}

		// 关联ParameterSet查询条件
		if (parameterSet != null) {
			criteria = HibernateCriteriaUtil.onParameter(criteria, parameterSet);
		}

		try {
			return DataSetUtil.format(this.entity, criteria.list());
		} catch (Exception e) {
			throw new HibernateDaoException(e);
		}
	}

	/**
	 * @param t
	 * @return 如果返回值为true说明保存成功，否则失败
	 */
	@Override
	public Serializable save(T t) throws DaoException {
		if (t == null) {
			throw new IllegalArgumentException("entity is null");
		}
		session = this.getSession();
		transaction = session.getTransaction();
		Serializable id = null;
		try {
			transaction.begin();
			// session.saveOrUpdate(t);
			id = session.save(t);
			// id = session.getIdentifier(t);
			if (this.autoCommit) {
				this.commit();
			}
			return id;
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("save() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public void saveOrUpdate(T t) throws DaoException {
		if (t == null) {
			throw new IllegalArgumentException("entity is null");
		}
		session = this.getSession();
		transaction = session.getTransaction();
		try {
			transaction.begin();
			session.saveOrUpdate(t);
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("save() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public int save(List<T> list) throws DaoException {
		if (list == null) {
			throw new IllegalArgumentException("list is null");
		}
		session = this.getSession();
		transaction = session.getTransaction();
		try {
			transaction.begin();
			int num = 0;
			for (int i = 0, size = list.size(); i < size; i++) {
				session.save(list.get(i));
				// 刷新session
				if ((i + 1) % DaoConfig.MAX_SIZE == 0) {
					session.flush();
					session.clear();
				}
				num++;
			}
			if (this.autoCommit) {
				this.commit();
			}
			return num;
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("save() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	/**
	 * @param id 主键
	 * @return 如果查询到就返回实体对象，否则返回null
	 */
	@SuppressWarnings("unchecked")
	@Override
	public T get(Serializable id) throws DaoException {
		if (id == null) {
			throw new IllegalArgumentException("id is null");
		}
		T t = null;
		session = this.getSession();
		transaction = session.getTransaction();
		try {
			transaction.begin();
			t = (T) session.get(entity, id);
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("get() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void delete(Serializable id) throws DaoException {
		if (id == null) {
			throw new IllegalArgumentException("id is null");
		}
		session = this.getSession();
		transaction = session.getTransaction();
		try {
			transaction.begin();
			T t = (T) session.get(entity, id);
			if (t != null) {
				session.delete(t);
			}
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("unload() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public void drop(T t) throws DaoException {
		if (t == null) {
			throw new IllegalArgumentException("entity is null");
		}
		session = this.getSession();
		transaction = session.getTransaction();
		try {
			transaction.begin();
			session.delete(t);
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("drop() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public int drop(List<T> list) throws DaoException {
		if (list == null) {
			throw new IllegalArgumentException("list is null");
		}

		session = this.getSession();
		transaction = session.getTransaction();

		try {
			transaction.begin();

			for (int i = 0, size = list.size(); i < size; i++) {
				session.delete(list.get(i));
				if (i % DaoConfig.BATCH_SIZE == 0) {
					session.flush();
					session.clear();
				}
			}

			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("drop() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return 0;
	}

	@Override
	public void update(T t) throws DaoException {
		if (t == null) {
			throw new IllegalArgumentException("entity is null");
		}
		session = this.getSession();
		transaction = session.getTransaction();
		try {
			transaction.begin();
			session.update(t);
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("update() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public int update(List<T> list) throws DaoException {
		if (list == null) {
			throw new IllegalArgumentException("list is null");
		}

		session = this.getSession();
		transaction = session.getTransaction();

		try {
			transaction.begin();

			for (int i = 0, size = list.size(); i < size; i++) {
				session.saveOrUpdate(list.get(i));
				if (i % DaoConfig.BATCH_SIZE == 0) {
					session.flush();
					session.clear();
				}
			}

			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("update() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return 0;
	}

	@Override
	public List<T> query() throws DaoException {
		StringBuffer hql = new StringBuffer("from ").append(entity.getSimpleName());
		logger.debug(hql);
		List<T> list = this.query(hql.toString(), null, null);
		return list;
	}

	@Override
	public List<T> query(String hql) throws DaoException {
		return this.query(hql, null, null);
	}

	@Override
	public List<T> query(String hql, int start, int limit) throws DaoException {
		return this.query(hql, null, null, start, limit);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> query(String hql, int[] types, Object[] args) throws DaoException {
		if (hql == null) {
			throw new IllegalArgumentException("hql is null");
		}
		session = this.getSession();
		query = HibernateQueryUtil.createQuery(session, hql, types, args);
		transaction = session.getTransaction();
		List<T> list = null;
		try {
			transaction.begin();
			list = query.list();
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("query() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T queryUnique(String hql, int[] types, Object[] args) throws DaoException {
		List<T> list = this.query(hql, types, args);
		if (list != null && list.size() > 0) {
			return list.get(0);
		} else {
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> query(String hql, int[] types, Object[] args, int start, int limit) throws DaoException {
		if (hql == null) {
			throw new IllegalArgumentException("hql is null");
		}
		logger.debug(hql);
		session = this.getSession();
		query = HibernateQueryUtil.createQuery(session, hql, types, args);
		query.setFirstResult(start);
		if (limit > -1) {
			query.setMaxResults(limit);
		}
		transaction = session.getTransaction();
		List<T> list = null;
		try {
			transaction.begin();
			list = query.list();
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("query() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return list;
	}

	@Override
	public int count() throws DaoException {
		String hql = "select count(*) from " + entity.getSimpleName();
		return this.count(hql, null, null);
	}

	@Override
	public int count(String sql) throws DaoException {
		return this.count(sql, null, null);
	}

	@Override
	public int count(String sql, int[] types, Object[] args) throws DaoException {
		if (sql == null) {
			throw new IllegalArgumentException("sql is null");
		}
		logger.debug(sql);
		session = this.getSession();
		query = HibernateQueryUtil.createQuery(session, sql, types, args);
		transaction = session.getTransaction();
		int count = 0;
		try {
			transaction.begin();
			String result = String.valueOf(query.uniqueResult());
			if (result != null && !"null".equals(result)) {
				count = Integer.parseInt(result);
			}
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("count() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return count;
	}

	@Override
	public boolean execute(String sql) throws DaoException {
		return this.execute(sql, null, null);
	}

	@Override
	public boolean execute(String sql, int[] types, Object[] args) throws DaoException {
		if (sql == null) {
			throw new IllegalArgumentException("sql is null");
		}
		return super.execute(sql, types, args);
	}

	@Override
	public ResultSet executeQuery(String sql) throws DaoException {
		return this.executeQuery(sql, null, null);
	}

	@Override
	public ResultSet executeQuery(String sql, int[] types, Object[] args) throws DaoException {
		if (sql == null) {
			throw new IllegalArgumentException("sql is null");
		}
		return super.executeQuery(sql, types, args);
	}

	@Override
	public int executeUpdate(String sql) throws DaoException {
		return this.executeUpdate(sql, null, null);
	}

	@Override
	public int executeUpdate(String sql, int[] types, Object[] args) throws DaoException {
		if (sql == null) {
			throw new IllegalArgumentException("sql is null");
		}
		logger.debug(sql);
		try {
			session = this.getSession();
		} catch (HibernateDaoException e1) {
		}
		sqlQuery = HibernateQueryUtil.createSqlQuery(session, sql, types, args);
		transaction = session.getTransaction();
		transaction.begin();
		int count = -1;
		try {
			transaction.begin();
			count = sqlQuery.executeUpdate();
			if (this.autoCommit) {
				this.commit();
			}
		} catch (Exception e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException("executeUpdate() throws exception", e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return count;
	}

	@Override
	public void commit() throws DaoException {
		// JDBC
		try {
			super.commit();
		} catch (DaoException e) {
			throw e;
		}
		// Hibernate
		if (this.transaction == null || !this.transaction.isActive()) {
			return;
		} else if (!this.transaction.wasCommitted()) {
			this.transaction.commit();
		}
	}

	@Override
	public void rollback() throws DaoException {
		// JDBC
		try {
			super.rollback();
		} catch (DaoException e) {
			throw e;
		}
		// Hibernate
		if (this.transaction == null || !this.transaction.isActive()) {
			return;
		} else if (!this.transaction.wasRolledBack()) {
			this.transaction.rollback();
		}
	}

	@Override
	public void close() throws DaoException {
		// JDBC
		try {
			super.close();
		} catch (DaoException e) {
			throw e;
		}
		// Hibernate
		if (this.session != null) {
			HibernateSessionUtil.closeSession();
			this.transaction = null;
			this.query = null;
			this.criteria = null;
			this.sqlQuery = null;
			this.session = null;
		}
	}

}
