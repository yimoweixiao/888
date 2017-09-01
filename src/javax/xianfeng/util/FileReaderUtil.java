package javax.xianfeng.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.LineNumberReader;
import java.util.ArrayList;
import java.util.List;

/**
 * 文件读取工具类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:52:48
 */
public class FileReaderUtil {

	/**
	 * 挖掘path路径下的所有文件
	 * @param path 路径
	 * @return 文件集合
	 * @throws IOException
	 */
	public static List<File> dig(String path) throws IOException {
		File file = new File(path);
		if (!file.exists()) {
			throw new FileNotFoundException(path + " is not found!");
		}
		List<File> list = new ArrayList<File>();
		if (file.isDirectory()) {
			// 目录
			File[] files = file.listFiles();
			for (File f : files) {
				if (f.isDirectory()) {
					// 递归遍历子目录
					List<File> childList = dig(f.getAbsolutePath());
					for (File temp : childList) {
						list.add(temp);
					}
				} else if (f.isFile()) {
					list.add(f);
				}
			}
		} else if (file.isFile()) {
			// 文件
			list.add(file);
		}
		return list;
	}

	/**
	 * 按行读取文件的内容
	 * @param file 文件
	 * @return
	 * @throws IOException
	 */
	public static List<String> readByLine(File file) throws IOException {
		List<String> lines = new ArrayList<String>();
		LineNumberReader reader = null;
		String line = null;
		try {
			reader = new LineNumberReader(new FileReader(file));
			// 逐行读取文件中的内容
			while ((line = reader.readLine()) != null) {
				lines.add(line);
			}
			return lines;
		} catch (IOException e) {
			throw e;
		} finally {
			reader.close();
		}
	}
}
