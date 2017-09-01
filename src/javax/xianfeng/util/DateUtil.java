package javax.xianfeng.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xianfeng.ApplicationConfig;

/**
 * Date类型日期的Util类
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午08:30:44
 */
public class DateUtil {

	public static final String DATE = "yyyy-MM-dd"; // 日期

	public static final String DATEWEEK = "yyyy-MM-dd EEEE"; // 日期 星期

	public static final String DATETIME = "yyyy-MM-dd HH:mm:ss"; // 日期 时:分:秒，一天24小时制

	public static final String DATETIMESECOND = "yyyy-MM-dd HH:mm:ss SSS"; // 日期  时:分:秒 毫秒

	private DateUtil() {
		super();
	}

	/**
	 * 构造日期对象 格式：2011-05-12
	 * @param str
	 * @return
	 */
	@SuppressWarnings("deprecation")
	public static Date build(String str) {
		int year = Integer.parseInt(str.substring(0, 4));
		int month = Integer.parseInt(str.substring(5, 7));
		int day = Integer.parseInt(str.substring(8, 10));
		Date date = new Date(year - 1900, month - 1, day);
		return date;
	}

	/**
	 * 获取字符串格式的日期
	 * @param date 日期
	 * @return 字符串格式的日期
	 */
	public static String format(Date date) {
		String str = ApplicationConfig.getConfig("Xianfeng.Default.DateTime");
		if (str != null) {
			return format(date, str);
		} else {
			return format(date, null);
		}
	}

	/**
	 * 取指定格式的字符串日期
	 * @param date 日期
	 * @param rule 日期格式
	 * @return 字符串格式的日期
	 */
	public static String format(Date date, String rule) {
		if (date == null) {
			return null;
		}

		if (rule == null) {
			rule = DATETIME;
		}

		return new SimpleDateFormat(rule).format(date);
	}

	/**
	 * 判断日期的先后
	 * @param date1 日期
	 * @param date2 目标日期
	 * @return
	 */
	public boolean isLate(Date date1, Date date2) {
		if (date1.getTime() > date2.getTime()) {
			return true;
		}
		return false;
	}

	/**
	 * 求日期之间间隔的年限
	 * @param date1 日期
	 * @param date2 目标日期
	 * @return 间隔的年限
	 */
	@SuppressWarnings("deprecation")
	public int intervalYear(Date date1, Date date2) {
		return date2.getYear() - date1.getYear();
	}

	/**
	 * 求日期之间间隔的月份
	 * @param date1 日期
	 * @param date2 目标日期
	 * @return 间隔的月份
	 */
	@SuppressWarnings("deprecation")
	public int intervalMonth(Date date1, Date date2) {
		int intervalYear = intervalYear(date1, date2);
		int intervalMonth = intervalYear * 12 + (date2.getMonth() - date1.getMonth());
		return intervalMonth;
	}

}
