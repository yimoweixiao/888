package javax.xianfeng.jdbc.sql;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * SQL转换器
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午03:42:55
 */
public class SqlFormat {

	private static final Log logger = LogFactory.getLog(SqlFormat.class);

	/**
	 * @param clazz
	 * @return
	 */
	public static String format(String sql) {
		logger.debug("SQL:" + sql);
		StringBuffer sb = new StringBuffer();
		for (int i = 0, length = sql.length(); i < length; i++) {
			char ch = sql.charAt(i);
			switch (ch) {
			// 1.分隔逗号
			case ',':
				sb.append(",\n");
				break;
			// 2.分隔括号
			case '(':
				sb.append("(\n");
				break;
			case ')':
				sb.append("\n)");
				break;
			// 3.空格处理
			case ' ':
				// System.out.println("i="+i);
				// values前换行
				if ((i + 7) < length && "values".equalsIgnoreCase(sql.substring(i + 1, i + 7))) {
					sb.append("\n");
					break;
				}
				// 多余的空格
				if ((i > 0 && sql.charAt(i - 1) == ' ') || (i < length - 1 && sql.charAt(i + 1) == ' ')) {
					break;
				}
				// 其他字符
			default:
				sb.append(ch);
				break;
			}
		}
		return sb.toString();
	}

}
