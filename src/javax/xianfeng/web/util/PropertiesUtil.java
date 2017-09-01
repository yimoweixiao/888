package javax.xianfeng.web.util;

import java.util.Locale;
import java.util.Properties;

import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.web.PropertiesFactory;
import javax.xianfeng.web.WebApplication;

/**
 * 系统属性工具类<br>
 * 说明：<br>
 * （1）系统属性文件都存放在WEB-INF/properties文件夹下<br>
 * （2）文件搜索只支持语言环境（如zh_CN）一级目录查找，不支持级联目录查找
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午11:21:45
 */
public final class PropertiesUtil {

	private PropertiesUtil() {
		super();
	}

	/**
	 * 获取Property属性值
	 * @author Programmer.Wenlong
	 * @since 2012-5-12 上午09:44:53
	 * @param name
	 * @return
	 */
	public static String getProperty(String name) {
		Locale locale = null;
		try {
			locale = WebApplication.currentInstance().getRequest().getLocale();
		} catch (Exception e) {
			// logger.warn(e.getCause(), e);
			locale = new Locale("zh", "CN"); // zh_CN（默认值）
		}
		return getProperty(locale, name);
	}

	/**
	 * 获取Property属性值
	 * @author Programmer.Wenlong
	 * @since 2012-5-12 上午10:15:43
	 * @param locale
	 * @param name
	 * @return
	 */
	public static String getProperty(Locale locale, String name) {
		String key = locale.getLanguage() + "_" + locale.getCountry(); // zh_CN
		Properties props = PropertiesFactory.getFactory().get(key);
		if (props == null) {
			return null;
		}
		
		String value = props.getProperty(name);

		// 查找默认语言的属性值
		if (value == null) {
			String defaultLocale = ApplicationConfig.getConfig("Xianfeng.Default.Locale");
			props = PropertiesFactory.getFactory().get(defaultLocale);
			if (props == null) {
				return null;
			}
			value = props.getProperty(name);
		}
		return value;
	}

}
