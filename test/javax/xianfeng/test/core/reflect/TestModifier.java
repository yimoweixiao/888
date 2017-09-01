package javax.xianfeng.test.core.reflect;

import java.lang.reflect.Modifier;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-23 下午08:41:20
 */
public final class TestModifier {

	@Test
	public void isStatic() {
		System.out.println(Modifier.isFinal(TestModifier.class.getModifiers()));;
		System.out.println(Modifier.isPublic(TestModifier.class.getModifiers()));;
	}
	
}
