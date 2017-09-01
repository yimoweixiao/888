package javax.xianfeng.test.platform.base;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Property;
import javax.xianfeng.platform.base.service.IPropertyService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-17 下午02:43:12
 */
public class TestPropertyService {
	IPropertyService service = (IPropertyService) SpringIoc.find("platform.PropertyService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		Property e = service.get("System.Demo.Welcome");
		System.out.println(Rebuilder.toString(e));
	}

}
