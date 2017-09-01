package javax.xianfeng.test.java;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-6 下午02:46:25
 */
public class TestURLEncode {
	
	@Test
	public void encode () throws UnsupportedEncodingException {
		String str = "先锋科技有限公司";
		System.out.println(URLEncoder.encode(str, "UTF-8"));
	}
	
	@Test
	public void decode () throws UnsupportedEncodingException {
		String str = "%E5%85%88%E9%94%8B%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8";
		System.out.println(URLDecoder.decode(str, "UTF-8"));
	}

}
