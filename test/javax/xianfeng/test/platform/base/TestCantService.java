package javax.xianfeng.test.platform.base;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Cant;
import javax.xianfeng.platform.base.service.ICantService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

public class TestCantService {

	ICantService service = (ICantService) SpringIoc.find("platform.CantService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void get() throws DaoException {
		Cant e = service.get("CHINA");
		System.out.println(Rebuilder.toString(e));
	}
	
	@Test
	public void query () throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("PARENT_CODE", "370000");
		List<Cant> list = service.query(pset);
		for (Cant e: list) {
			System.out.println(e.getCode() + ":" + e.getName());
		}
	}
	
	@Test
	public void queryNoPage () throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("limit", -1);
		pset.setParameter("typeId", "1");
		pset.setParameter("sortField", "code");
		pset.setParameter("sortDir", "asc");
		List<Cant> list = service.query(pset);
		System.out.println("size=" + list.size());
		for (Cant e: list) {
			System.out.println(e.getCode() + ":" + e.getName());
		}
	}

}
