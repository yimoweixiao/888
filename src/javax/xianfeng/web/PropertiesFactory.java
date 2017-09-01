package javax.xianfeng.web;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.ApplicationRuntime;
import javax.xianfeng.util.PropertiesFileUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 属性工厂类<br>
 * 说明：<br>
 * （1）属性工厂不支持目录递归，只支持单目录<br>
 * （2）属性工厂保存属性值是以不同语言区别的，同一语言下的同名属性值会被覆盖，强调全局属性的复用，减少冗余数据<br>
 * @author Programmer.Wenlong
 * @since 2012-4-4 上午10:46:58
 */
public final class PropertiesFactory {
	private static final Log logger = LogFactory.getLog(PropertiesFactory.class);

	private static Map<String, Properties> factory;

	private static boolean isLoad = false;

	private static void load() {
		logger.info("Loading properties...");

		String path = null;
		try {
			path = ApplicationRuntime.classPath(ApplicationConfig.getConfig("Xianfeng.Properties.BasePath"));
		} catch (FileNotFoundException e) {
			logger.error(e.getCause());
		}

		logger.debug(path);

		File[] folders = new File(path).listFiles(); // 分语言目录

		if (folders != null && folders.length > 0) {
			factory = new HashMap<String, Properties>(folders.length);

			// 读取语言目录下的属性文件
			Properties properties = null;
			Properties _properties = null;

			// 分语言目录
			for (File folder : folders) {
				// 过滤不在语言目录下的文件
				if (folder.isFile()) {
					continue;
				}

				// 过滤隐藏文件夹
				if (folder.isHidden()) {
					continue;
				}

				properties = new Properties();

				// 读取语言目录下的*.properties文件
				for (File file : folder.listFiles()) {
					logger.debug("load " + folder.getName() + File.separator + file.getName());

					// 过滤隐藏文件
					if (file.isHidden()) {
						continue;
					}

					// 读取*.properties文件
					try {
						_properties = PropertiesFileUtil.getProperties(file.getAbsolutePath(), false);

						// 归纳整理属性
						for (Object key : _properties.keySet()) {
							String value = (String) _properties.get(key);
							properties.put(key, new String(value.getBytes("ISO8859-1"), "UTF-8"));
						}
					} catch (IOException e) {
						logger.debug(e.getCause());
					}
				}

				factory.put(folder.getName(), properties);
			}
		} else {
			logger.warn("there is not properties to load");
		}
		isLoad = true;
	}

	public static void reload() {
		factory = null;
		isLoad = false;
		load();
	}

	public static Map<String, Properties> getFactory() {
		if (isLoad == false) {
			load();
		}
		return factory;
	}

	public static void setFactory(Map<String, Properties> factory) {
		PropertiesFactory.factory = factory;
	}

}
