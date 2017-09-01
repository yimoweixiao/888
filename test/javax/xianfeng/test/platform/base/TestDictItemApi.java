package javax.xianfeng.test.platform.base;

import java.util.List;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.platform.base.DictItemApi;
import javax.xianfeng.platform.base.entity.DictItem;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-5-4 下午08:45:42
 */
public class TestDictItemApi {

	DictItemApi api = DictItemApi.newInstance();
	
	@Test
	public void query() {
		List<DictItem> list = api.query("ZWT_COMPANY_TYPE");
		for (DictItem item: list) {
			System.out.println(item.getCode() + ":" + item.getValue());
		}
	}
}
