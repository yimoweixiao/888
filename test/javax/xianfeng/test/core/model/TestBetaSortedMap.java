package javax.xianfeng.test.core.model;

import javax.xianfeng.core.model.BetaSortedMap;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-17 下午04:54:57
 */
public class TestBetaSortedMap {

	@SuppressWarnings("unchecked")
	@Test
	public void demo() {
		BetaSortedMap map = new BetaSortedMap();
		map.put("number", 1001);
		map.put("number", 1002);
		System.out.println(map.get("number"));
	}
}
