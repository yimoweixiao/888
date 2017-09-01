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
import javax.xianfeng.platform.base.entity.Cant;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-25 下午08:28:47
 */
public class CantService implements ICantService {

	private EntityDao<Cant> cantDao;

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#get(java.lang.String)
	 */
	@Override
	public Cant get(String id) throws DaoException {
		return cantDao.get(id);
	}

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#getTotalSize(javax.xianfeng.core.model.ParameterSet)
	 */
	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return cantDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#query(javax.xianfeng.core.model.ParameterSet)
	 */
	@Override
	public List<Cant> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		if (pager.getPageLimit() <= 0) {
			return cantDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
		} else {
			return cantDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
		}
	}

	/*
	 * @see javax.xianfeng.platform.service.ICantTypeService#save(java.util.List)
	 */
	@Override
	public void save(List<Cant> list) throws DaoException {
		for (Cant e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				cantDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				cantDao.drop(e);
			}
		}

	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Cant e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String code = (String) pset.getParameter("code");
		if (code != null && code.length() > 0) {
			sql.append("and e.code like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + code + "%");
		}
		
		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and e.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}
		
		String typeId = (String) pset.getParameter("typeId");
		if (typeId != null && typeId.length() > 0) {
			sql.append("and e.typeId = ? ");
			types.add(Types.VARCHAR);
			args.add(typeId);
		}

		String parentCode = (String) pset.getParameter("parentCode");
		if (parentCode != null && parentCode.length() > 0) {
			sql.append("and e.parentCode = ? ");
			types.add(Types.VARCHAR);
			args.add(parentCode);
		}

		String status = (String) pset.getParameter("status");
		if (status != null && status.length() > 0) {
			args.add(Boolean.valueOf(status));
		} else {
			args.add(Boolean.valueOf(true));
		}
		sql.append("and e.status = ? ");
		types.add(Types.BOOLEAN);

		String sortField = pset.getPager().getSortField();
		if (sortField == null) {
			sql.append("order by e.code ");
		} else {
			sql.append("order by e.").append(sortField).append(" ");
		}
		sql.append(pset.getPager().getSortDir());

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<Cant> getCantDao() {
		return cantDao;
	}

	public void setCantDao(EntityDao<Cant> cantDao) {
		this.cantDao = cantDao;
	}

}
