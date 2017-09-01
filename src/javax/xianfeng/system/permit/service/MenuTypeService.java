package javax.xianfeng.system.permit.service;

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
import javax.xianfeng.system.permit.entity.MenuType;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:32
 */
public class MenuTypeService implements IMenuTypeService {

	private EntityDao<MenuType> menuTypeDao;

	@Override
	public MenuType get(String id) throws DaoException {
		return menuTypeDao.get(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return menuTypeDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<MenuType> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return menuTypeDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public void save(List<MenuType> list) throws DaoException {
		for (MenuType e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				e.setEditTime(new Date());
				menuTypeDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				menuTypeDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from MenuType e where 1=1 ");
		sql.append("and e.id != 'SYSTEM' "); //查询非预置菜单

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and e.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}

		String status = (String) pset.getParameter("status");
		if (status != null && status.length() > 0) {
			args.add(Boolean.valueOf(status));
		} else {
			args.add(Boolean.valueOf(true));
		}
		sql.append("and e.status = ? ");
		types.add(Types.BOOLEAN);

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<MenuType> getMenuTypeDao() {
		return menuTypeDao;
	}

	public void setMenuTypeDao(EntityDao<MenuType> menuTypeDao) {
		this.menuTypeDao = menuTypeDao;
	}

}
