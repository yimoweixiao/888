package javax.xianfeng.platform.organ.service;

import java.util.List;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.platform.organ.entity.OrganType;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 上午11:51:39
 */
public class OrganTypeService implements IOrganTypeService {

	private EntityDao<OrganType> organTypeDao;

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return organTypeDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<OrganType> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return organTypeDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public OrganType get(String id) throws DaoException {
		return organTypeDao.get(id);
	}

	@Override
	public void save(List<OrganType> list) throws DaoException {
		for (OrganType e : list) {
			// System.out.println("children: " + e.getChildren());
			// System.out.println("children: " + e.getChildren().size());
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				organTypeDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				organTypeDao.drop(e);
			}
		}
	}

	@Override
	public void delete(String organId) throws DaoException {
		organTypeDao.delete(organId);
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from OrganType e where 1=1 ");

		/*
		 * List<Integer> types = new ArrayList<Integer>(3); List<Object> args =
		 * new ArrayList<Object>(3); template.setArgs(args.toArray());
		 * template.setTypes(DaoFormatUtil.formatTypes(types));
		 */

		sql.append("order by e.seq ");
		template.setSql(sql.toString());
		return template;
	}

	public EntityDao<OrganType> getOrganTypeDao() {
		return organTypeDao;
	}

	public void setOrganTypeDao(EntityDao<OrganType> organTypeDao) {
		this.organTypeDao = organTypeDao;
	}

}
