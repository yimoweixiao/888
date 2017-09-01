package javax.xianfeng.dao.jdbc;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.jdbc.annotation.Column;
import javax.xianfeng.dao.jdbc.annotation.Id;
import javax.xianfeng.dao.jdbc.annotation.Table;
import javax.xianfeng.dao.jdbc.beans.DataBaseField;
import javax.xianfeng.dao.jdbc.beans.DataBaseTable;
import javax.xianfeng.jdbc.sql.SqlType;
import javax.xianfeng.jdbc.sql.SqlTypeFormat;
import javax.xianfeng.jdbc.sql.SqlUtil;
import javax.xianfeng.util.ClassUtil;
import javax.xianfeng.util.FieldUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 数据库对象创建类 单例模式
 * @author Programmer.Wenlong
 * @since 2011-11-24 上午12:31:17
 */
public final class DataBaseBuilder {

	private static final Log logger = LogFactory.getLog(DataBaseBuilder.class);

	private DataBaseTable table; // 数据库表对象

	private DataBaseBuilder() {
		super();
	}

	public static DataBaseBuilder newInstance() {
		return DataBaseBuilderHolder.INSTANCE;
	}

	private static class DataBaseBuilderHolder {
		private static final DataBaseBuilder INSTANCE = new DataBaseBuilder();

	}

	/**
	 * 构造DbTable对象
	 * @param clazz 实体类
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public DataBaseTable buildTable(Class clazz) {
		logger.info("Build DbTable instance......");
		// 1.根据实体类信息初始化DbTable对象
		this.buildTableWithBean(clazz);

		// 2.根据实体类的属性初始化DbTable的字段
		this.buildFieldWithBean(clazz);

		// 3.根据实体类标注初始化DbTable对象
		this.buildTableWithAnnotaion(clazz);

		// 4.根据实体类的主键标注初始化DbTable的主键
		this.buildKeyFieldWithAnnotaion(clazz);

		// 5.根据实体类的属性标注初始化DbTable的字段
		this.buildFieldWithAnnotaion(clazz);

		return this.table;
	}

	/**
	 * 根据实体类构造表信息
	 * @param clazz
	 */
	@SuppressWarnings("unchecked")
	public void buildTableWithBean(Class clazz) {
		logger.info("Build DbTable instance with Bean......");
		// 构建表
		this.table = new DataBaseTable();
		logger.debug("Table:");
		logger.debug(Rebuilder.toString(table));
		this.table.setName(clazz.getSimpleName()); // 表名默认为类名
	}

	/**
	 * 根据实体类属性构造普通字段
	 * @param clazz
	 */
	@SuppressWarnings("unchecked")
	public void buildFieldWithBean(Class clazz) {
		logger.info("Build DbTable fields with Bean......");
		// 构建字段
		Field[] fields = FieldUtil.getFields(clazz);
		logger.debug("Filed:\n");
		for (Field field : fields) {
			DataBaseField dbField = new DataBaseField();
			dbField.setName(SqlUtil.toStandardColumnName(field.getName()));
			dbField.setType(SqlTypeFormat.format(field.getType()));
			logger.debug(Rebuilder.toString(dbField));
			this.table.getFields().add(dbField);
		}
	}

	/**
	 * 根据实体类标注构造表信息
	 * @param clazz
	 */
	public void buildTableWithAnnotaion(Class<?> clazz) {
		logger.info("Build DbTable infor with Annotation......");
		// 类级标注
		Map<String, String> map = ClassUtil.getValueOfAnnotaction(clazz, Table.class);
		if (map != null && map.size() > 0) {
			// 表名
			String name = map.get("name");
			if (name != null && name.length() > 0) {
				table.setName(name);
			}
			// 表级约束
			String constraint = map.get("constraint");
			if (constraint != null && constraint.length() > 0) {
				table.setConstraint(constraint);
			}
		}
		logger.debug("Table:\n" + Rebuilder.toString(table));
	}

