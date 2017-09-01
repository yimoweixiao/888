package javax.xianfeng.jdbc.util;

import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.sql.Types;

/**
 * java.sql.PreparedStatement对象工具类
 * @author Programmer.Wenlong
 * @since 2012-2-21 下午05:23:51
 */
public final class JdbcStatementUtil {

	private JdbcStatementUtil() {
		super();
	}

	/**
	 * 获取PreparedStatement对象
	 * @param con
	 * @param sql
	 * @return
	 * @throws SQLException
	 */
	public static PreparedStatement getPreparedStatement(Connection con, String sql) throws SQLException {
		PreparedStatement state = con.prepareStatement(sql.toUpperCase());
		return state;
	}

	/**
	 * 获取PreparedStatement对象
	 * @param con
	 * @param sql
	 * @param args 参数数组
	 * @return
	 * @throws SQLException
	 */
	public static PreparedStatement getPreparedStatement(Connection con, String sql, Object[] args) throws SQLException {
		PreparedStatement state = getPreparedStatement(con, sql);
		if ((args != null)) {
			// 装载SQL中需要的参数
			for (int i = 0, length = args.length; i < length; i++) {
				state.setObject(i + 1, args[i]);
			}
		}
		return state;
	}

	/**
	 * 获取PreparedStatement对象<br>
	 * SQL语句中的查询参数下标是从1开始
	 * @param con
	 * @param sql
	 * @param types 参数类型数组
	 * @param args 参数对象数组
	 * @return
	 * @throws SQLException
	 */
	public static PreparedStatement getPreparedStatement(Connection con, String sql, int[] types, Object[] args) throws SQLException {
		PreparedStatement state = getPreparedStatement(con, sql);
		if ((types != null)) {
			// 装载SQL中需要的参数
			for (int i = 0, length = types.length; i < length; i++) {
				switch (types[i]) {
				// 数值类型
				case Types.TINYINT:
					state.setByte(i + 1, (Byte) args[i]);
					break;
				case Types.INTEGER:
					state.setInt(i + 1, (Integer) args[i]);
					break;
				case Types.BIGINT:
					state.setLong(i + 1, (Long) args[i]);
					break;
				case Types.FLOAT:
					state.setFloat(i + 1, (Float) args[i]);
					break;
				case Types.DOUBLE:
					state.setDouble(i + 1, (Double) args[i]);
					break;
				// 字符类型
				case Types.CHAR:

					break;
				case Types.VARCHAR:
					state.setString(i + 1, (String) args[i]);
					break;
				// 日期类型
				case Types.DATE:
					state.setDate(i + 1, (Date) args[i]);
					break;
				case Types.TIME:
					state.setTime(i + 1, (Time) args[i]);
					break;
				case Types.TIMESTAMP:
					state.setTimestamp(i + 1, (Timestamp) args[i]);
					break;
				// 其他类型
				case Types.CLOB:
					state.setClob(i + 1, (Clob) args[i]);
					break;
				case Types.BLOB:
					state.setBlob(i + 1, (Blob) args[i]);
					break;
				default:
					state.setObject(i + 1, args[i]);
					break;
				}
			}
		}
		return state;
	}

}
