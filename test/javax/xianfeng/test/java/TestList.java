package javax.xianfeng.test.java;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-22 上午11:30:22
 */
public class TestList {

	@Test
	public void remove() {
		List<String> list = new ArrayList<String>();
		list.add("1");
		list.add("2");
		list.add("3");
		System.out.println(list.size());
		list.remove(2);
		System.out.println(list.size());
	}
	
	@Test
	public void addBySeq () {
		List<String> list = new ArrayList<String>();
		list.add("1");
		list.add("2");
		list.add("3");
		list.add(2, "4");
		list.add("5");
		System.out.println(list);
	}
	
}
