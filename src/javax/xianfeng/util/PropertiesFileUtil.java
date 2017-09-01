package javax.xianfeng.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/**
 * Properties文件Util类
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午08:30:38
 */
public class PropertiesFileUtil {

	private PropertiesFileUtil() {
		super();
	}

	/**
	 * 根据key获取value
	 * @param path 文件路径
	 * @param key 键
	 * @return 值
	 * @throws IOException
	 */
	public static String getValue(String path, String key) throws IOException {
		Properties properties = getProperties(path, true);
		String value = properties.getProperty(key);
		return value;
	}

	/**
	 * 根据key数组获取value集合，批量读取value
	 * @param path 文件路径
	 * @param keys 键集合
	 * @return 值集合
	 * @throws IOException
	 */
	public static Map<String, String> getValues(String path, List<String> keys) throws IOException {
		Map<String, String> values = new HashMap<String, String>();
		Properties properties = getProperties(path, true);
		for (int i = 0; i < keys.size(); i++) {
			String value = properties.getProperty(keys.get(i));
			values.put(keys.get(i), value);
		}
		return values;
	}

	/**
	 * 获取*.properties文件对应的Properties对象
	 * @author Programmer.Wenlong
	 * @since 2012-5-12 上午09:44:18
	 * @param path
	 * @return
	 * @throws IOException
	 */
	public static Properties getProperties(String path) throws IOException {
		return getProperties(path, true);
	}

	/**
	 * 获取*.properties文件对应的Properties对象
	 * @param path
	 * @param isRelative
	 * @return
	 * @throws IOException
	 */
	public static Properties getProperties(String path, boolean isRelative) throws IOException {
		ClassLoader loader = PropertiesFileUtil.class.getClassLoader();
		InputStream input = null;
		Properties properties = null;
		try {
			properties = new Properties();
			if (isRelative) {
				input = loader.getResourceAsStream(path);
			} else {
				input = new FileInputStream(path);
			}
			properties.load(input);
		} catch (IOException e) {
			throw e;
		} finally {
			if (input != null) {
				input.close();
				input = null;
			}
		}
		return properties;
	}
}
