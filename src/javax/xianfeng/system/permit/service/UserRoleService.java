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
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.entity.UserRole;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-15 下午04:57:41
 */
public class UserRoleService implements IUserRoleService {
	
	private EntityDao<UserRole> userRoleDao;
	
	private EntityDao<Role> roleDao;
	
	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return userRoleDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}
	
	@Override
	public List<UserRole> query(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return userRoleDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}
	
	/* 
	 * @see javax.xianfeng.system.service.IUserRoleService#query(javax.xianfeng.core.model.ParameterSet)
	 */
	@Override
	public List<Role> queryDelegatedRoles(String userId) throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("userId", userId);
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		List<UserRole> list = userRoleDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
		if (list != null && list.size() > 0) {
			List<String> roleIdList = new ArrayList<String>();
			for (UserRole userRole: list) {
				roleIdList.add(userRole.getRoleId());
			}
			return queryRoles(true, roleIdList.toArray(new String[0]));
		} else {
			return null;
		}
	}

	/* 
	 * @see javax.xianfeng.system.service.IUserRoleService#queryInValidRoles()
	 */
	@Override
	public List<Role> queryUnDelegatedRoles(String userId) throws DaoException {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("userId", userId);
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		List<UserRole> list = userRoleDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
		String[] roleIds = null;
		if (list != null && list.size() > 0) {
			List<String> roleIdList = new ArrayList<String>();
			for (UserRole userRole: list) {
				roleIdList.add(userRole.getRoleId());
			}
			roleIds = roleIdList.toArray(new String[0]);
		}
		return queryRoles(false, roleIds);
	}
	
	private List<Role> queryRoles(boolean isDelegated, String[] ids) throws DaoException {
		StringBuffer sql = new StringBuffer();
		sql.append("from Role e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>();
		List<Object> args = new ArrayList<Object>();

		if (ids != null && ids.length > 0) {
			sql.append("and (");
			for (int i = 0; i < ids.length; i++) {
				if (isDelegated) {
					sql.append("e.id = ? ");
				} else {
					sql.append("e.id != ? ");
				}
				
				if (i < ids.length -1) {
					if (isDelegated) {
						sql.append("or ");
					} else {
						sql.append("and ");
					}
				}
				types.add(Types.VARCHAR);
				args.add(ids[i]);
			}
			sql.append(")");
		} else {
			//没有指定角色id，只能查询没有委派的角色
			if (isDelegated) {
				sql.append("and 1 = 0 ");
			}
		}

		sql.append("order by e.name asc ");
		return roleDao.query(sql.toString(), DaoFormatUtil.formatTypes(types), args.toArray());
	}
	
	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from UserRole e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String userId = (String) pset.getParameter("userId");
		if (userId != null && userId.length() > 0) {
			sql.append("and e.userId = ? ");
			types.add(Types.VARCHAR);
			args.add(userId);
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	/* 
	 * @see javax.xianfeng.system.service.IUserRoleService#save(java.util.List)
	 */
	@Override
	public void save(List<UserRole> list) throws DaoException {
		for (UserRole e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				userRoleDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				userRoleDao.drop(e);
			}
		}
	}

	public EntityDao<UserRole> getUserRoleDao() {
		return userRoleDao;
	}

	public void setUserRoleDao(EntityDao<UserRole> userRoleDao) {
		this.userRoleDao = userRoleDao;
	}

	public EntityDao<Role> getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(EntityDao<Role> roleDao) {
		this.roleDao = roleDao;
	}

}
