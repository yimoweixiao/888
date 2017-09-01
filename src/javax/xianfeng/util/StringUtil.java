package javax.xianfeng.util;

/**
 * String字符串的Util类
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午09:39:22
 */
public class StringUtil {

	/**
	 * 获取首字母大写的字符串<br>
	 * 例如：fieldName转换为FieldName
	 * @param str
	 * @return
	 */
	public static String toUpperOnlyFirst(String str) {
		if (str != null && str.length() > 0) {
			if (str.length() == 1) {
				str = str.toUpperCase();
			} else {
				str = str.substring(0, 1).toUpperCase() + str.substring(1);
			}
			return str;
		}
		return null;
	}

	/**
	 * 获取特殊符号连接的小写字符串<br>
	 * 例如：userName转换为user_name
	 * @param str
	 * @param symbol 连接符号[-_]
	 * @return
	 */
	public static String toLowerWith(String str, char symbol) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0, length = str.length(); i < length; i++) {
			char ch = str.charAt(i);
			if (ch >= 65 && ch <= 90) {
				// 大写字符
				sb.append(symbol).append((char) (ch + 32));
			} else {
				// 其他字符
				sb.append(ch);
			}
		}
		return sb.toString();
	}

	/**
	 * 截断超长的字符串<br>
	 * 例如：Hello World截取5个字符为Hello
	 * @author Programmer.Wenlong
	 * @since 2012-7-26 下午10:41:01
	 * @param str 目标字符串
	 * @param maxLength 字符串最大长度
	 * @return
	 */
	public static String cutOff(String str, int maxLength) {
		if (str != null && str.length() > maxLength) {
			return str.substring(0, maxLength);
		} else {
			return str;
		}
	}

	/**
	 * 截取超长的字符串，末尾追加省略号标记<br>
	 * @author Programmer.Wenlong
	 * @since 2012-7-26 下午10:46:19
	 * @param str
	 * @param maxLength
	 * @return
	 */
	public static String cutOffWithMark(String str, int maxLength) {
		if (str != null && str.length() > maxLength) {
			return cutOff(str, maxLength) + "…";
		} else {
			return str;
		}

	}

	/**
	 * 判断字符串为null或者空字符串
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str) {
		return str == null || "".equals(str);
	}

	/**
	 * 判断字符串是不是字母
	 * @param str
	 * @return
	 */
	public static boolean isLetter(String str) {
		if (isEmpty(str)) {
			return false;
		}
		return str.matches(RegxUtil.LETTER);
	}

	/**
	 * 判断字符串是不是数字
	 * @param str
	 * @return
	 */
	public static boolean isNumber(String str) {
		if (isEmpty(str)) {
			return false;
		}
		return str.matches(RegxUtil.NUMBER);
	}

}
