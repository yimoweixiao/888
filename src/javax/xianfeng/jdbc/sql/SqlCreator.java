package javax.xianfeng.jdbc.sql;

import java.util.List;

import javax.xianfeng.dao.jdbc.beans.DataBaseField;
import javax.xianfeng.dao.jdbc.beans.DataBaseTable;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * SQL语句创建类
 * @author Programmer.Wenlong
 * @since 2011-12-6 下午10:59:26
 */
public final class SqlCreator {

	private static final Log logger = LogFactory.getLog(SqlCreator.class);

	private SqlCreator() {
		super();
	}

	/**
	 * table的create语句
	 * @param table
	 * @return
	 */
	public static String getCreateSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("create table ").append(table.getName()).append("(");
		// 主键
		List<DataBaseField> ids = table.getKeyFields();
		logger.debug("Primary key size: " + ids.size());
		for (DataBaseField field : ids) {
			String name = field.getName();
			String constraint = field.getConstraint();
			sql.append(name).append(" ").append(SqlType.getSqlType(field));
			if (constraint != null && constraint.length() > 0) {
				sql.append(" ").append(constraint);
			}
			sql.append(",");
		}
		// 普通字段
		List<DataBaseField> fields = table.getFields();
		logger.debug("Ordinary field size: " + fields.size());
		for (DataBaseField field : fields) {
			String name = field.getName();
			// 字段级约束
			String constraint = field.getConstraint();
			sql.append(name).append(" ").append(SqlType.getSqlType(field));
			if (constraint != null && constraint.length() > 0) {
				sql.append(" ").append(constraint);
			}
			sql.append(",");
		}
		// 删除最后的逗号
		if (sql.charAt(sql.length() - 1) == ',') {
			sql.deleteCharAt(sql.length() - 1);
		}
		// 表级约束
		if (table.getConstraint() != null) {
			sql.append(",").append(table.getConstraint());
		}
		sql.append(")");
		return sql.toString();
	}

	/**
	 * insert语句<br>
	 * 注：所有对象的属性都保存
	 * @param table
	 * @return
	 */
	public static String getInsertSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into ").append(table.getName()).append("(");
		// 主键
		List<DataBaseField> ids = table.getKeyFields();
		for (DataBaseField id : ids) {
			sql.append(id.getName()).append(",");
		}
		// 普通字段
		List<DataBaseField> fields = table.getFields();
		for (DataBaseField field : fields) {
			sql.append(field.getName()).append(",");
		}
		sql.deleteCharAt(sql.length() - 1);
		sql.append(") values(");
		for (int i = 0; i < ids.size(); i++) {
			sql.append("?").append(",");
		}
		for (int i = 0; i < fields.size(); i++) {
			sql.append("?").append(",");
		}
		// 删除最后的逗号
		if (sql.charAt(sql.length() - 1) == ',') {
			sql.deleteCharAt(sql.length() - 1);
		}
		sql.append(")");
		return sql.toString();
	}

	/**
	 * delete语句<br>
	 * 注：全字段匹配
	 * @param table
	 * @return
	 */
	public static String getDeleteSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("delete from ").append(table.getName());
		sql.append(" where 1=1 ");
		// 主键
		List<DataBaseField> ids = table.getKeyFields();
		for (DataBaseField id : ids) {
			sql.append("and ").append(id.getName()).append("=? ");
		}
		// 普通字段
		List<DataBaseField> columns = table.getFields();
		for (DataBaseField field : columns) {
			sql.append("and ").append(field.getName()).append("=? ");
		}
		return sql.toString();
	}

	public static String getSimpleDeleteSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("delete from ").append(table.getName());
		return sql.toString().toLowerCase();
	}

	/**
	 * update语句<br>
	 * 注：主键不能更新
	 * @param table
	 * @return
	 */
	public static String getUpdateSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("update ").append(table.getName()).append(" set");
		// 普通字段
		List<DataBaseField> columns = table.getFields();
		for (DataBaseField column : columns) {
			sql.append(" ").append(column.getName()).append("=?,");
		}
		// 删除最后的逗号
		if (sql.charAt(sql.length() - 1) == ',') {
			sql.deleteCharAt(sql.length() - 1);
		}
		sql.append(" where 1=1");
		// 主键
		List<DataBaseField> ids = table.getKeyFields();
		for (DataBaseField column : ids) {
			sql.append(" and ").append(column.getName()).append("=?,");
		}
		// 删除最后的逗号
		if (sql.charAt(sql.length() - 1) == ',') {
			sql.deleteCharAt(sql.length() - 1);
		}
		return sql.toString();
	}

	/**
	 * select语句<br>
	 * 注：查询所有的字段
	 * @param table
	 * @return
	 */
	public static String getSelectSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("select * from ").append(table.getName());
		return sql.toString();
	}

	/**
	 * table的drop语句
	 * @param table
	 * @return
	 */
	public static String getDropSql(DataBaseTable table) {
		StringBuffer sql = new StringBuffer();
		sql.append("drop table ").append(table.getName());
		return sql.toString().toLowerCase();
	}

}
