package javax.xianfeng.test.system.security;

import java.util.List;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.service.IUserRoleService;
import javax.xianfeng.system.portal.PortalApi;
import javax.xianfeng.system.portal.entity.DefaultPage;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-18 上午10:23:27
 */
public class TestDefaultPage {
	
	IUserRoleService service = (IUserRoleService) SpringIoc.find("system.UserRoleService");
	
	private final PortalApi portalApi = PortalApi.newInstance();

	@Test
	public void query () throws DaoException {
		List<Role> roles = service.queryDelegatedRoles("TEST");
		for (Role role: roles) {
			System.out.println(role.getName());
		}
		System.out.println();
		for (Role role: roles) {
			List<DefaultPage> defaultPages = portalApi.queryDefaultPage(DefaultPage.DEFAULT_PAGE_TYPE_ROLE, role.getId());
			for (DefaultPage defaultPage: defaultPages) {
				System.out.println(defaultPage.getName()+":"+defaultPage.getUrl());
			}
		}
	}
}
