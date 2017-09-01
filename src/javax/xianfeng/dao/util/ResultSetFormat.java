package javax.xianfeng.dao.util;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xianfeng.core.model.DataField;
import javax.xianfeng.core.reflect.ObjectBuilder;
import javax.xianfeng.jdbc.sql.SqlTypeFormat;
import javax.xianfeng.util.StringUtil;

/**
 * ResultSet转换类
 * @author Programmer.Wenlong
 * @since 2011-11-22 上午12:50:36
 */
public class ResultSetFormat<T> {

	private Class<T> entity; // 转换的Class类型对象

	public ResultSetFormat(Class<T> entity) {
		super();
		this.entity = entity;
	}

	@SuppressWarnings("unchecked")
	public List<T> formatToList(ResultSet result) throws SQLException {
		if (result == null) {
			return null;
		}
		List<T> list = new ArrayList<T>(result.getRow());
		List<DataField> fields = getFields(result);
		while (result.next()) {
			Map<String, Object> map = new HashMap<String, Object>();
			for (DataField field : fields) {
				Object value = result.getObject(field.getName());
				// 将字段名转换为属性名，比如USER_NAME转换成userName
				String name = formatColumnToField(field.getName());
				map.put(name, value);
			}
			// 构造T类型的对象
			try {
				T t = (T) ObjectBuilder.build(this.entity, map);
				list.add(t);
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}

		}
		return list;
	}

	/**
	 * 获取ResultSet结果集对应的Field列表集合
	 * @param result
	 * @return
	 * @throws SQLException
	 */
	private List<DataField> getFields(ResultSet result) throws SQLException {
		List<DataField> fields = new ArrayList<DataField>();
		ResultSetMetaData metaData = result.getMetaData();
		int count = metaData.getColumnCount(); // 字段个数
		for (int i = 1; i <= count; i++) {
			String name = metaData.getColumnLabel(i).toLowerCase(); // 名称
			int type = metaData.getColumnType(i); // 类型
			// int length = metaData.getPrecision(i); // 长度
			DataField field = new DataField(name, SqlTypeFormat.format(type));
			// field.setLength(length);
			fields.add(field);
		}
		return fields;
	}

	/**
	 * 将字段名转换为属性名 例如：USER_NAME转换为userName
	 * @param column
	 * @return
	 */
	private static String formatColumnToField(String column) {
		StringBuffer field = new StringBuffer();
		String[] arr = column.split("_");
		for (int i = 0; i < arr.length; i++) {
			if (i == 0) {
				field.append(arr[i].toLowerCase());
			} else {
				field.append(StringUtil.toUpperOnlyFirst(arr[i].toLowerCase()));
			}
		}
		return field.toString();

	}
}
