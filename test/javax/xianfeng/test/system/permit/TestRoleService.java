package javax.xianfeng.test.system.permit;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.service.IRoleService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-27 下午10:37:48
 */
public class TestRoleService {

	IRoleService service = (IRoleService) SpringIoc.find("system.RoleService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		List<Role> list = service.query(pset);
		for (Role e : list) {
			System.out.println(e.getName());
			for (Operation o : e.getOperations()) {
				System.out.println("\t" + o.getFunction().getName() + " - " + o.getName());
			}
		}
	}

}
