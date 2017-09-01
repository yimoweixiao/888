package javax.xianfeng.core.util;

import java.util.Collection;
import java.util.Map;

import javax.xianfeng.util.CollectionUtil;

/**
 * 断言工具类<br>
 * 说明：如果断言失败，就抛出异常
 * @author Programmer.Wenlong
 * @since 2011-12-28 下午10:54:01
 */
public final class Assert {

	/**
	 * 断言为true
	 * @param flag
	 * @param message
	 */
	public static void isTrue(boolean flag, String message) {
		if (!flag) {
			throw new IllegalArgumentException(message);
		}
	}

	/**
	 * 断言为true
	 * @param flag
	 */
	public static void isTrue(boolean flag) {
		isTrue(flag, "[Assert failed] - the argument must be true");
	}

	/**
	 * 断言为null
	 * @param obj
	 * @param message
	 */
	public static void isNull(Object obj, String message) {
		if (obj != null) {
			throw new IllegalArgumentException(message);
		}
	}

	/**
	 * 断言为null
	 * @param obj
	 */
	public static void isNull(Object obj) {
		isNull(obj, "[Assert failed] - the Object must be null");
	}

	/**
	 * 断言不是null
	 * @param obj
	 * @param message
	 */
	public static void isNotNull(Object obj, String message) {
		if (obj == null) {
			throw new IllegalArgumentException(message);
		}
	}

	/**
	 * 断言不是null
	 * @param obj
	 */
	public static void isNotNull(Object obj) {
		isNotNull(obj, "[Assert failed] - the Object must not be null");
	}

	/**
	 * 断言空Collection
	 * @param collection
	 * @param message
	 */
	public static void isEmpty(Collection<?> collection, String message) {
		if (CollectionUtil.isEmpty(collection)) {
			throw new IllegalArgumentException(message);
		}
	}

	/**
	 * 断言空Collection
	 * @param collection
	 */
	public static void isEmpty(Collection<?> collection) {
		isEmpty(collection, "[Assert failed] - the Collection must contains at least 1 element");
	}

	/**
	 * 断言空Map
	 * @param collection
	 * @param message
	 */
	public static void isEmpty(Map<?, ?> map, String message) {
		if (CollectionUtil.isEmpty(map)) {
			throw new IllegalArgumentException(message);
		}
	}

	/**
	 * 断言空Map
	 * @param collection
	 */
	public static void isEmpty(Map<?, ?> map) {
		isEmpty(map, "[Assert failed] - the Map must contains at least 1 element");
	}

	/**
	 * 断言对象类型
	 * @param type
	 * @param obj
	 * @param message
	 */
	public static void isInstanceOf(Class<?> type, Object obj) {
		String className = (obj != null ? obj.getClass().getName() : "Undefined");
		if (!type.isInstance(obj)) {
			throw new IllegalArgumentException("[Assert failed] - Object of " + className + " must be an instance of " + type);
		}
	}

}
