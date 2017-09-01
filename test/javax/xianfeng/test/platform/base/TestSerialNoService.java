package javax.xianfeng.test.platform.base;

import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.SerialNo;
import javax.xianfeng.platform.base.service.ISerialNoService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-17 下午09:31:14
 */
public class TestSerialNoService {
	ISerialNoService service = (ISerialNoService) SpringIoc.find("platform.SerialNoService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		SerialNo e = service.get("SYS_DEMO_NO");
		System.out.println(Rebuilder.toString(e));
	}

}
