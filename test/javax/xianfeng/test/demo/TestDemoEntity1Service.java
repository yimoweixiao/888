package javax.xianfeng.test.demo;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.demo.service.IDemoEntity1Service;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午04:16:06
 */
public class TestDemoEntity1Service {

	IDemoEntity1Service service = (IDemoEntity1Service) SpringIoc.find("demo.DemoEntity1Service");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		DemoEntity1 demo = service.get(1001L);
		System.out.println(Rebuilder.toString(demo));
	}
	
	/**
	 * 测试一级缓存：默认不支持
	 * @author Programmer.Wenlong
	 * @since 2015-6-6 上午08:22:51
	 * @throws DaoException
	 */
	@Test
	public void cacheL1() throws DaoException {
		DemoEntity1 demo = service.get(1001L);
		System.out.println(Rebuilder.toString(demo));
		
		System.out.println("================");
		DemoEntity1 demo1 = service.get(1001L);
		System.out.println(Rebuilder.toString(demo1));
		
		System.out.println("================");
		System.out.println(demo == demo1);
	}

}
