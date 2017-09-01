package javax.xianfeng.core.reflect;

import java.lang.reflect.Field;

import javax.xianfeng.util.FieldUtil;
import javax.xianfeng.util.StringUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 对象反射工具类<br>
 * @author Programmer.Wenlong
 * @since 2011-12-1 下午08:42:24
 */
public final class Rebuilder {

	private static final Log logger = LogFactory.getLog(Rebuilder.class);

	private Rebuilder() {
		super();
	}

	/**
	 * 对象字符串化
	 * @param obj 对象
	 * @param clazz 类型
	 * @return 对象的toString()字符串
	 */
	public static String toString(Object obj) {
		Class<?> clazz = obj.getClass();
		Field[] fields = clazz.getDeclaredFields(); // 属性数组
		StringBuffer sb = new StringBuffer(20);
		for (Field field : fields) {
			// 属性名
			String name = field.getName();
			if ("serialVersionUID".equals(name)) {
				continue;
			}
			// 属性值
			Object value = null;
			try {
				value = FieldUtil.getValueOfName(obj, name);
			} catch (Exception e) {
				logger.error("error with field " + name, e);
			}
			sb.append(StringUtil.toUpperOnlyFirst(name)).append(": ").append(value).append("\n");
		}
		// sb.append("\n");
		return sb.toString();
	}

}
