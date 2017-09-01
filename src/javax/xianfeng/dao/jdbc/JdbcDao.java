package javax.xianfeng.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;
import javax.xianfeng.dao.DaoConfig;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.jdbc.DataSourceException;
import javax.xianfeng.jdbc.DataSourceProvider;
import javax.xianfeng.jdbc.util.JdbcStatementUtil;
import javax.xianfeng.jdbc.util.JdbcUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * BaseJdbcDao的JDBC实现类<br>
 * <br>
 * 关于autoCommit的说明如下：<br>
 * （1）true：自动提交、自动回滚<br>
 * （2）false：手动提交、手动回滚<br>
 * 如果不自动提交，当执行完用户的操作之后，用户需要手动提交，否则执行的操作就不会同步到数据库<br>
 * 如果不自动提交，当执行的操作抛出异常之后，用户需要手动回滚，否则就会造成数据的不一致性<br>
 * <br>
 * 关于autoClose的说明如下：<br>
 * （1）true：自动关闭<br>
 * （2）false：手动关闭<br>
 * 如果不自动关闭，当执行完用户的操作之后，用户需要手动关闭数据库对象，否则将会占用大量的数据库资源，降低系统性能<br>
 * <br>
 * 注：autoCommit=flase时，必须满足autoClose=false，否则在用户提交的时候，数据库对象已经关闭。<br>
 * <br>
 * 实例：直接调用JdbcDao中的方法
 * 
 * <pre>
 * jdbcDao.setAutoClose(false);
 * ResultSet result = jdbcDao.executeQuery(&quot;select * from user &quot;);
 * while (result.next()) {
 * 	String id = result.getString(&quot;id&quot;);
 * 	String name = result.getString(&quot;name&quot;);
 * 	System.out.println(&quot;Id:&quot; + id + &quot;\tName:&quot; + name);
 * }
 * jdbcDao.close();
 * </pre>
 * 
 * 说明：如果使用JdbcDao默认的autoClose=true属性，在调用完executeQuery()方法之后，result对象将会关闭和回收， 再调用其next()方法就会出现异常。<br>
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午01:19:55
 */
public abstract class JdbcDao implements BaseJdbcDao {

	private static Log logger = LogFactory.getLog(JdbcDao.class);

	protected DataSource dataSource = null; // 数据源

	// 操作数据库的JDBC对象
	protected Connection con = null; // 数据库连接对象

	private PreparedStatement state = null; // 数据库操作对象

	private ResultSet result = null; // 数据库结果集对象

	protected boolean autoCommit = true; // 自动提交

	protected boolean autoClose = true; // 自动关闭

	@Override
	public void init() throws DataSourceException {
		// 配置默认数据源
		this.dataSource = DataSourceProvider.getDataSource("dataSource");
	}

	@Override
	public boolean execute(String sql) throws DaoException {
		return this.execute(sql, null, null);
	}

