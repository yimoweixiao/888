package javax.xianfeng.test;

import javax.xianfeng.core.util.Assert;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-11 下午07:37:21
 */
public class TestAssert {

	@Test
	public void isNotNull() {
		Assert.isNotNull(null);
		System.out.println("==== end ====");
	}

}
