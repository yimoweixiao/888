package javax.xianfeng.mhtml.util;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-12 下午11:39:58
 */
public final class DataTypeUtil {

	/**
	 * 获取指定类型值<br>
	 * 说明：<br>
	 * （1）只支持基本Java类型<br>
	 * （2）类型全称和简称同效，比如java.lang.String和String，并且忽略大小写<br>
	 * @author Programmer.Wenlong
	 * @since 2012-5-12 下午11:47:57
	 * @param type
	 * @param value
	 * @return
	 */
	public static Object getValueByType(String type, String value) {
		if (String.class.getName().equalsIgnoreCase(type) || String.class.getSimpleName().equalsIgnoreCase(type)) {
			// String类型
			return value;
		} else if (Integer.class.getName().equalsIgnoreCase(type) || Integer.class.getSimpleName().equalsIgnoreCase(type)) {
			// Integer类型
			return Integer.valueOf(value);
		} else if (Double.class.getName().equalsIgnoreCase(type) || Double.class.getSimpleName().equalsIgnoreCase(type)) {
			// Double类型
			return Double.valueOf(value);
		} else if (Boolean.class.getName().equalsIgnoreCase(type) || Boolean.class.getSimpleName().equalsIgnoreCase(type)) {
			// Boolean类型
			return Boolean.valueOf(value);
		} else {
			// 默认返回字符串类型的值
			return value;
		}
	}

	private DataTypeUtil() {
		super();
	}

}
