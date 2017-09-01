package javax.xianfeng.spring.ioc;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.ApplicationRuntime;
import javax.xianfeng.spring.Spring;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.FileSystemXmlApplicationContext;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-13 下午06:30:33
 */
public class DevelopSpingIocImpl extends AbstractSpringIoc {

	private static final Log logger = LogFactory.getLog(DevelopSpingIocImpl.class);

	private static AbstractSpringIoc instance;

	private DevelopSpingIocImpl() {
		super();
	}

	/**
	 * 单例方法
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午06:32:29
	 * @return
	 */
	public static AbstractSpringIoc newInstance() {
		if (instance == null) {
			instance = new DevelopSpingIocImpl();
		}
		return instance;
	}

	@Override
	public void init() {
		String basePath = ApplicationConfig.getConfig("Xianfeng.Spring.CfgFilePath");
		if (basePath == null) {
			basePath = "spring";
		}

		// 加载Spring配置文件
		String path = null; // 当前应用下配置文件所在路径
		try {
			path = ApplicationRuntime.classPath(basePath);
		} catch (FileNotFoundException e) {
			logger.error(e);
		}
		logger.debug("Spring: " + path);

		List<String> files = new ArrayList<String>(); // Spring配置文件的集合

		File root = new File(path);
		if (root != null) {
			for (File file : root.listFiles()) {
				String fileName = file.getName().substring(file.getName().lastIndexOf(File.separator) + 1);
				if (fileName.matches(Spring.SPRING_REGX)) {
					String filePath = "WebRoot" + File.separator + "WEB-INF" + File.separator + basePath + File.separator + fileName;
					
					files.add(filePath);
				}
			}
		}
		String[] locations = new String[files.size()];
		for (int i = 0, size = files.size(); i < size; i++) {
			locations[i] = files.get(i);
		}

		logger.debug(Arrays.deepToString(locations));

		applicationContext = new FileSystemXmlApplicationContext(locations);

	}

}
