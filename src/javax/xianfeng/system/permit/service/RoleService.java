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
import javax.xianfeng.system.permit.entity.Role;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:32
 */
public class RoleService implements IRoleService {

	private EntityDao<Role> roleDao;

	@Override
	public Role get(String id) throws DaoException {
		return roleDao.get(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return roleDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<Role> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return roleDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public void save(List<Role> list) throws DaoException {
		for (Role e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				roleDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				roleDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Role e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String id = (String) pset.getParameter("id");
		if (id != null && id.length() > 0) {
			sql.append("and e.id like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + id + "%");
		}

		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and e.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}
		
		String sortFiled = (String) pset.getParameter("sortFiled");
		String sortDir = (String) pset.getParameter("sortDir");
		if (sortFiled != null && sortFiled.length() > 0) {
			sql.append("order by ").append(sortFiled);
			if (sortDir != null) {
				sql.append(" ").append(sortDir);
			}
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<Role> getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(EntityDao<Role> roleDao) {
		this.roleDao = roleDao;
	}

}
