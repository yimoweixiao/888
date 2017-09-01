package javax.xianfeng.test.security;

import javax.xianfeng.security.web.ISafeHtmlMgr;
import javax.xianfeng.security.web.SafeHtmlMgr;

import org.junit.Test;

public class TestSafeHtmlMgr {
	
	@Test
	public void filter () {
		ISafeHtmlMgr filter = new SafeHtmlMgr();
		
		String str1 = "<a hef='#' safeURI='insert@demo'></a>Good<a hef='#' safeURI='insert@demo'></a>Hello <a hef='#' safeURI='insert@demo'></a> World<a hef='#' safeURI='insert@demo'></a> Ok";
		System.out.println(filter.filter(str1));
		System.out.println();
		
		String str2 = "Hello <a hef='#' safeURI='insert@demo'></a>";
		System.out.println(filter.filter(str2));
	}
	
}
