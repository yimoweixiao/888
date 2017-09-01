package javax.xianfeng.test.system.permit;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.UserApi;
import javax.xianfeng.system.permit.entity.Menu;
import javax.xianfeng.system.permit.service.IUserMenuService;
import javax.xianfeng.system.security.entity.UserView;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-29 下午02:21:20
 */
public class TestUserMenuService {

	IUserMenuService service = (IUserMenuService) SpringIoc.find("system.UserMenuService");

	UserApi userApi = UserApi.newInstance();
	
	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		String userId = "SUPERADMIN";
		UserView userView = new UserView();
		userView.setId(userId);
		userView.initExtCfgData();
		
		for (String str: userView.getSafeURICfgs()) {
			System.out.println(str);
		}
		System.out.println("===============================");
		
		List<Menu> list = service.queryUserMenus(userId, userView.getSafeURICfgs());
		System.out.println("===============================");
		for (Menu e : list) {
			//一级菜单
			System.out.println(e.getName());
			for (Menu m1 : e.getChildren()) {
				//二级菜单
				System.out.println("\t" + m1.getName());
				for (Menu m2 : m1.getChildren()) {
					//三级菜单
					System.out.println("\t\t" + m2.getName());
				}
			}
		}
		System.out.println("================================");
		Map<String, String> pageMap = userView.getDefaultPageCfgs();
		Iterator<String> it = pageMap.keySet().iterator();
		while (it.hasNext()) {
			String name = it.next();
			String url = pageMap.get(name);
			System.out.println(name + ":" + url);
		}
	}
}
