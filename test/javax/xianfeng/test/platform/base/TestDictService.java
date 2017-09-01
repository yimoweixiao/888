package javax.xianfeng.test.platform.base;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Dict;
import javax.xianfeng.platform.base.service.IDictService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-17 下午09:31:14
 */
public class TestDictService {
	IDictService service = (IDictService) SpringIoc.find("platform.DictService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		Dict e = service.get("DEMO_DICT");
		System.out.println(e);
		System.out.println(Rebuilder.toString(e));
	}

}
