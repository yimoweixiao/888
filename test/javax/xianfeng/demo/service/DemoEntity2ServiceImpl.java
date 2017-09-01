package javax.xianfeng.demo.service;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.demo.entity.DemoEntity2;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-14 下午10:16:40
 */
public class DemoEntity2ServiceImpl implements IDemoEntity2Service {

	private EntityDao<DemoEntity2> dao;

	@Override
	public DemoEntity2 get(Long id) throws DaoException {
		return dao.get(id);
	}

	public EntityDao<DemoEntity2> getDao() {
		return dao;
	}

	public void setDao(EntityDao<DemoEntity2> dao) {
		this.dao = dao;
	}

}
