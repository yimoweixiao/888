package javax.xianfeng.plugin.metadata;

import java.io.FileNotFoundException;
import java.util.List;
import java.util.Map;

import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.ApplicationRuntime;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 元数据工具类<br>
 * 加载所有*.metadata文件中的元数据，顺序是元数据在*.metadata文件中排列的先后顺序。<br>
 * 对于元数据的加载规则说明如下：<br>
 * 1、*.metadata文件加载范围只在当前应用运行时环境WEB-INF/metadata的根目录<br>
 * 2、标识码相同的元数据不能共存，后读取的会覆盖先读取的元数据<br>
 * @author Programmer.Wenlong
 * @since 2011-12-29 下午11:24:21
 */
public final class MetaDataFactory {

	private static final Log logger = LogFactory.getLog(MetaDataFactory.class);

	private static Map<String, MetaData> metaDataMap = null;

	private static boolean isLoad = false;

	private static void load() {
		logger.info("Loading metadata......");

		// 1.查找*.metadata文件
		String path = null;
		try {
			path = ApplicationRuntime.classPath(ApplicationConfig.getConfig("Xianfeng.MetaData.BasePath"));
		} catch (FileNotFoundException e) {
			logger.error(e);
			return;
		}
		logger.debug(path);

		try {
			metaDataMap = MetaDataReader.read(path);
		} catch (Exception e) {
			logger.error("metadata文件读取异常", e.getCause());
		}
		isLoad = true;
	}

	public static void reload() {
		metaDataMap = null;
		isLoad = false;
		load();
	}

	/**
	 * 获取元数据
	 * @param meta 标识码
	 * @return
	 */
	public static MetaData getMetaData(String meta) {
		if (isLoad == false) {
			load();
		}
		return metaDataMap.get(meta);
	}

	/**
	 * 获取元数据项的值
	 * @param meta 标识码
	 * @param key 键
	 * @return
	 */
	public static String getMetaData(String meta, String key) {
		MetaData metaData = getMetaData(meta);
		if (metaData != null) {
			List<MetaDataItem> items = metaData.getItems();
			for (MetaDataItem item : items) {
				if (key.equals(item.getKey())) {
					return item.getValue();
				}
			}
		}
		return null;
	}

}
