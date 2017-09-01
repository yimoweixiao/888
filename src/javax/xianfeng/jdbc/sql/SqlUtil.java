package javax.xianfeng.jdbc.sql;

/**
 * SQL工具类
 * @author Programmer.Wenlong
 * @since 2011-11-19 下午10:54:09
 */
public class SqlUtil {

	/**
	 * 将驼峰字符串转换为下划线连接的小写字符串<br>
	 * 例如：userName转换为user_name
	 * @param str
	 * @return
	 */
	public static String toStandardColumnName(String filedName) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < filedName.length(); i++) {
			char ch = filedName.charAt(i);
			if (ch >= 65 && ch <= 90) {
				// 大写字符
				sb.append("_").append((char) (ch + 32));
			} else {
				// 其他字符
				sb.append(ch);
			}
		}
		return sb.toString();
	}

}
