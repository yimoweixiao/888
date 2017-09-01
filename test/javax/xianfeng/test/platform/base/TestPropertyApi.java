package javax.xianfeng.test.platform.base;

import javax.xianfeng.platform.base.PropertyApi;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-23 下午03:03:56
 */
public class TestPropertyApi {

	PropertyApi api = PropertyApi.newInstance();

	@Test
	public void demo1() {
		System.out.println(api.getValue("SYS_DEMO_WELCOME"));
	}

}
