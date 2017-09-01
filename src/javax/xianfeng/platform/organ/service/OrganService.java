package javax.xianfeng.platform.organ.service;

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
import javax.xianfeng.platform.organ.entity.Organ;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-22 上午10:29:47
 */
public class OrganService implements IOrganService {

	private EntityDao<Organ> organDao;

	/*
	 * @see javax.xianfeng.platform.service.IOrganService#delete(java.lang.String)
	 */
	@Override
	public void delete(String id) throws DaoException {
		organDao.delete(id);
	}

	/*
	 * @see javax.xianfeng.platform.service.IOrganService#get(java.lang.String)
	 */
	@Override
	public Organ get(String id) throws DaoException {
		return organDao.get(id);
	}
	
	@Override
	public void saveOrUpdate(Organ e) throws DaoException {
		this.organDao.saveOrUpdate(e);
		
	}

	/*
	 * @see javax.xianfeng.platform.service.IOrganService#getTotalSize(java.lang.String, java.lang.String)
	 */
	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return organDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	/*
	 * @see javax.xianfeng.platform.service.IOrganService#query(java.lang.String, java.lang.String, int, int)
	 */
	@Override
	public List<Organ> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return organDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	/*
	 * @see javax.xianfeng.platform.service.IOrganService#save(java.util.List)
	 */
	@Override
	public void save(List<Organ> list) throws DaoException {
		for (Organ e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				// TODO 更新全称

				organDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				organDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Organ e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String typeId = (String) pset.getParameter("typeId");
		if (typeId != null && typeId.length() > 0) {
			sql.append("and e.type.id = ? ");
			types.add(Types.VARCHAR);
			args.add(typeId);
		}
		
		String parentId = (String) pset.getParameter("id");
		if (parentId != null && parentId.length() > 0) {
			sql.append("and e.parentId = ? ");
			types.add(Types.VARCHAR);
			args.add(parentId);
		} else {
			sql.append("and e.parentId is null ");
		}

		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and e.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}

		sql.append("and e.status = true ");

		sql.append("order by e.seq ");

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));

		return template;
	}

	public EntityDao<Organ> getOrganDao() {
		return organDao;
	}

	public void setOrganDao(EntityDao<Organ> organDao) {
		this.organDao = organDao;
	}

}
