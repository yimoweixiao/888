package javax.xianfeng.demo.service;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.demo.entity.DemoEntity1;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-14 下午10:16:40
 */
public class DemoEntity1ServiceImpl implements IDemoEntity1Service {

	private EntityDao<DemoEntity1> dao;

	/*
	 * @see javax.xianfeng.demo.service.IDemoEntity1Service#get(java.lang.Long)
	 */
	@Override
	public DemoEntity1 get(Long id) throws DaoException {
		return dao.get(id);
	}

	public EntityDao<DemoEntity1> getDao() {
		return dao;
	}

	public void setDao(EntityDao<DemoEntity1> dao) {
		this.dao = dao;
	}

}
