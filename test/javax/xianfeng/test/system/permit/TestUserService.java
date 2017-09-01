package javax.xianfeng.test.system.permit;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.system.permit.service.IUserService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-28 下午02:17:39
 */
public class TestUserService {

	IUserService service = (IUserService) SpringIoc.find("system.UserService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		List<User> list = service.query(pset);
		for (User e : list) {
			System.out.println(Rebuilder.toString(e));
		}
	}

}
