package javax.xianfeng.test;

import javax.xianfeng.core.beans.LoggedBean;

import org.junit.Test;

public class TestLogExceptionInfo extends LoggedBean {
	
	private String var;
	
	@Test
	public void demo() {
		try {
			var.toString();
		} catch (Exception e) {
			logger.trace("异常", e);
		}
	}
	
	@Test
	public void demo1() {
		try {
			var.toString();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	@Test
	public void demo2() {
		try {
			var.toString();
		} catch (Exception e) {
			logger.error(e.getCause());
		}
	}
	
	@Test
	public void demo3() {
		try {
			var.toString();
		} catch (Exception e) {
			logger.error("捕获异常", e);
		}
	}
	
}
