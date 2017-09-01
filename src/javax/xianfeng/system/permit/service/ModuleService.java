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
import javax.xianfeng.system.permit.entity.Module;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-5 下午04:00:05
 */
public class ModuleService implements IModuleService {

	private EntityDao<Module> moduleDao;

	@Override
	public Module get(String id) throws DaoException {
		return moduleDao.get(id);
	}

	@Override
	public void saveOrUpdate(Module e) throws DaoException {
		moduleDao.saveOrUpdate(e);
	}

	@Override
	public void delete(String id) throws DaoException {
		moduleDao.delete(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return moduleDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<Module> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return moduleDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public void save(List<Module> list) throws DaoException {
		for (Module e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				moduleDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				moduleDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Module e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>();
		List<Object> args = new ArrayList<Object>();
		
		String id = (String) pset.getParameter("id");
		if (id != null && id.length() > 0) {
			sql.append("and e.id = ? ");
			types.add(Types.VARCHAR);
			args.add(id);
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

	public EntityDao<Module> getModuleDao() {
		return moduleDao;
	}

	public void setModuleDao(EntityDao<Module> moduleDao) {
		this.moduleDao = moduleDao;
	}

}
