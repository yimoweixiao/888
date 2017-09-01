package javax.xianfeng.jdbc.sql;

import java.util.HashMap;
import java.util.Map;

import javax.xianfeng.dao.jdbc.beans.DataBaseTable;

/**
 * SQL生成器类<br>
 * <br>
 * 缓存SQL的格式：<br>
 * key=table+"@"+create/insert/delete/update/select/drop，value=SQL
 * @author Programmer.Wenlong
 * @since 2011-11-23 下午11:41:01
 */
public final class SqlFactory {

	private static Map<String, String> factory = new HashMap<String, String>(); // SQL工厂

	private SqlFactory() {
		super();
	}

	/**
	 * 获取create语句
	 * @param table
	 * @return
	 */
	public static String getCreateSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "create");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getCreateSql(table);
		factory.put(key, sql);
		return sql.toString();
	}

	/**
	 * 获取insert语句<br>
	 * 注：所有对象的属性都保存
	 * @param table
	 * @return
	 */
	public static String getInsertSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "insert");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getInsertSql(table);
		factory.put(key, sql.toString());
		return sql.toString();
	}

	/**
	 * 获取delete语句<br>
	 * 注：全字段匹配
	 * @param table
	 * @return
	 */
	public static String getDeleteSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "delete");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getDeleteSql(table);
		factory.put(key, sql.toString());
		return sql.toString();
	}

	public static String getSimpleDeleteSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "simple_delete");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getSimpleDeleteSql(table);
		factory.put(key, sql.toString());
		return sql.toString().toLowerCase();
	}

	/**
	 * 获取update语句<br>
	 * 注：主键不能更新
	 * @param table
	 * @return
	 */
	public static String getUpdateSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "update");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getUpdateSql(table);
		factory.put(key, sql.toString());
		return sql.toString();
	}

	/**
	 * 获取select语句<br>
	 * 注：查询所有的字段
	 * @param table
	 * @return
	 */
	public static String getSelectSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "select");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getSelectSql(table);
		factory.put(key, sql.toString());
		return sql.toString();
	}

	/**
	 * 获取table的drop语句
	 * @param table
	 * @return
	 */
	public static String getDropSql(DataBaseTable table) {
		String key = getSqlKey(table.getName(), "drop");
		if (factory.get(key) != null) {
			return factory.get(key);
		}
		String sql = SqlCreator.getDropSql(table);
		factory.put(key, sql.toString());
		return sql.toString().toLowerCase();
	}

	/**
	 * 获取指定格式的SQL标识字符串<br>
	 * 例如：t_user@create
	 * @param table
	 * @param type
	 * @return
	 */
	private static String getSqlKey(String table, String type) {
		StringBuffer key = new StringBuffer();
		key.append(table).append("@").append(type);
		return key.toString();
	}

}
