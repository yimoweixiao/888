package javax.xianfeng.platform.base.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.platform.base.entity.Property;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-29 下午11:05:27
 */
public class PropertyService implements IPropertyService {

	private EntityDao<Property> propertyDao;

	@Override
	public List<Property> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return propertyDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return propertyDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public Property get(String id) throws DaoException {
		return propertyDao.get(id);
	}

	@Override
	public void save(List<Property> list) throws DaoException {
		for (Property e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				e.setEditTime(new Date());
				propertyDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				propertyDao.drop(e);
			}
		}
	}

	@Override
	public void delete(String id) throws DaoException {
		propertyDao.delete(id);
	}

	/**
	 * 获取查询模板
	 * 
	 * @param id
	 * @return
	 */
	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Property p where 1=1 ");

		List<Integer> types = new ArrayList<Integer>();
		List<Object> args = new ArrayList<Object>();

		// 查询条件
		String id = (String) pset.getParameter("id");
		if (id != null && id.length() > 0) {
			sql.append("and p.id like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + id + "%");
		}

		// 排序条件
		String sortField = pset.getPager().getSortField();
		if (sortField != null && sortField.length() > 0) {
			sql.append("order by ").append(sortField);
		} else {
			sql.append("order by id");
		}

		String sortDir = pset.getPager().getSortDir();
		if (sortDir != null && sortDir.length() > 0) {
			sql.append(" ").append(sortDir);
		} else {
			sql.append(" asc");
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<Property> getPropertyDao() {
		return propertyDao;
	}

	public void setPropertyDao(EntityDao<Property> propertyDao) {
		this.propertyDao = propertyDao;
	}

}
