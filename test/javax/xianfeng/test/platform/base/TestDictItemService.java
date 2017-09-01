package javax.xianfeng.test.platform.base;

import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.platform.base.entity.DictItem;
import javax.xianfeng.platform.base.service.IDictItemService;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-17 下午09:31:14
 */
public class TestDictItemService {
	IDictItemService service = (IDictItemService) SpringIoc.find("platform.DictItemService");

	@Test
	public void init() {
		System.out.println(service);
	}

	/**
	 * 查询字典项
	 * @author Programmer.Wenlong
	 * @since 2014-5-18 上午10:16:33
	 * @throws DaoException
	 */
	@Test
	public void query() throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.getPager().setPageLimit(100);
		pset.setParameter("dictCode", "DEMO_DICT");
		List<DictItem> list = service.query(pset);
		System.out.println("size: " + list.size());
		for (DictItem e : list) {
			System.out.println(e.getCode() + "=" + e.getValue() + "\t>" + e.getParentCode());
			for (DictItem e2 : e.getChildren()) {
				System.out.println("\t" + e2.getCode() + "=" + e2.getValue());
				for (DictItem e3 : e.getChildren()) {
					System.out.println("\t\t" + e3.getCode() + "=" + e3.getValue());

				}
			}
		}
	}

	@Test
	public void get() throws DaoException {
		DictItem e = service.queryUniqueByDictCodeAndItemCode("DEMO_DICT", "ITEM03");
		System.out.println(Rebuilder.toString(e));
	}

	/**
	 * 删除字典项
	 * @author Programmer.Wenlong
	 * @throws DaoException
	 * @since 2014-5-18 上午10:16:24
	 */
	@Test
	public void delete() throws DaoException {
		EntityDao<DictItem> dictItemDao = (EntityDao<DictItem>) SpringIoc.find("platform.DictItemDao");
		System.out.println(dictItemDao);
		List<DictItem> list = dictItemDao.query();
		System.out.println(list.size());
		for (DictItem e : list) {
			if (e.getCode().equals("111")) {
				System.out.println("code: " + e.getCode() + "\tvalue: " + e.getValue());
				System.out.println("children: " + e.getChildren().size());
				dictItemDao.drop(e); // 会级联删除下级
				break;
			}
		}
	}

	@Test
	public void save() throws DaoException {
		DictItem e = new DictItem("1", "1", "1", 1);
		List<DictItem> list = new ArrayList<DictItem>();
		service.save(list);
	}

}
