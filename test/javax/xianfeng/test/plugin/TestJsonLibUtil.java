package javax.xianfeng.test.plugin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.plugin.json.JsonLibUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-3 下午11:50:51
 */
public class TestJsonLibUtil {

	@Test
	public void str2Json() {
		String str = "Hello world";
		JSONObject json = JSONObject.fromObject(str);
		String s = json.toString();
		System.out.println(s);
	}

	@Test
	public void arr2Json() {
		String str = "Hello world";
		JSONArray json = JSONArray.fromObject(str);
		String s = json.toString();
		System.out.println(s);
	}

	@Test
	public void toJson() throws JsonFormatException {
		Object obj = new String("Hi");
		System.out.println(JsonLibUtil.toJson("data", obj));

		obj = new Character('Q');
		System.out.println(JsonLibUtil.toJson("data", obj));

		obj = new Integer(2);
		System.out.println(JsonLibUtil.toJson("data", obj));

		obj = new Double(3.1415926);
		System.out.println(JsonLibUtil.toJson("data", obj));

		obj = false;
		System.out.println(JsonLibUtil.toJson("data", obj));

		obj = null;
		System.out.println(JsonLibUtil.toJson("data", obj));
	}

	@Test
	public void list2Json() throws JsonFormatException {
		List<String> list = new ArrayList<String>();
		list.add("Hello");
		list.add("World");
		System.out.println(JsonLibUtil.toJson("data", list));

	}

	@Test
	public void map2Json() throws JsonFormatException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("one", 1);
		map.put("two", 2);
		map.put("three", 3);
		System.out.println(JsonLibUtil.toJson("data", map));
	}

}
