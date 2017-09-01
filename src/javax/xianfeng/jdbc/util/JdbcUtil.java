package javax.xianfeng.jdbc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

/**
 * JDBC的工具类<br>
 * 功能说明：提供管理JDBC对象的方法
 * @author Programmer.Wenlong
 * @since 2011-11-18 下午11:42:25
 */
public final class JdbcUtil {

	private JdbcUtil() {
		super();
	}

	/**
	 * 获取Connection对象
	 * @param driver
	 * @param url
	 * @param user
	 * @param password
	 * @return
	 * @throws SQLException
	 * @throws ClassNotFoundException
	 */
	public static Connection getConnection(String driver, String url, String user, String password) throws SQLException, ClassNotFoundException {
		Class.forName(driver);
		return getConnection(url, user, password);
	}

	/**
	 * 获取Connection对象
	 * @author Programmer.Wenlong
	 * @since 2012-4-6 下午11:51:05
	 * @param url
	 * @param user
	 * @param password
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection(String url, String user, String password) throws SQLException {
		Connection con = DriverManager.getConnection(url, user, password);
		con.setAutoCommit(false);
		return con;
	}

	/**
	 * 获取Connection对象
	 * @param dataSource
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection(DataSource dataSource) throws SQLException {
		Connection con = dataSource.getConnection();
		// 判断数据库连接是否正常
		if (con == null) {
			throw new SQLException("The connection is invalid");
		}
		// con.setAutoCommit(false);
		return con;
	}

	/**
	 * 关闭Connection对象
	 * @param con
	 * @throws SQLException
	 */
	public static void close(Connection con) throws SQLException {
		if (con != null && !con.isClosed()) {
			con.close();
		}
	}

	/**
	 * 关闭Statement对象
	 * @param state
	 * @throws SQLException
	 */
	public static void close(Statement state) throws SQLException {
		if (state != null) {
			state.close();
		}
	}

	/**
	 * 关闭ResultSet对象
	 * @param result
	 * @throws SQLException
	 */
	public static void close(ResultSet result) throws SQLException {
		if (result != null) {
			result.close();
		}
	}

	/**
	 * 关闭Connection对象和Statement对象
	 * @param con
	 * @param state
	 * @throws SQLException
	 */
	public static void close(Connection con, Statement state) throws SQLException {
		try {
			close(state);
		} catch (SQLException e) {
			throw e;
		} finally {
			close(con);
		}
	}

	/**
	 * 关闭Connection对象、Statement对象和ResultSet对象
	 * @param con
	 * @param state
	 * @param result
	 * @throws SQLException
	 */
	public static void close(Connection con, Statement state, ResultSet result) throws SQLException {
		try {
			close(result);
		} catch (SQLException e) {
			throw e;
		} finally {
			close(con, state);
		}
	}

}
