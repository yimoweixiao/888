package javax.xianfeng.test.core.reflect;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.demo.entity.T;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-3-11 下午10:57:32
 * @see javax.xianfeng.core.reflect.Rebuilder
 */
public class TestRebuilder {

	@Test
	public void rebuild() {
		T e = new T("1001", "Hello", false);
		System.out.println(Rebuilder.toString(e));
	}
}
