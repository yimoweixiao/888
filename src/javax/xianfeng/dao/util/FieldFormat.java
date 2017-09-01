package javax.xianfeng.dao.util;

/**
 * Field的工具类
 * @author: Wenlong
 * @date: 2011-8-30 上午11:55:40
 */
public final class FieldFormat {

	/**
	 * 将数据库的字段转换为标准的java属性名<br>
	 * 比如：USER_NAME转换成userName
	 * @param column
	 * @return
	 */
	public static String toStandardFieldName(String column) {
		StringBuffer sb = new StringBuffer();
		String[] arr = column.toLowerCase().split("_");
		sb.append(arr[0]);
		for (int i = 1; i < arr.length; i++) {
			sb.append(Character.toUpperCase(arr[i].charAt(0))).append(arr[i].substring(1));
		}
		return sb.toString();
	}
}
