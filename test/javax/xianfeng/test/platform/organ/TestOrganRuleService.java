package javax.xianfeng.test.platform.organ;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.organ.entity.OrganRule;
import javax.xianfeng.platform.organ.service.IOrganRuleService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 上午11:50:34
 */
public class TestOrganRuleService {

	IOrganRuleService service = (IOrganRuleService) SpringIoc.find("platform.OrganRuleService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		pset.setParameter("id", "CORP");
		List<OrganRule> list = service.query(pset);
		for (OrganRule e : list) {
			System.out.println(e.getTypeId() + " - " + e.getChildId());
		}
	}

}