	/**
	 * 根据属性标注构造主键
	 * @param clazz
	 */
	@SuppressWarnings("unchecked")
	public void buildKeyFieldWithAnnotaion(Class clazz) {
		logger.info("Build DbTable primary key with Annotation......");
		// 属性级标注
		Field[] fields = FieldUtil.getFields(clazz);
		List<String> keyFields = new ArrayList<String>(); // id的name集合
		for (Field field : fields) {
			// 主键
			Map<String, String> map = FieldUtil.getValueOfAnnotation(field, Id.class);
			if (map == null) {
				continue; // 非主键属性
			}
			// 更新table的中的主键
			logger.debug("Primary key:\n");
			for (int i = 0, size = table.getFields().size(); i < size; i++) {
				DataBaseField column = table.getFields().get(i);
				if (column.getName().equals(SqlUtil.toStandardColumnName(field.getName()))) {
					String name = map.get("name");
					// 字段名称
					if (name != null && name.length() > 0) {
						column.setName(map.get("name"));
						keyFields.add(name);
					}
					// 字段类型
					String type = map.get("type");
					if (type != null && type.length() > 0) {
						column.setType(type);
					}
					// 字段长度
					String length = map.get("length");
					if (length != null && length.length() > 0) {
						column.setLength(Integer.parseInt(length));
					}
					// 字段精度
					String decimal = map.get("decimal");
					if (decimal != null && decimal.length() > 0) {
						column.setDecimal(Integer.parseInt(decimal));
					}
					// 字段约束
					String constraint = map.get("constraint");
					StringBuffer _constraint = new StringBuffer();
					_constraint.append(SqlType.Constraint.PRIMARY_KEY).append(" ");
					if (constraint != null && constraint.length() > 0) {
						_constraint.append(constraint); // 字段的非主键约束
					}
					column.setConstraint(_constraint.toString());

					// 字段非空
					String required = map.get("required");
					if (required != null && required.length() > 0) {
						column.setRequired(required.equals("true") ? true : false);
					}
					logger.debug(Rebuilder.toString(column));
					// 将普通字段转换为主键
					table.getKeyFields().add(column);
					table.getFields().remove(column);
					break;
				}
			}
		}
		// 将联合主键约束转换为表级约束
		if (keyFields.size() > 1) {
			StringBuffer constraint = new StringBuffer();
			if (table.getConstraint() != null && table.getConstraint().length() > 0) {
				constraint.append(table.getConstraint()).append(",");
			}
			// 联合多个主键
			constraint.append(SqlType.Constraint.PRIMARY_KEY).append("(");
			for (String id : keyFields) {
				constraint.append(id).append(",");
			}
			constraint.deleteCharAt(constraint.length() - 1);
			constraint.append(")");
			table.setConstraint(constraint.toString());
			// 删除字段级的主键
			for (int i = 0; i < table.getKeyFields().size(); i++) {
				StringBuffer _constraint = new StringBuffer();
				_constraint.append(table.getKeyFields().get(i).getConstraint());
				int index = _constraint.indexOf(SqlType.Constraint.PRIMARY_KEY);
				if (index >= 0) {
					_constraint.delete(index, index + SqlType.Constraint.PRIMARY_KEY.length());
					table.getKeyFields().get(i).setConstraint(_constraint.toString());
				}
			}
		}
	}

	/**
	 * 根据属性标注构造普通字段
	 * @param clazz
	 */
	@SuppressWarnings("unchecked")
	public void buildFieldWithAnnotaion(Class clazz) {
		logger.info("Build DbTable ordinary fields with Annotation......");
		// 属性级标注
		Field[] columns = FieldUtil.getFields(clazz);
		for (Field field : columns) {
			// 普通字段
			Map<String, String> map = FieldUtil.getValueOfAnnotation(field, Column.class);
			if (map != null && map.size() > 0) {
				// 更新table对象字段集合中名称为field.name的字段信息
				for (int i = 0; i < table.getFields().size(); i++) {
					DataBaseField column = table.getFields().get(i);
					if (column.getName().equals(SqlUtil.toStandardColumnName(field.getName()))) {
						// 字段名称
						String name = map.get("name");
						if (name != null && name.length() > 0) {
							table.getFields().get(i).setName(name);
						}
						// 字段类型
						String type = map.get("type");
						if (type != null && type.length() > 0) {
							table.getFields().get(i).setType(type);
						}
						// 字段长度
						String length = map.get("length");
						if (length != null && length.length() > 0) {
							table.getFields().get(i).setLength(Integer.parseInt(length));
						}
						// 字段精度
						String decimal = map.get("decimal");
						if (decimal != null && decimal.length() > 0) {
							table.getFields().get(i).setDecimal(Integer.parseInt(decimal));
						}
						// 字段约束
						String constraint = map.get("constraint");
						if (constraint != null && constraint.length() > 0) {
							table.getFields().get(i).setConstraint(constraint);
						}
						// 字段非空
						String required = map.get("required");
						if (required != null && required.length() > 0) {
							table.getFields().get(i).setRequired(required.equals("true") ? true : false);
						}
					}
				}
			}
		}
	}

}
