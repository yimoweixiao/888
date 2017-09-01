package javax.xianfeng.test.platform.organ;

import java.util.List;

import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;
import javax.xianfeng.platform.organ.entity.OrganType;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-24 下午09:40:07
 */
public class TestOrganTypeDao {

	private EntityDao<OrganType> dao = (HibernateDaoImpl<OrganType>) SpringIoc.find("platform.OrganTypeDao");

	@Test
	public void count() throws DaoException {
		System.out.println(dao.count("select count(*) from OrganType t where t.id in (select r.childId from OrganRule r where r.typeId = 'CORP')"));
	}

	@Test
	public void query() throws DaoException {
		List<OrganType> list = dao.query("from OrganType t where t.id in (select r.childId from OrganRule r where r.typeId = 'CORP')");
		System.out.println(list.size());
		;
	}

	@Test
	public void filter() throws DaoException {
		String hql = "from OrganType t ";
		DataSet ds = dao.filter(hql);
		System.out.println(ds.getSize());
	}

}
