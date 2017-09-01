package javax.xianfeng.core.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.model.DataField;
import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.util.FieldUtil;

/**
 * DataSet工具类
 * @author Programmer.Wenlong
 * @since 2012-5-1 上午12:36:30
 */
public final class DataSetUtil {

	private DataSetUtil() {
		super();
	}

	/**
	 * 将List集合转换成DataSet对象
	 * @author Programmer.Wenlong
	 * @since 2012-5-1 上午12:39:02
	 * @param clazz
	 * @param list
	 * @return
	 * @throws NoSuchMethodException
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws IllegalArgumentException
	 * @throws SecurityException
	 * @throws SecurityException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws NoSuchMethodException
	 */
	public static DataSet format(Class<?> clazz, List<?> list) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		// 实体类属性对象数组
		Field[] fieldArray = FieldUtil.getFields(clazz);

		// 遍历实体集合构造List<DataField>对象
		List<DataField> fields = new ArrayList<DataField>();
		DataField _dataField = null;
		for (Field field : fieldArray) {
			// 排除static属性
			if (Modifier.isStatic(field.getModifiers())) {
				continue;
			}
			_dataField = new DataField();
			_dataField.setName(field.getName());
			_dataField.setType(field.getType().getName());
			fields.add(_dataField);
		}
		// 遍历实体集合构造List<DataRecord>对象
		List<DataRecord> records = new ArrayList<DataRecord>(fields.size());
		DataRecord _dataRecord = null;
		for (Object obj : list) {
			_dataRecord = new DataRecord(fieldArray.length);
			for (DataField field : fields) {
				_dataRecord.set(field.getName(), FieldUtil.getValueOfName(obj, field.getName()));
			}
			records.add(_dataRecord);
		}
		return new DataSet(fields, records);
	}

	/**
	 * 将DataSet对象转换成JSON字符串
	 * @author Programmer.Wenlong
	 * @since 2012-5-1 下午11:02:59
	 * @param dataSet
	 * @return
	 */
	public String format2Json(DataSet dataSet) {
		StringBuffer sb = new StringBuffer();
		// TODO 转换DataSet
		return sb.toString();
	}
}
