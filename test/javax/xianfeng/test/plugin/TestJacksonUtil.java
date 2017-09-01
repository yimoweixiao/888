package javax.xianfeng.test.plugin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.demo.entity.T;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-7 下午08:32:11
 */
public class TestJacksonUtil {

	@Test
	public void read() {
		String json = "[{\"name\":\"Jack\",\"id\":\"1001\",\"state\":false},{\"name\":\"Rose\",\"id\":\"1002\",\"state\":false}]";
		try {
			T[] list = (T[]) JacksonUtil.newInstance().format(json, T[].class);
			for (T t : list) {
				System.out.println(Rebuilder.toString(t));
			}
		} catch (JsonFormatException e) {
			e.printStackTrace();
		}
	}

	@Test
	public void readString() {
		String json = "{\"name\":\"Jack\",\"id\":\"1001\",\"state\":false}";
		try {
			String str = (String) JacksonUtil.newInstance().format(json, String.class);
			System.out.println(Rebuilder.toString(str));
		} catch (JsonFormatException e) {
			e.printStackTrace();
		}
	}

	@Test
	public void format() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("total", 3);
		map.put("flag", true);
		List<T> list = new ArrayList<T>();
		list.add(new T("1001", "Jack", false));
		list.add(new T("1002", "Rose", false));
		map.put("rows", list);
		try {
			String str = JacksonUtil.newInstance().format(map);
			System.out.println(str);
		} catch (JsonFormatException e) {
			e.printStackTrace();
		}
	}

}
