package javax.xianfeng.test;


import javax.xianfeng.ApplicationException;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-2-25 下午03:54:12
 */
public class TestApplicationException {

	@Test
	public void demo1() {
		try {
			throw new ApplicationException("系统异常。。。");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void demo2() {
		try {
			throw new ApplicationException("系统异常。。。", new IllegalArgumentException("参数不合法"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void demo3() {
		try {
			throw new ApplicationException(new IllegalArgumentException("参数不合法"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
