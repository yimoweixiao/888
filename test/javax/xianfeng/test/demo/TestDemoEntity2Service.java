package javax.xianfeng.test.demo;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity2;
import javax.xianfeng.demo.service.IDemoEntity2Service;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午04:16:06
 */
public class TestDemoEntity2Service {

	IDemoEntity2Service service = (IDemoEntity2Service) SpringIoc.find("demo.DemoEntity2Service");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		DemoEntity2 demo = service.get(1001L);
		System.out.println(Rebuilder.toString(demo));
	}

}
