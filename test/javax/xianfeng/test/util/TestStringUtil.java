package javax.xianfeng.test.util;

import javax.xianfeng.util.StringUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-7-26 下午10:49:27
 */
public class TestStringUtil {

	@Test
	public void cutOff() {
		System.out.println(StringUtil.cutOff("Hello World", 5));
	}

	@Test
	public void cutOffWithMark() {
		System.out.println(StringUtil.cutOffWithMark("Hello World", 5));
	}

}
