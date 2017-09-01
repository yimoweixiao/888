package javax.xianfeng.test.java;

import java.util.LinkedHashSet;
import java.util.Set;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-10 上午10:03:38
 */
public class TestSet {

	@Test
	public void sortedSet() {
		Set<String> set = new LinkedHashSet<String>();
		set.add("2");
		set.add("5");
		set.add("2");
		set.add("3");
		for (String s : set) {
			System.out.println(s);
		}
	}

	@Test
	public void remove() {
		Set<String> set = new LinkedHashSet<String>();
		set.add("1");
		set.add("2");
		set.add("3");
		set.remove("2");
		for (String s : set) {
			System.out.println(s);
		}
	}
}
