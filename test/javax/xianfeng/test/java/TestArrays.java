package javax.xianfeng.test.java;

import java.util.Arrays;

public class TestArrays {

	/**
	 * @author Programmer.Wenlong
	 * @since 2014-2-10 下午10:55:27
	 * @param args
	 */
	public static void main(String[] args) {
		String[] arr = new String[] { "B", "A" };
		Arrays.sort(arr);
		for (String str : arr) {
			System.out.println(str);
		}
	}

}
