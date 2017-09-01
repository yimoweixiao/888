package javax.xianfeng.dao;

import java.io.Serializable;
import java.util.List;

/**
 * 实体类的DAO接口<br>
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午12:48:44
 */
public interface BaseEntityDao<T extends Serializable> {

	/**
	 * 保存实体对象
	 * @param t
	 * @return
	 * @exception DaoException
	 */
	public Serializable save(T t) throws DaoException;

	/**
	 * 保存或者更新实体对象
	 * @param t
	 * @exception DaoException
	 */
	public void saveOrUpdate(T t) throws DaoException;

	/**
	 * 批量保存实体对象
	 * @param args
	 * @exception DaoException
	 */
	public int save(List<T> args) throws DaoException;

	/**
	 * 根据主键查询实体对象
	 * @param k
	 * @return
	 * @exception DaoException
	 */
	public T get(Serializable id) throws DaoException;

	/**
	 * 根据主键删除实体对象
	 * @param id
	 * @exception DaoException
	 */
	public void delete(Serializable id) throws DaoException;

	/**
	 * 删除实体对象
	 * @param t
	 * @exception DaoException
	 */
	public void drop(T t) throws DaoException;

	/**
	 * 批量删除实体对象
	 * @param args
	 * @exception DaoException
	 */
	public int drop(List<T> args) throws DaoException;

	/**
	 * 更新实体对象
	 * @param t
	 * @exception DaoException
	 */
	public void update(T t) throws DaoException;

	/**
	 * 批量更新实体对象
	 * @param args
	 * @exception DaoException
	 */
	public int update(List<T> args) throws DaoException;

	/**
	 * 无条件查询实体对象
	 * @return
	 * @exception DaoException
	 */
	public List<T> query() throws DaoException;

	/**
	 * 根据查询语句查询实体对象
	 * @param sql
	 * @return
	 * @exception DaoException
	 */
	public List<T> query(String sql) throws DaoException;

	/**
	 * 根据查询语句分页查询实体对象
	 * @author Programmer.Wenlong
	 * @since 2012-4-29 下午11:45:18
	 * @param sql
	 * @param start
	 * @param limit
	 * @return
	 * @throws DaoException
	 */
	public List<T> query(String sql, int start, int limit) throws DaoException;

	/**
	 * 根据查询语句、查询参数集合查询实体对象
	 * @param sql
	 * @return
	 * @exception DaoException
	 */
	public List<T> query(String sql, int[] types, Object[] args) throws DaoException;

	/**
	 * 根据查询条件查询唯一的实体对象
	 * @param sql
	 * @param types
	 * @param args
	 * @return
	 * @throws DaoException
	 */
	public T queryUnique(String sql, int[] types, Object[] args) throws DaoException;

	/**
	 * 根据查询语句、查询参数集合分页查询实体对象
	 * @param sql
	 * @param types 参数类型数组
	 * @param args 参数对象数组
	 * @param start 起始索引
	 * @param limit 索引增量
	 * @return
	 * @throws DaoException
	 */
	public List<T> query(String sql, int[] types, Object[] args, int start, int limit) throws DaoException;

	/**
	 * 统计所有对象的数目
	 * @author Programmer.Wenlong
	 * @since 2012-6-5 下午11:33:29
	 * @return
	 * @throws DaoException
	 */
	public int count() throws DaoException;

	/**
	 * 统计所有对象的数目
	 * @author Programmer.Wenlong
	 * @since 2012-6-5 下午11:33:53
	 * @param sql 查询语句
	 * @return
	 * @throws DaoException
	 */
	public int count(String sql) throws DaoException;

	/**
	 * 统计所有对象的数目
	 * @author Programmer.Wenlong
	 * @since 2012-6-5 下午11:34:04
	 * @param sql 查询语句
	 * @param types 参数类型数组
	 * @param args 参数数组
	 * @return
	 * @throws DaoException
	 */
	public int count(String sql, int[] types, Object[] args) throws DaoException;

}
