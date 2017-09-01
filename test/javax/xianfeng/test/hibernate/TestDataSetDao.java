package javax.xianfeng.test.hibernate;

import java.util.List;

import javax.xianfeng.core.model.DataField;
import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.Rebuilder;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.hibernate.HibernateDaoException;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午11:40:22
 */
@SuppressWarnings("unchecked")
public class TestDataSetDao {

	private HibernateDaoImpl<DemoEntity1> dao = (HibernateDaoImpl<DemoEntity1>) SpringIoc.find("demo.DemoEntity1Dao");

	@Test
	public void list() throws DaoException {
		List<DemoEntity1> list = dao.query();
		for (DemoEntity1 entity : list) {
			System.out.println(Rebuilder.toString(entity));
		}
	}

	@Test
	public void filter() throws HibernateDaoException {
		ParameterSet parameterSet = new ParameterSet();
		parameterSet.setParameter("start", 0);
		parameterSet.setParameter("limit", -1);
		parameterSet.setParameter("sortField", "id");
		parameterSet.setParameter("sortDir", "DESC");
		parameterSet.setParameter("id@isNotNull", "ok");
		parameterSet.setParameter("name@like", "%测试%");
		parameterSet.setParameter("age@>=", 20);
		DataSet ds = dao.filter(parameterSet);
		for (DataRecord record : ds.getRecords()) {
			for (DataField field : ds.getFields()) {
				System.out.print(field.getName() + "=" + record.get(field.getName()) + "\t");
			}
			System.out.println();
		}
	}
}
