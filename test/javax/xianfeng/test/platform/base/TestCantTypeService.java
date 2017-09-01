package javax.xianfeng.test.platform.base;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.CantType;
import javax.xianfeng.platform.base.service.ICantTypeService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

public class TestCantTypeService {

	ICantTypeService service = (ICantTypeService) SpringIoc.find("platform.CantTypeService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		CantType e = service.get("0");
		System.out.println(Rebuilder.toString(e));
	}

}
