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
import javax.xianfeng.system.permit.entity.Operation;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-5 下午04:00:05
 */
public class OperationService implements IOperationService {

	private EntityDao<Operation> operationDao;

	@Override
	public Operation get(String id) throws DaoException {
		return operationDao.get(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return operationDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<Operation> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return operationDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}
	
	@Override
	public List<Operation> queryNoPage(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return operationDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public void save(List<Operation> list) throws DaoException {
		for (Operation e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				operationDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				operationDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Operation e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String functionId = (String) pset.getParameter("functionId");
		if (functionId != null && functionId.length() > 0) {
			sql.append("and e.function.id = ? ");
			types.add(Types.VARCHAR);
			args.add(functionId);
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

	public EntityDao<Operation> getOperationDao() {
		return operationDao;
	}

	public void setOperationDao(EntityDao<Operation> operationDao) {
		this.operationDao = operationDao;
	}

}
