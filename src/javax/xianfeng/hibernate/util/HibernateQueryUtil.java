package javax.xianfeng.hibernate.util;

import java.sql.Time;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.Date;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

/**
 * Hibernate的查询对象工具类
 * @author Programmer.Wenlong
 * @since 2012-2-21 下午09:36:59
 */
public final class HibernateQueryUtil {

	private HibernateQueryUtil() {
		super();
	}

	/**
	 * 获取Hibernate的Query对象<br>
	 * HQL语句中的查询参数下标是从0开始
	 * @param session Session对象
	 * @param hql HQL查询语句
	 * @param types 参数类型数组
	 * @param args 参数对象数组
	 * @return
	 */
	public static Query createQuery(Session session, String hql, int[] types, Object[] args) {
		return setParameter(session.createQuery(hql), types, args);
	}

	/**
	 * 获取Hibernate的SQLQuery对象
	 * @param session
	 * @param sql SQL语句
	 * @param args 参数集合
	 * @return
	 */
	public static SQLQuery createSqlQuery(Session session, String sql, int[] types, Object[] args) {
		return (SQLQuery) setParameter(session.createSQLQuery(sql), types, args);
	}

	/**
	 * 设置Query对象的参数
	 * @param query
	 * @param types
	 * @param args
	 * @return
	 */
	private static Query setParameter(Query query, int[] types, Object[] args) {
		if (args != null) {
			// 设置HQL语句中的查询参数
			for (int i = 0, length = args.length; i < length; i++) {

				switch (types[i]) {
				// 数值类型
				case Types.TINYINT:
					query.setByte(i, (Byte) args[i]);
					break;
				case Types.INTEGER:
					query.setInteger(i, (Integer) args[i]);
					break;
				case Types.BIGINT:
					query.setLong(i, (Long) args[i]);
					break;
				case Types.FLOAT:
					query.setFloat(i, (Float) args[i]);
					break;
				case Types.DOUBLE:
					query.setDouble(i, (Double) args[i]);
					break;

				// 字符类型
				case Types.CHAR:

					break;
				case Types.VARCHAR:
					query.setString(i, (String) args[i]);
					break;

				// 日期类型
				case Types.DATE:
					query.setDate(i, (Date) args[i]);
					break;
				case Types.TIME:
					query.setTime(i, (Time) args[i]);
					break;
				case Types.TIMESTAMP:
					query.setTimestamp(i, (Timestamp) args[i]);
					break;

				// 其他类型
				default:
					query.setParameter(i, args[i]);
					break;
				}

			}
		}
		return query;
	}

}
