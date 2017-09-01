package javax.xianfeng.mybatis.dao;

import java.io.Serializable;
import java.util.List;

import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.dao.HibernateDaoSupport;

/**
 * @author Programmer.Wenlong
 * @since 2012-7-14 上午11:07:36
 */
public class MyBatisDaoImpl<T extends Serializable> extends HibernateDaoSupport implements EntityDao<T> {

	@Override
	public DataSet filter() throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DataSet filter(String sql) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DataSet filter(ParameterSet parameterSet) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DataSet filter(String sql, ParameterSet parameterSet) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() throws DaoException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count(String sql) throws DaoException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int count(String sql, int[] types, Object[] args) throws DaoException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void delete(Serializable id) throws DaoException {
		// TODO Auto-generated method stub

	}

	@Override
	public void drop(T t) throws DaoException {
		// TODO Auto-generated method stub

	}

	@Override
	public int drop(List<T> args) throws DaoException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public T get(Serializable id) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> query() throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> query(String sql) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> query(String sql, int start, int limit) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> query(String sql, int[] types, Object[] args) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T queryUnique(String hql, int[] types, Object[] args) throws DaoException {
		List<T> list = this.query(hql, types, args);
		if (list != null) {
			return list.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<T> query(String sql, int[] types, Object[] args, int start, int limit) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(T t) throws DaoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int save(List<T> args) throws DaoException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void saveOrUpdate(T t) throws DaoException {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(T t) throws DaoException {
		// TODO Auto-generated method stub

	}

	@Override
	public int update(List<T> args) throws DaoException {
		// TODO Auto-generated method stub
		return 0;
	}

}
