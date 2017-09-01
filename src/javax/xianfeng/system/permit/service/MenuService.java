package javax.xianfeng.system.permit.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.system.permit.entity.Menu;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:32
 */
public class MenuService implements IMenuService {

	private EntityDao<Menu> menuDao;

	@Override
	public Menu get(String id) throws DaoException {
		return menuDao.get(id);
	}

	@Override
	public void saveOrUpdate(Menu e) throws DaoException {
		menuDao.saveOrUpdate(e);
	}

	@Override
	public void delete(String id) throws DaoException {
		menuDao.delete(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return menuDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<Menu> query(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return menuDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public void save(List<Menu> list) throws DaoException {
		for (Menu e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				menuDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				menuDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Menu e where 1=1 ");

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

		sql.append("and e.status = ? ");
		types.add(Types.BOOLEAN);
		String status = (String) pset.getParameter("status");
		if (status != null && status.length() > 0) {
			args.add(Boolean.valueOf(status));
		} else {
			args.add(Boolean.valueOf(true));
		}
		
		sql.append("order by e.seq ");

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<Menu> getMenuDao() {
		return menuDao;
	}

	public void setMenuDao(EntityDao<Menu> menuDao) {
		this.menuDao = menuDao;
	}

}
