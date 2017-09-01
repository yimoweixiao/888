package javax.xianfeng.dao.jdbc;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.jdbc.beans.DataBaseTable;
import javax.xianfeng.dao.util.ResultSetFormat;
import javax.xianfeng.jdbc.DataSourceException;
import javax.xianfeng.jdbc.sql.SqlFactory;
import javax.xianfeng.util.FieldUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * O JDBC实现的DAO类
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:38:44
 */
public class JdbcDaoImpl<T extends Serializable> extends JdbcDao implements EntityDao<T> {

	private static final Log logger = LogFactory.getLog(JdbcDaoImpl.class);

	protected Class<T> entity; // 实体类类型对象

	private Field[] fields; // T对象的属性集合

	private DataBaseTable table; // 数据库表对象

	private ResultSetFormat<T> resultSetFormat; // 数据转换对象

	public JdbcDaoImpl(Class<T> entity) {
		// 初始化默认的DAO配置
		try {
			init();
		} catch (DataSourceException e) {
			logger.debug("Initializing Exception", e);
		}
		// 初始化泛型实体的处理对象
		this.fields = FieldUtil.getFields(entity);
		this.table = DataBaseBuilder.newInstance().buildTable(entity);
		this.resultSetFormat = new ResultSetFormat<T>(entity);
	}

	@Override
	public DataSet filter() {
		return this.filter(null, null);
	}

	@Override
	public DataSet filter(String sql) {
		return this.filter(sql, null);
	}

	@Override
	public DataSet filter(ParameterSet parameters) {

		return null;
	}

	@Override
	public DataSet filter(String sql, ParameterSet parameters) {
		logger.debug(sql);
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable save(T t) throws DaoException {
		if (t == null) {
			throw new DaoException("The object of T can't be null");
		}
		String sql = SqlFactory.getInsertSql(this.table);
		logger.debug(sql);
		// t对象的属性值集合
		List<Object> list = getValuesOf(t);
		// 执行insert操作
		try {
			this.execute(sql, null, list.toArray());
			return t;
		} catch (DaoException e) {
			throw new DaoException(e);
		}

	}

	@Override
	public void saveOrUpdate(T t) throws DaoException {
		// TODO 实现saveOrUpdate()方法
	}

	@Override
	public int save(List<T> args) throws DaoException {
		if (args == null) {
			throw new DaoException("The object of List<T> can't be null");
		}
		String sql = SqlFactory.getInsertSql(this.table);
		logger.debug(sql);
		// 获取List<T>对象的属性值集合
		List<List<Object>> list = getValuesOf(args);
		// 执行批量insert操作
		try {
			return this.executeBatch(sql, list);
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public void drop(T t) throws DaoException {
		if (t == null) {
			throw new DaoException("The object of T can't be null");
		}
		String sql = SqlFactory.getDeleteSql(table);
		logger.debug(sql);
		// 获取t对象的属性值
		List<Object> list = getValuesOf(t);
		try {
			this.execute(sql, null, list.toArray());
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public int drop(List<T> args) throws DaoException {
		if (args == null) {
			throw new DaoException("The object of List<T> can't be null");
		}
		String sql = SqlFactory.getDeleteSql(table);
		logger.debug(sql);
		// 获取List<T>对象的属性值集合
		List<List<Object>> list = getValuesOf(args);
		// 批量执行delete操作
		try {
			return this.executeBatch(sql, list);
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public T get(Serializable id) throws DaoException {
		String sql = SqlFactory.getSelectSql(table);
		logger.debug(sql);
		// TODO
		try {
			ResultSet result = this.executeQuery(sql);
			List<T> list = null;
			try {
				list = resultSetFormat.formatToList(result);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if (list != null && list.size() > 0) {
				return list.get(0);
			} else {
				return null;
			}
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public void delete(Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(T t) throws DaoException {
		if (t == null) {
			throw new DaoException("The object of T can't be null");
		}
		String sql = SqlFactory.getUpdateSql(table);
		logger.debug(sql);
		// 获取t对象的属性值
		List<Object> list = getValuesOf(t);
		try {
			this.execute(sql, null, list.toArray());
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public int update(List<T> args) throws DaoException {
		if (args == null) {
			throw new DaoException("The object of List<T> can't be null");
		}
		String sql = SqlFactory.getUpdateSql(table);
		logger.debug(sql);
		// 获取List<T>对象的属性值集合
		List<List<Object>> list = getValuesOf(args);
		// 批量执行update操作
		try {
			return this.executeBatch(sql, list);
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public List<T> query() throws DaoException {
		String sql = SqlFactory.getSelectSql(table);
		logger.debug(sql);
		return this.query(sql);
	}

	@Override
	public List<T> query(String sql) throws DaoException {
		return this.query(sql, null, null);
	}

	@Override
	public List<T> query(String sql, int start, int limit) throws DaoException {
		return this.query(sql, null, null);
	}

	@Override
	public List<T> query(String sql, int[] types, Object[] args) throws DaoException {
		try {
			ResultSet result = this.executeQuery(sql, null, args);
			List<T> list = null;
			try {
				list = resultSetFormat.formatToList(result);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		} catch (DaoException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public T queryUnique(String sql, int[] types, Object[] args) throws DaoException {
		logger.debug(sql);
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> query(String sql, int[] types, Object[] args, int start, int limit) throws DaoException {
		logger.debug(sql);
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

	/**
	 * 获取T对象的属性集合
	 * @param t
	 * @return
	 */
	private List<Object> getValuesOf(T t) {
		List<Object> list = new ArrayList<Object>();
		try {
			// 遍历t对象的属性值
			for (Field field : fields) {
				Object value = FieldUtil.getValueOfName(t, field.getName());
				list.add(value);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 获取List<T>对象中的属性集合
	 * @param args
	 * @return
	 */
	private List<List<Object>> getValuesOf(List<T> args) {
		List<List<Object>> list = new ArrayList<List<Object>>();
		// 遍历List<T>对象
		for (T t : args) {
			List<Object> values = new ArrayList<Object>(fields.length);
			try {
				// 遍历t对象的属性
				for (Field field : fields) {
					Object value = FieldUtil.getValueOfName(t, field.getName());
					values.add(value);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			list.add(values);
		}
		return list;
	}

}
