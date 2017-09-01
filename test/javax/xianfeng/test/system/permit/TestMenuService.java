package javax.xianfeng.test.system.permit;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Menu;
import javax.xianfeng.system.permit.service.IMenuService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-27 下午10:37:48
 */
public class TestMenuService {

	IMenuService service = (IMenuService) SpringIoc.find("system.MenuService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("typeId", "SYSTEM");
		pset.setParameter("id", "1000101");
		//pset.getPager().setPageLimit(100);
		List<Menu> list = service.query(pset);
		print(list);
	}

	@Test
	public void queryJson() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("typeId", "SYSTEM");
		pset.getPager().setPageLimit(100);

		List<Menu> list = service.query(pset);
		JacksonUtil jackson = JacksonUtil.newInstance();
		String json = jackson.format(list);
		json = json.replaceAll("\"state\":-1", "\"state\":\"closed\"");
		System.out.println(json);

		System.out.println("=========================");
		List<Menu> list2 = (List<Menu>) jackson.format(json, List.class);
		print(list);
	}

	public void print(List<Menu> list) {
		for (Menu e : list) {
			System.out.println(e.getText());
			for (Menu m1 : e.getChildren()) {
				System.out.println("\t" + m1.getText());
				for (Menu m2 : m1.getChildren()) {
					System.out.println("\t\t" + m2.getText());
				}
			}
		}
	}

}
