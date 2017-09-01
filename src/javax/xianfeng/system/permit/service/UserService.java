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
import javax.xianfeng.system.permit.entity.User;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:19:56
 */
public class UserService implements IUserService {

	private EntityDao<User> userDao;

	@Override
	public User get(String id) throws DaoException {
		return userDao.get(id);
	}

	@Override
	public void delete(String id) throws DaoException {
		userDao.delete(id);
	}

	@Override
	public void saveOrUpdate(User e) throws DaoException {
		userDao.saveOrUpdate(e);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return userDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<User> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return userDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public void save(List<User> list) throws DaoException {
		for (User e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				e.setEditTime(new Date());
				userDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				userDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from User e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String type = (String) pset.getParameter("type");
		if (type != null && type.length() > 0) {
			sql.append("and e.type = ? ");
			types.add(Types.VARCHAR);
			args.add(type);
		}

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

		String mobile = (String) pset.getParameter("mobile");
		if (mobile != null && mobile.length() > 0) {
			sql.append("and e.mobile like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + mobile + "%");
		}

		String email = (String) pset.getParameter("email");
		if (email != null && email.length() > 0) {
			sql.append("and e.email like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + email + "%");
		}

		String status = (String) pset.getParameter("status");
		if (status != null && status.length() > 0) {
			sql.append("and e.status = ? ");
			types.add(Types.VARCHAR);
			args.add(status);
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<User> getUserDao() {
		return userDao;
	}

	public void setUserDao(EntityDao<User> userDao) {
		this.userDao = userDao;
	}

}
