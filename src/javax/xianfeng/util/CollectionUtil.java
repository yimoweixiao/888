package javax.xianfeng.util;

import java.util.Collection;
import java.util.Map;

/**
 * 集合工具类
 * @author Programmer.Wenlong
 * @since 2011-12-28 下午11:08:47
 */
public final class CollectionUtil {

	private CollectionUtil() {
		super();
	}

	/**
	 * 判断是否为空集合
	 * @param collection
	 * @return
	 */
	public static boolean isEmpty(Collection<?> collection) {
		return collection != null && !collection.isEmpty();
	}

	/**
	 * 判断是否为空Map
	 * @param collection
	 * @return
	 */
	public static boolean isEmpty(Map<?, ?> map) {
		return map == null || map.isEmpty();
	}

}
