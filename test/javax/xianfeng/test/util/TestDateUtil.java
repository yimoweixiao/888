package javax.xianfeng.test.util;

import javax.xianfeng.util.DateUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-7-28 上午12:17:35
 */
public class TestDateUtil {

	@Test
	public void date1() {
		System.out.println(DateUtil.format(new java.util.Date()));
		System.out.println(DateUtil.format(new java.util.Date(), DateUtil.DATE));
		System.out.println(DateUtil.format(new java.util.Date(), DateUtil.DATEWEEK));
	}

	@Test
	public void date2() {
		System.out.println(DateUtil.format(new java.sql.Date(System.currentTimeMillis())));
	}

}
