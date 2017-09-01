package javax.xianfeng.test.demo;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity;
import javax.xianfeng.demo.service.IDemoEntityService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午04:16:06
 */
public class TestDemoEntityService {

	IDemoEntityService service = (IDemoEntityService) SpringIoc.find("demo.DemoEntityService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		DemoEntity demo = service.get("1001");
		System.out.println(Rebuilder.toString(demo));
	}

}
