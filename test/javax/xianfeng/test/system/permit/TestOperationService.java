package javax.xianfeng.test.system.permit;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.service.IOperationService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-30 上午11:57:02
 */
public class TestOperationService {

	IOperationService service = (IOperationService) SpringIoc.find("system.OperationService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		Operation e = service.get("100020101");
		System.out.println(e.getName());
		System.out.println(e.getFunction().getName());
		System.out.println(e.getFunction().getModule().getName());
	}
}
