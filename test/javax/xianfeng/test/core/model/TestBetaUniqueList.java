package javax.xianfeng.test.core.model;

import java.util.List;

import javax.xianfeng.core.model.BetaUniqueList;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-13 上午11:11:40
 */
public class TestBetaUniqueList {

	@Test
	public void demo() {
		List<String> list = new BetaUniqueList<String>();
		list.add("Hello");
		list.add("World");
		list.add("Hello");
		System.out.println("size=" + list.size());
		for (String s : list) {
			System.out.println(s);
		}
	}
}
