package javax.xianfeng.util;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;


/**
 * 属性反射辅助类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:41:48
 */
public class FieldUtil {

	private FieldUtil() {
		super();
	}

	/**
	 * 获取对象属性名、属性值的Map集合
	 * @param obj
	 * @return
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws NoSuchMethodException
	 * @throws IllegalArgumentException
	 * @throws SecurityException
	 * @throws BuildException
	 */
	public static Map<String, Object> getFields(Object obj) throws SecurityException, IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
		Map<String, Object> map = new HashMap<String, Object>();
		Class<?> clazz = obj.getClass();
		Field[] fields = clazz.getDeclaredFields();
		for (Field field : fields) {
			String fieldName = field.getName();
			Object value = getValueOfName(obj, fieldName);
			map.put(fieldName, value);
		}
		return map;
	}

	/**
	 * 根据对象的属性名获取属性值
	 * @param obj
	 * @param fieldName
	 * @return 属性值，如果为基本类型就返回空字符串
	 * @throws NoSuchMethodException
	 * @throws SecurityException
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws IllegalArgumentException
	 * @throws NoSuchMethodException
	 * @throws BuildException
	 */
	public static Object getValueOfName(Object obj, String fieldName) throws SecurityException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		// 获取类对象
		Class<?> clazz = obj.getClass();
		// 获取属性值
		// 注：field.get(obj)获取非private属性的值
		fieldName = StringUtil.toUpperOnlyFirst(fieldName);
		Method method;
		try {
			method = clazz.getMethod("get" + fieldName);
		} catch (NoSuchMethodException e) {
			try {
				method = clazz.getMethod("is" + fieldName);
			} catch (NoSuchMethodException e1) {
				throw e;
			}
		}
		return method.invoke(obj); // 注：基本类型的属性有默认值
	}

	/**
	 * 获取Field对象的annotation标注
	 * @param field
	 * @param annotation
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, String> getValueOfAnnotation(Field field, Class annotation) {
		if (field.isAnnotationPresent(annotation)) {
			Annotation anno = field.getAnnotation(annotation);
			return AnnotationUtil.getAnnotations(anno);
		}
		return null;
	}

	/**
	 * 获取Class对象的属性对象数组<br>
	 * 说明：<br>
	 * 1、包含public、protected、private修饰的属性，但是不包含继承的属性<br>
	 * 2、不包含static修饰的属性
	 * @param clazz 反射的对象
	 * @return
	 */
	public static Field[] getFields(Class<?> clazz) {
		Field[] fields = clazz.getDeclaredFields();
		return fields;
	}

	/**
	 * 获取Class对象的属性名称数组
	 * @param clazz 反射的对象
	 * @return
	 */
	public static String[] getFieldNames(Class<?> clazz) {
		Field[] fields = getFields(clazz);
		String[] names = new String[fields.length];
		for (int i = 0; i < fields.length; i++) {
			names[i] = fields[i].getName();
		}
		return names;
	}

	/**
	 * 获取Class对象指定名称的属性对象
	 * @param clazz 反射的对象
	 * @param fieldName 属性名称
	 * @return
	 * @throws NoSuchFieldException
	 * @throws SecurityException
	 */
	public static Field getField(Class<?> clazz, String fieldName) throws SecurityException, NoSuchFieldException {
		Field field = null;
		field = clazz.getDeclaredField(fieldName);
		return field;
	}

	/**
	 * 判断是不是Java数据类型
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 上午12:23:13
	 * @param field
	 * @return true-是，false-否
	 */
	public static boolean isJavaDataType(Field field) {
		// 字符类型
		if (String.class.equals(field.getType())) {
			return true;
		} else if (Character.class.equals(field.getType())) {
			return true;
		}

		// 数值类型
		else if (Byte.class.equals(field.getType())) {
			return true;
		} else if (Short.class.equals(field.getType())) {
			return true;
		} else if (Integer.class.equals(field.getType())) {
			return true;
		} else if (Long.class.equals(field.getType())) {
			return true;
		} else if (Float.class.equals(field.getType())) {
			return true;
		} else if (Double.class.equals(field.getType())) {
			return true;
		}

		// 布尔类型
		else if (Boolean.class.equals(field.getType())) {
			return true;
		}

		// 日期类型
		else if (java.util.Date.class.equals(field.getType())) {
			return true;
		} else if (java.sql.Date.class.equals(field.getType())) {
			return true;
		}
		return false;
	}

}
