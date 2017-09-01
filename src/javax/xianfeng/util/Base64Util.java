package javax.xianfeng.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * BASE64编码解码工具包
 * @author Programmer.Wenlong
 * @since 2015-1-16 下午09:05:58
 */
@SuppressWarnings("restriction")
public class Base64Util {

	/**
	 * 文件读取缓冲区大小
	 */
	private static final int CACHE_SIZE = 1024;

	/**
	 * 二进制编码为BASE64字符串
	 * @param bytes
	 * @return
	 * @throws Exception
	 */
	public static String encode(byte[] bytes) {
		// return new String(Base64.encode(bytes));
		return new BASE64Encoder().encode(bytes);
	}
	
	/**
	 * BASE64字符串解码为二进制
	 * @param base64
	 * @return
	 * @throws IOException 
	 * @throws Exception
	 */
	public static byte[] decode(String base64) throws IOException {
		// return Base64.decode(base64.getBytes());
		return new BASE64Decoder().decodeBuffer(base64);
	}

	/**
	 * 将文件编码为BASE64字符串 
	 * 大文件慎用，可能会导致内存溢出
	 * @param filePath 文件绝对路径
	 * @return
	 * @throws FileNotFoundException 
	 * @throws Exception
	 */
	public static String encodeFile(String filePath) throws FileNotFoundException {
		byte[] bytes = fileToByte(filePath);
		return encode(bytes);
	}

	/**
	 * BASE64字符串转回文件
	 * @param filePath 文件绝对路径
	 * @param base64 编码字符串
	 * @throws Exception
	 */
	public static void decodeToFile(String filePath, String base64) throws Exception {
		byte[] bytes = decode(base64);
		byteArrayToFile(bytes, filePath);
	}

	/**
	 * 文件转换为二进制数组
	 * @param filePath 文件路径
	 * @return
	 * @throws FileNotFoundException 
	 * @throws Exception
	 */
	public static byte[] fileToByte(String filePath) throws FileNotFoundException {
		byte[] data = new byte[0];
		File file = new File(filePath);
		if (file.exists()) {
			FileInputStream in = new FileInputStream(file);
			ByteArrayOutputStream out = new ByteArrayOutputStream(2048);
			byte[] cache = new byte[CACHE_SIZE];
			int nRead = 0;
			try {
				while ((nRead = in.read(cache)) != -1) {
					out.write(cache, 0, nRead);
					out.flush();
				}
				data = out.toByteArray();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					out.close();
					in.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
		}
		return data;
	}

	/**
	 * 二进制数据写文件
	 * @param bytes 二进制数据
	 * @param filePath 文件生成目录
	 */
	public static void byteArrayToFile(byte[] bytes, String filePath) throws Exception {
		InputStream in = new ByteArrayInputStream(bytes);
		File destFile = new File(filePath);
		// if (!destFile.getParentFile().exists()) {
		// destFile.getParentFile().mkdirs();
		// }
		destFile.createNewFile();
		OutputStream out = new FileOutputStream(destFile);
		byte[] cache = new byte[CACHE_SIZE];
		int nRead = 0;
		while ((nRead = in.read(cache)) != -1) {
			out.write(cache, 0, nRead);
			out.flush();
		}
		out.close();
		in.close();
	}

}
