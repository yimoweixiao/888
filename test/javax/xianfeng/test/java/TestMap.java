package javax.xianfeng.test.java;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-18 下午11:26:49
 */
public class TestMap {
	
	@Test
	public void copy (){
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("1", 1);
		map1.put("2", 1);
		map1.put("3", 1);
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.putAll(map1);
		map1.put("4", 4);
		System.out.println(map1);
		System.out.println(map2);
	}

}
