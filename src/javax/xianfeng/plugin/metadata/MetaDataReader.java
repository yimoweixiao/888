package javax.xianfeng.plugin.metadata;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.core.model.BetaUniqueList;
import javax.xianfeng.util.PropertiesFileUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * metadata文件读取工具类
 * @author Programmer.Wenlong
 * @since 2012-5-6 下午10:43:30
 */
public final class MetaDataReader {

	private final static Log logger = LogFactory.getLog(MetaDataReader.class);

	private static final String METADATA_FILE_SUFFIX = ".metadata"; // 元数据文件后缀

	private MetaDataReader() {
		super();
	}

	/**
	 * 读取path下的metadata文件
	 * @author Programmer.Wenlong
	 * @since 2012-5-6 下午10:51:29
	 * @param path
	 * @return
	 */
	public static Map<String, MetaData> read(String path) {
		Map<String, MetaData> metaData = new HashMap<String, MetaData>();

		File root = new File(path);

		// 读取*.metadata文件并封装其中的数据
		if (root != null) {
			for (File file : root.listFiles()) {
				String fileName = file.getName();
				String suffix = fileName.substring(fileName.lastIndexOf("."));
				if (METADATA_FILE_SUFFIX.equals(suffix)) {
					// 加载*.metadata文件中的元数据
					try {
						logger.info(file.getAbsolutePath());
						Properties properties = PropertiesFileUtil.getProperties(file.getAbsolutePath(), false);
						Enumeration<?> keys = properties.propertyNames();
						while (keys.hasMoreElements()) {
							String meta = (String) keys.nextElement(); // 标识码
							// 数据段key1:value1[,key2:value2...]
							String coding = ApplicationConfig.getConfig("Xianfeng.MetaData.Coding");
							String data = new String(properties.getProperty(meta).getBytes("ISO8859-1"), coding);
							if (data != null && data.length() > 0) {
								// 解析键值字符串
								String[] arr = data.split(",");
								List<MetaDataItem> items = new BetaUniqueList<MetaDataItem>(arr.length);
								for (String str : arr) {
									// logger.debug(str);
									// 构造元数据
									int index1 = str.indexOf(":");
									int index2 = str.indexOf("@");
									String key = str.substring(0, index1);
									String value = null;
									if (index2 > 0) {
										value = str.substring(index1 + 1, index2);
									} else {
										value = str.substring(index1 + 1);
									}

									MetaDataItem metaDataItem = new MetaDataItem(key, value);
									if (index2 > 0) {
										String state = str.substring(index2 + 1);
										metaDataItem.setState(Boolean.valueOf(state));
									}
									items.add(metaDataItem);
								}
								metaData.put(meta, new MetaData(meta, items));
							}
						}
					} catch (IOException e) {
						logger.error(e.getMessage(), e.getCause());
					}
				}
			}
		}
		return metaData;
	}

}
