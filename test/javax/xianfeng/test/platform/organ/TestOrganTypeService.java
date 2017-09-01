package javax.xianfeng.test.platform.organ;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.organ.entity.OrganType;
import javax.xianfeng.platform.organ.service.IOrganTypeService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 上午11:50:34
 */
public class TestOrganTypeService {

	IOrganTypeService service = (IOrganTypeService) SpringIoc.find("platform.OrganTypeService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		List<OrganType> list = service.query(pset);
		for (OrganType e : list) {
			System.out.println(Rebuilder.toString(e));
			/*
			 * for (OrganType c: e.getChildren()) { System.out.println("\t" + c.getId() + " - " + c.getName()); }
			 */
		}
	}

	@Test
	public void delete() throws DaoException {
		service.delete("POST");
	}

}
