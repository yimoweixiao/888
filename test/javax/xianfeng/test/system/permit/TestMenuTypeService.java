package javax.xianfeng.test.system.permit;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.MenuType;
import javax.xianfeng.system.permit.service.IMenuTypeService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-27 下午10:37:48
 */
public class TestMenuTypeService {

	IMenuTypeService service = (IMenuTypeService) SpringIoc.find("system.MenuTypeService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		List<MenuType> list = service.query(pset);
		for (MenuType e : list) {
			System.out.println(Rebuilder.toString(e));
		}
	}

}
