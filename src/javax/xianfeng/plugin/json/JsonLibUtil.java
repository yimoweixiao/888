package javax.xianfeng.plugin.json;

import java.util.Collection;
import java.util.Map;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-3 下午11:22:45
 */
public class JsonLibUtil {

	/**
	 * 将对象转换为JSON字符串<br>
	 * 注：可以实现8种基本类型（自动转换为包装类）和字符类型的转换
	 * @author Programmer.Wenlong
	 * @since 2012-5-2 下午11:43:11
	 * @param key
	 * @param obj
	 * @return
	 * @throws JsonFormatException
	 */
	public static String toJson(String key, Object obj) throws JsonFormatException {
		if (JSONUtils.isNull(obj)) {
			// null类型
			return toObjJsonWithElement(key, obj);
		} else if (JSONUtils.isBoolean(obj) || JSONUtils.isNumber(obj)) {
			// 8种基本类型
			return toObjJsonWithElement(key, obj);
		} else if (JSONUtils.isString(obj)) {
			// 字符类型
			return toObjJsonWithElement(key, obj);
		} else if ((obj instanceof Comparable)) {
			// Comparable类型
			return toObjJsonWithElement(key, obj);
		} else if (obj instanceof Enum) {
			// 枚举类型
			throw new JsonFormatException();
		} else if (obj instanceof Collection<?>) {
			// 集合类型
			return toArrJson(obj);
		} else if (obj instanceof Map<?, ?>) {
			// Map类型
			return toArrayJsonWithElement(obj);
		} else {
			// 其它类型
			throw new JsonFormatException("不支持的JSON类型" + obj.getClass().getName());
		}

	}

	/**
	 * Object对象转换成JSON字符串
	 * @author Programmer.Wenlong
	 * @since 2012-5-3 下午11:35:45
	 * @param obj
	 * @return
	 */
	public static String toObjJson(Object obj) {
		return JSONObject.fromObject(obj).toString();
	}

	/**
	 * 数组、集合对象转换为JSON字符串
	 * @author Programmer.Wenlong
	 * @since 2012-5-4 上午12:05:28
	 * @param obj
	 * @return
	 */
	public static String toArrJson(Object obj) {
		return JSONArray.fromObject(obj).toString();
	}

	public static String toObjJsonWithElement(String key, Object value) {
		JSONObject jsonArray = new JSONObject().element(key, value);
		return jsonArray.toString();
	}

	/**
	 * 将对象转换为JSON字符串
	 * @author Programmer.Wenlong
	 * @since 2012-5-4 上午12:15:50
	 * @param value
	 * @return
	 * @throws JsonFormatException
	 */
	public static String toArrayJsonWithElement(Object value) throws JsonFormatException {
		JSONArray jsonArray = new JSONArray().element(value);
		return jsonArray.toString();
	}

}