	@Override
	public boolean execute(String sql, int[] types, Object[] args) throws DaoException {
		logger.debug("jdbc - " + sql);
		try {
			this.onReady();
			this.onPrepared(sql, types, args);
			this.state.execute();
			if (this.autoCommit) {
				this.commit();
			}
			return true;
		} catch (SQLException e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException(e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public ResultSet executeQuery(String sql) throws DaoException {
		return this.executeQuery(sql, null, null);
	}

	@Override
	public ResultSet executeQuery(String sql, int[] types, Object[] args) throws DaoException {
		logger.debug("jdbc - " + sql);
		try {
			this.onReady();
			this.onPrepared(sql, types, args);
			this.result = this.state.executeQuery();
			if (this.autoCommit) {
				this.commit();
			}
		} catch (SQLException e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException(e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
		return this.result;
	}

	@Override
	public int executeUpdate(String sql) throws DaoException {
		return executeUpdate(sql, null, null);
	}

	@Override
	public int executeUpdate(String sql, int[] types, Object[] args) throws DaoException {
		logger.debug("jdbc - " + sql);
		try {
			this.onReady();
			this.onPrepared(sql, types, args);
			int result = this.state.executeUpdate();
			if (this.autoCommit) {
				this.commit();
			}
			return result;
		} catch (SQLException e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException(e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	@Override
	public int executeBatch(String sql, List<List<Object>> list) throws DaoException {
		logger.debug("jdbc - " + sql);
		try {
			onReady();
			this.state = JdbcStatementUtil.getPreparedStatement(this.con, sql);
			int count = 0; // 计数器
			int total = list.size(); // 总数据记录个数
			// 遍历多个数据记录
			for (int i = 0; i < total; i++) {
				// 遍历单个数据记录的参数
				for (int j = 0, size = list.get(i).size(); j < size; j++) {
					this.state.setObject(j + 1, list.get(i).get(j));
				}
				this.state.addBatch();
				// 提交达到BATCH_SIZE上限的记录
				if ((++count) % DaoConfig.BATCH_SIZE == 0) {
					int[] result = this.state.executeBatch();
					count += result.length;
				}
			}
			// 提交剩余的数据记录
			if (total % DaoConfig.BATCH_SIZE != 0) {
				int[] result = this.state.executeBatch();
				count += result.length;
			}
			if (this.autoCommit) {
				this.commit();
			}
			return count;
		} catch (SQLException e) {
			if (this.autoCommit) {
				this.rollback();
			}
			throw new DaoException(e);
		} finally {
			if (this.autoClose) {
				this.close();
			}
		}
	}

	/**
	 * 初始化JdbcDao的方法<br>
	 * 设置Connection对象是否自动提交<br>
	 * @throws SQLException
	 */
	protected void onReady() throws SQLException {
		if (this.con == null) {
			this.con = JdbcUtil.getConnection(this.dataSource);
		}
		if (this.autoCommit) {
			this.con.setAutoCommit(false);
		} else {
			this.con.setAutoCommit(true);
		}
	}

	/**
	 * 获取PreparedStatement对象的方法
	 * @param sql
	 * @param types 参数类型数组
	 * @param args 参数对象数组
	 * @throws DaoException
	 * @throws SQLException
	 */
	private void onPrepared(String sql, int[] types, Object[] args) throws DaoException, SQLException {
		// 获取操作数据库的PreparedStatement对象
		if (args != null) {
			// 判断是否有类型参数
			if (types != null) {
				// 判断类型参数个数和参数对象个数是否一致
				if (types.length != args.length) {
					throw new DaoException("the number of types and args is not matched");
				} else {
					this.state = JdbcStatementUtil.getPreparedStatement(this.con, sql, types, args);
				}
			} else {
				this.state = JdbcStatementUtil.getPreparedStatement(this.con, sql, args);
			}
		} else {
			this.state = JdbcStatementUtil.getPreparedStatement(this.con, sql);
		}
	}

	@Override
	public void commit() throws DaoException {
		try {
			if (this.con != null && !this.con.isClosed()) {
				this.con.commit();
			}
		} catch (SQLException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public void rollback() throws DaoException {
		try {
			if (this.con != null && !this.con.isClosed()) {
				this.con.rollback();
			}
		} catch (SQLException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public void close() throws DaoException {
		try {
			if (this.con != null && !this.con.isClosed()) {
				JdbcUtil.close(this.con, this.state, this.result);
				this.result = null;
				this.state = null;
				this.con = null;
			}
		} catch (SQLException e) {
			throw new DaoException(e);
		}
	}

	@Override
	public void setAutoCommit(boolean autoCommit) throws DaoException {
		this.autoCommit = autoCommit;
		if (!this.autoCommit && this.autoClose) {
			// autoClose=false while autoCommit=false
			this.autoClose = false;
		}
	}

	@Override
	public void setAutoClose(boolean autoClose) {
		this.autoClose = autoClose;
	}

	@Override
	public DataSource getDataSource() {
		return this.dataSource;
	}

	@Override
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

}
