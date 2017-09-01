package javax.xianfeng.dao.util;

import java.util.List;

/**
 * @author Programmer.Wenlong
 * @since 2014-3-14 下午02:21:08
 */
public final class DaoFormatUtil {

	private DaoFormatUtil() {
		super();
	}

	public static int[] formatTypes(List<Integer> list) {
		int[] _types = new int[list.size()];
		for (int i = 0; i < list.size(); i++) {
			_types[i] = list.get(i);
		}
		return _types;
	}

}
