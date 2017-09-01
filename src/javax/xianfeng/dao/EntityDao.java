package javax.xianfeng.dao;

import java.io.Serializable;

import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.jdbc.BaseJdbcDao;

/**
 * 抽象的实体DAO类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:34:51
 * @param <T> 实体类
 */
public interface EntityDao<T extends Serializable> extends BaseJdbcDao, BaseEntityDao<T> {

	/**
	 * 查询数据库表中数据集合的方法
	 * @author Programmer.Wenlong
	 * @since 2012-5-17 下午08:55:43
	 * @return
	 * @throws DaoException
	 */
	public DataSet filter() throws DaoException;

	/**
	 * 根据查询语句查询数据库表中数据集合的方法
	 * @param sql 执行语句
	 * @return
	 * @throws DaoException
	 */
	public DataSet filter(String sql) throws DaoException;

	/**
	 * 根据查询参数集合查询数据库表中数据集合的方法
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午10:28:03
	 * @param parameterSet
	 * @return
	 * @throws DaoException
	 */
	public DataSet filter(ParameterSet parameterSet) throws DaoException;

	/**
	 * 耿虎查询语句、参数集合查询数据库表中数据集合的方法
	 * @param sql 执行语句
	 * @param parameterSet 参数集合
	 * @return
	 * @throws DaoException
	 */
	public DataSet filter(String sql, ParameterSet parameterSet) throws DaoException;

}
