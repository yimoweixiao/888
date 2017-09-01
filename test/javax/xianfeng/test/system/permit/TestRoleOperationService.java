package javax.xianfeng.test.system.permit;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.RoleOperation;
import javax.xianfeng.system.permit.service.IRoleOperationService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-27 下午10:37:48
 */
public class TestRoleOperationService {

	IRoleOperationService service = (IRoleOperationService) SpringIoc.find("system.RoleOperationService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		List<RoleOperation> list = service.query(pset);
		for (RoleOperation e : list) {
			System.out.println(e.getRoleId() + " - " + e.getOperationId());
		}
	}

}
