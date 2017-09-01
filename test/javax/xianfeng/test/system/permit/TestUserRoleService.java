package javax.xianfeng.test.system.permit;

import java.util.List;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.service.IUserRoleService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-15 下午05:37:30
 */
public class TestUserRoleService {

	IUserRoleService service = (IUserRoleService) SpringIoc.find("system.UserRoleService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void queryDelegatedRoles() throws DaoException {
		List<Role> list= service.queryDelegatedRoles("SUPERADMIN");
		for (Role role: list) {
			System.out.println(role.getName());
		}
	}
	
	@Test
	public void queryUnDelegatedRoles() throws DaoException {
		List<Role> list= service.queryUnDelegatedRoles("SUPERADMIN");
		for (Role role: list) {
			System.out.println(role.getName());
		}
	}
	
}
