package javax.xianfeng.test.system.permit;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Function;
import javax.xianfeng.system.permit.service.IFunctionService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-30 上午11:56:54
 */
public class TestFunctionService {

	IFunctionService service = (IFunctionService) SpringIoc.find("system.FunctionService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		Function f = service.get("FC10000003");
		System.out.println(f.getName());
		System.out.println(f.getModule().getName());
	}

	@Test
	public void getValidChildren() throws DaoException {
		Function f = service.get("1000101");
		f = Function.getFunctionWithUsefulChildren(f);
		System.out.println(f.getName());
		for (Function ff : f.getChildren()) {
			System.out.println("\t" + ff.getName());
			for (Function fff : ff.getChildren()) {
				System.out.println("\t\t" + fff.getName());
			}
		}
	}

}
