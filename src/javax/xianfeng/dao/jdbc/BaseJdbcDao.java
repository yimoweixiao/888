package javax.xianfeng.dao.jdbc;

import java.sql.ResultSet;
import java.util.List;

import javax.sql.DataSource;
import javax.xianfeng.dao.DaoException;

/**
 * 基础的DAO接口
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:35:25
 */
public interface BaseJdbcDao {

	/**
	 * 初始化方法
	 * @throws DaoException
	 */
	public void init() throws Exception;

	/**
	 * 执行SQL语句
	 * @param sql
	 * @return
	 * @throws DaoException
	 */
	public boolean execute(String sql) throws DaoException;

	/**
	 * 执行SQL语句
	 * @param sql
	 * @param types 参数类型数组
	 * @param args 参数数组
	 * @return
	 * @throws DaoException
	 */
	public boolean execute(String sql, int[] types, Object[] args) throws DaoException;

	/**
	 * 执行查询的SQL语句
	 * @param sql
	 * @return 查询结果集
	 * @throws DaoException
	 */
	public ResultSet executeQuery(String sql) throws DaoException;

	/**
	 * 执行查询的SQL语句
	 * @param sql
	 * @param types 参数类型数组
	 * @param args 参数数组
	 * @return 查询结果集
	 * @throws DaoException
	 */
	public ResultSet executeQuery(String sql, int[] types, Object[] args) throws DaoException;

	/**
	 * 执行更新的SQL语句
	 * @param sql
	 * @return
	 * @throws DaoException
	 */
	public int executeUpdate(String sql) throws DaoException;

	/**
	 * 执行更新的SQL语句
	 * @param sql
	 * @param list 参数集合
	 * @return
	 * @throws DaoException
	 */
	public int executeUpdate(String sql, int[] types, Object[] args) throws DaoException;

	/**
	 * 批量执行SQL语句
	 * @param sql
	 * @param list 参数列表的集合
	 * @return 影响的数据库记录数
	 * @throws DaoException
	 */
	public int executeBatch(String sql, List<List<Object>> list) throws DaoException;

	/**
	 * 设置事务自动提交
	 * @param autoCommit
	 * @throws DaoException
	 * @throws DaoException
	 */
	public void setAutoCommit(boolean autoCommit) throws DaoException;

	/**
	 * 设置数据库对象自动关闭
	 * @param autoClose
	 * @throws DaoException
	 */
	public void setAutoClose(boolean autoClose);

	/**
	 * 提交
	 * @throws DaoException
	 */
	public void commit() throws DaoException;

	/**
	 * 回滚
	 * @throws DaoException
	 */
	public void rollback() throws DaoException;

	/**
	 * 关闭数据库对象
	 * @throws DaoException
	 */
	public void close() throws DaoException;

	/**
	 * 获取数据源
	 * @return
	 */
	public DataSource getDataSource();

	/**
	 * 设置数据源
	 * @param dataSource
	 * @throws DaoException
	 */
	public void setDataSource(DataSource dataSource);

}
