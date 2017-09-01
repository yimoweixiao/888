package javax.xianfeng.system.permit.service;

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
import javax.xianfeng.system.permit.entity.Function;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-5 下午04:00:05
 */
public class FunctionService implements IFunctionService {

	private EntityDao<Function> functionDao;

	@Override
	public Function get(String id) throws DaoException {
		return functionDao.get(id);
	}

	@Override
	public void delete(String id) throws DaoException {
		functionDao.delete(id);
	}

	@Override
	public void saveOrUpdate(Function e) throws DaoException {
		functionDao.saveOrUpdate(e);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return functionDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<Function> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return functionDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public void save(List<Function> list) throws DaoException {
		for (Function e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				functionDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				functionDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Function e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String moduleId = (String) pset.getParameter("moduleId");
		if (moduleId != null && moduleId.length() > 0) {
			sql.append("and e.module.id = ? ");
			types.add(Types.VARCHAR);
			args.add(moduleId);
		}

		String parentId = (String) pset.getParameter("parentId");
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

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<Function> getFunctionDao() {
		return functionDao;
	}

	public void setFunctionDao(EntityDao<Function> functionDao) {
		this.functionDao = functionDao;
	}

}
