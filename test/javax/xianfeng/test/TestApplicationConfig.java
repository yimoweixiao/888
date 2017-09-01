package javax.xianfeng.test;

import javax.xianfeng.ApplicationConfig;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-11 下午08:05:04
 */
public class TestApplicationConfig {

	@Test
	public void demo() {
		System.out.println(ApplicationConfig.getConfig("Xianfeng.MetaData.BasePath"));
	}

}
