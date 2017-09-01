package javax.xianfeng.platform.base.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.platform.base.entity.CantType;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-25 下午08:28:47
 */
public class CantTypeService implements ICantTypeService {

	private EntityDao<CantType> cantTypeDao;

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#get(java.lang.String)
	 */
	@Override
	public CantType get(String id) throws DaoException {
		return cantTypeDao.get(id);
	}

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#getTotalSize(javax.xianfeng.core.model.ParameterSet)
	 */
	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return cantTypeDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#query(javax.xianfeng.core.model.ParameterSet)
	 */
	@Override
	public List<CantType> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return cantTypeDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#save(java.util.List)
	 */
	@Override
	public void save(List<CantType> list) throws DaoException {
		for (CantType e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				cantTypeDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				cantTypeDao.drop(e);
			}
		}

	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from CantType e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and e.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}

		sql.append("order by e.seq ");

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<CantType> getCantTypeDao() {
		return cantTypeDao;
	}

	public void setCantTypeDao(EntityDao<CantType> cantTypeDao) {
		this.cantTypeDao = cantTypeDao;
	}

}
