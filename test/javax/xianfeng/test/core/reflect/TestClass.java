package javax.xianfeng.test.core.reflect;

import javax.xianfeng.demo.service.DemoEntityServiceImpl;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午04:36:09
 */
public class TestClass {

	@Test
	public void enclosingClass() {
		Class<?> c = DemoEntityServiceImpl.class.getEnclosingClass();
		System.out.println(c.getName());
	}

	@Test
	public void declaredClasses() {
		Class<?>[] cc = DemoEntityServiceImpl.class.getDeclaredClasses();
		for (Class c : cc) {
			System.out.println(c.getName());
		}
	}

	@Test
	public void declaringClasses() {
		Class<?> c = DemoEntityServiceImpl.class.getDeclaringClass();
		System.out.println(c.getName());
	}

	@Test
	public void superClasses() {
		Class<?> c = DemoEntityServiceImpl.class.getSuperclass();
		System.out.println(c.getName());
	}

	/**
	 * 测试获取接口类型
	 * @author Programmer.Wenlong
	 * @since 2014-5-19 下午04:49:31
	 */
	@Test
	public void interfaces() {
		Class[] cc = DemoEntityServiceImpl.class.getInterfaces();
		for (Class c : cc) {
			System.out.println(c.getName());
		}
	}
}
