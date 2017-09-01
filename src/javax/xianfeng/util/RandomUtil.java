package javax.xianfeng.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 随机数工具类
 * @author Programmer.Wenlong
 * @since 2012-6-3 下午11:17:02
 */
public final class RandomUtil {

	private RandomUtil() {
		super();
	}

	/**
	 * 获取[0,max)的随机整数
	 * @param max
	 * @return
	 */
	public static int random(int max) {
		return (int) (Math.random() * max);
	}

	/**
	 * 获取[0,max)的size个随机整数集合
	 * @param max
	 * @param size
	 * @param isRepeat 是否重复：true-可重复，false-不可重复
	 * @return
	 */
	public static List<Integer> random(int max, int size, boolean isRepeat) {
		List<Integer> list = new ArrayList<Integer>();
		int index = 0;
		int number;
		while (index < size) {
			number = random(max);
			if (isRepeat == false) {
				if (!list.contains(number)) {
					list.add(index++, number);
				}
			} else {
				list.add(index++, number);
			}
		}
		return list;
	}

}
