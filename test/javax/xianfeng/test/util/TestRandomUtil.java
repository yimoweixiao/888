package javax.xianfeng.test.util;

import java.util.List;

import javax.xianfeng.util.RandomUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-3 下午11:20:04
 */
public class TestRandomUtil {

	@Test
	public void random1() {
		int i = RandomUtil.random(2);
		System.out.println(i);
	}

	@Test
	public void random2() {
		int i = RandomUtil.random(2 + 1);
		System.out.println(i);
	}

	@Test
	public void random3() {
		List<Integer> list = RandomUtil.random(4, 3, false);
		for (Integer i : list) {
			System.out.println(i);
		}
	}

}
