package javax.xianfeng.test.system.permit;

import java.util.List;
import java.util.Set;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Function;
import javax.xianfeng.system.permit.entity.Module;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.service.IModuleService;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-30 上午11:31:55
 */
public class TestModuleService {

	IModuleService service = (IModuleService) SpringIoc.find("system.ModuleService");

	@Test
	public void init() {
		System.out.println(service);
	}

	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("id", "MD10000001");
		pset.getPager().setPageLimit(100);
		List<Module> list = service.query(pset);
		for (Module m : list) {
			System.out.println(m.getName());
			for (Function f : m.getFunctions()) {
				System.out.println("\t" + f.getName());
				for (Operation o : f.getOperations()) {
					System.out.println("\t\t" + o.getName());
				}
			}
		}
	}

	/**
	 * 查询整个功能树
	 * @author Programmer.Wenlong
	 * @throws DaoException
	 * @since 2014-6-10 上午10:10:33
	 */
	@Test
	public void queryFuncionTree() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		List<Module> list = service.query(pset);
		for (Module m : list) {
			System.out.println(m.getName());
			Set<Function> funcs = m.getFunctions();
			for (Function f : funcs) {
				System.out.println("\t" + f.getName());
				for (Function ff : f.getChildren()) {
					System.out.println("\t\t" + ff.getName());
				}
			}
		}
		String result = JacksonUtil.newInstance().format(list);
		result = result.replaceAll("\"functions\"", "\"children\"");
		System.out.println(result);
	}

}
