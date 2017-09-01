package javax.xianfeng;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.xianfeng.util.PropertiesFileUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 应用程序配置信息类<br>
 * 可以自动加载WEB-INF/class/xianfeng*.properties文件
 * @author Programmer.Wenlong
 * @since 2012-4-18 上午12:10:25
 */
public final class ApplicationConfig {

	private static final Log logger = LogFactory.getLog(ApplicationConfig.class);

	// 系统常量定义
	public static String APP_STATE_DEBUG = "debug";

	public static String APP_STATE_RELEASE = "release";

	public static String DEFAULT_ENCODING = "UTF-8"; // 数据编码
	
	public static String LICENSE_MANAGER_OPEN = "open"; //系统授权启用

	public static String USER = "LoginUser"; // 用户标识常量
	
	public static String LOCK_SCREEN = "LockScreen"; // 锁屏标识常量
	
	public static String MENU_STYLE = "MenuStyle"; // 菜单风格常量

	private static Map<String, String> configurations;

	/**
	 * 静态初始化语句块
	 */
	private static void load() {
		// 1、读取xianfeng*.properties文件
		Properties properties = null;
		try {
			File[] folder = new File(ApplicationRuntime.classPath()).listFiles();

			String fileName = null;

			configurations = new HashMap<String, String>();

			// 遍历path目录
			for (File file : folder) {
				// 过滤文件夹、过滤隐藏文件
				if (!file.isFile() || file.isHidden()) {
					continue;
				}

				// 读取*.properties文件中的内容
				fileName = file.getName().toLowerCase();
				if (fileName.startsWith("xianfeng") && fileName.endsWith(".properties")) {
					logger.debug("load " + File.separator + file.getName());
					properties = PropertiesFileUtil.getProperties(file.getAbsolutePath(), false);
					for (Object key : properties.keySet()) {
						String _key = (String) key;
						configurations.put(_key, properties.getProperty(_key));
					}
				}
			}
		} catch (IOException e) {
			logger.error(e.getMessage(), e.getCause());
		}

	}

	/**
	 * 重新加载配置文件
	 * @author Programmer.Wenlong
	 * @since 2013-8-7 下午07:47:02
	 */
	public static void reload() {
		// xianfeng*.properties文件
		configurations = null;
		load();
	}

	/**
	 * 获取配置信息
	 * @author Programmer.Wenlong
	 * @since 2012-5-29 下午04:07:26
	 * @param key
	 * @return
	 */
	public static String getConfig(String key) {
		if (configurations == null) {
			load();
		}
		return configurations.get(key);
	}

}
