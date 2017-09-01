package javax.xianfeng;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/**
 * 系统运行时环境信息提供类
 * @author Programmer.Wenlong
 * @since 2011-12-31 下午05:04:17
 */
public final class ApplicationRuntime {

	private static final String UTF8 = "UTF-8";

	private ApplicationRuntime() {
		super();
	}

	/**
	 * 获取应用程序的classpath路径
	 * @return
	 */
	public static String classPath() {
		String path = ApplicationRuntime.class.getClassLoader().getResource("").getPath();
		try {
			path = URLDecoder.decode(path, UTF8);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return path;
	}

	/**
	 * 获取相对于classpath的绝对路径<br>
	 * @author Programmer.Wenlong
	 * @since 2012-4-2 下午12:59:57
	 * @param path 资源文件（夹）的名称
	 * @return
	 * @throws FileNotFoundException
	 */
	public static String classPath(String path) throws FileNotFoundException {
		File file = new File(classPath());
		for (File child : file.getParentFile().listFiles()) {
			if (child.getName().equals(path)) {
				return child.getAbsolutePath();
			}
		}
		throw new FileNotFoundException(path + " is not found");
	}

}
