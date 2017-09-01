package javax.xianfeng.test.core.model;

import java.util.List;

import javax.xianfeng.core.model.BetaRepeatedMap;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-17 下午04:54:42
 */
public class TestBetaRepeatedMap {

	@SuppressWarnings("unchecked")
	@Test
	public void demo() {
		BetaRepeatedMap map = new BetaRepeatedMap();
		map.put("number", 1001);
		map.put("number", 1002);
		map.put("number", 1003);
		Object number = map.get("number");
		System.out.println(number);
		List list = map.values();
		System.out.println(list);
	}
}
