package javax.xianfeng.test.core.reflect;

import java.lang.reflect.Method;

import javax.xianfeng.util.MethodUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-2 下午10:52:37
 */
public class TestMethodUtil {

	@Test
	public void getMethod() throws NoSuchMethodException {
		Method m = MethodUtil.getMethod(String.class, "getClass");
		System.out.println(m);
	}

}
