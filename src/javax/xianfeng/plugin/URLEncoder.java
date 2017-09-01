package javax.xianfeng.plugin;

import java.io.UnsupportedEncodingException;

/**
 * 封装URLEncoder和URLDecoder的编码解码工具类<br>
 * @author Programmer.Wenlong
 * @since 2011-12-29 下午10:51:28
 */
public class URLEncoder implements Encoder {

	public static final String UTF8 = "UTF-8"; // 默认UTF-8编码

	@Override
	public String decode(String str) throws UnsupportedEncodingException {
		try {
			return java.net.URLDecoder.decode(str, UTF8);
		} catch (UnsupportedEncodingException e) {
			throw e;
		}
	}

	@Override
	public String encode(String str) throws UnsupportedEncodingException {
		try {
			return java.net.URLEncoder.encode(str, UTF8);
		} catch (UnsupportedEncodingException e) {
			throw e;
		}
	}

}
