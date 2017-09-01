package javax.xianfeng.test.platform.organ;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.organ.entity.Organ;
import javax.xianfeng.platform.organ.service.IOrganService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-22 上午10:35:09
 */
public class TestOrganService {

	IOrganService service = (IOrganService) SpringIoc.find("platform.OrganService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		Organ e = service.get("10000003");
		System.out.println(Rebuilder.toString(e));
		System.out.println(Rebuilder.toString(e.getType()));
		for (Organ o: e.getChildren()) {
			System.out.println(Rebuilder.toString(o));
		}
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		pset.setParameter("id", "10000001");
		List<Organ> list = service.query(pset);
		System.out.println(list.size());
		for (Organ e : list) {
			System.out.println(Rebuilder.toString(e));
		}
	}
}
