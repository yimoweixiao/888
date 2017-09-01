package javax.xianfeng.test.java;

import javax.xianfeng.web.util.RequestUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-18 下午10:09:25
 */
public class TestString {

	@Test
	public void replace() {
		String str = "[],";
		str.replaceAll("\\[\\]\\,", "");
		System.out.println(str);
	}

	@Test
	public void replaceAll() {
		String str = "\"children\":[],\"parentCode\":null,";
		try {
			System.out.println((str + "good").replaceAll("\"children\":\\[\\]\\,", ""));
			System.out.println((str + "good").replaceAll("\"parentCode\":null\\,", ""));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void endWith () {
		String url = "http://localhost/action/demo/doList.rmi?type=ajax&r=1";
		String suffix = ".rmi";
		System.out.println(url.endsWith(suffix));
		
		System.out.println(RequestUtil.isURISuffix(url, suffix));
	}
	
	@Test
	public void contains () {
		String s1 = "Hello";
		String s2 = "Hello World";
		String s = "Hello";
		
		System.out.println(s1.contains(s));
		System.out.println(s2.contains(s));
	}
	
	@Test
	public void length () {
		System.out.println("MenuStyle20150425221401379".length());
	}
	
}
