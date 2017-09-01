package javax.xianfeng.demo.service;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.demo.entity.DemoEntity;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午03:37:40
 */
public class DemoEntityServiceImpl implements IDemoEntityService {

	private EntityDao<DemoEntity> dao;

	public DemoEntity get(String id) throws DaoException {
		return dao.get(id);
	}

	public EntityDao<DemoEntity> getDao() {
		return dao;
	}

	public void setDao(EntityDao<DemoEntity> dao) {
		this.dao = dao;
	}

}
