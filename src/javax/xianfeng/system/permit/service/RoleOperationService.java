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
import javax.xianfeng.system.permit.entity.RoleOperation;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:32
 */
public class RoleOperationService implements IRoleOperationService {

	private EntityDao<RoleOperation> roleOperationDao;

	@Override
	public RoleOperation get(String id) throws DaoException {
		return roleOperationDao.get(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return roleOperationDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<RoleOperation> query(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return roleOperationDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public void save(List<RoleOperation> list) throws DaoException {
		for (RoleOperation e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				roleOperationDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				roleOperationDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from RoleOperation e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String roleId = (String) pset.getParameter("roleId");
		if (roleId != null && roleId.length() > 0) {
			sql.append("and e.roleId = ? ");
			types.add(Types.VARCHAR);
			args.add(roleId);
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<RoleOperation> getRoleOperationDao() {
		return roleOperationDao;
	}

	public void setRoleOperationDao(EntityDao<RoleOperation> roleOperationDao) {
		this.roleOperationDao = roleOperationDao;
	}

}
