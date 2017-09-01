package javax.xianfeng.system.portal.service;

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
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.system.Constants;
import javax.xianfeng.system.portal.entity.DefaultPage;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:32
 */
public class DefaultPageService implements IDefaultPageService {

	private EntityDao<DefaultPage> defaultPageDao;

	@Override
	public DefaultPage get(String id) throws DaoException {
		return defaultPageDao.get(id);
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return defaultPageDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<DefaultPage> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return defaultPageDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public void save(List<DefaultPage> list) throws DaoException {
		for (DefaultPage e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE) {
				// 新增
				e.setId(SerialNoApi.newInstance().nextString(Constants.SYS_DEFAULT_PAGE_ID));
				defaultPageDao.save(e);
			} else if (e.getState() == StatefulBean.STATE_UPDATE) {
				// 修改
				defaultPageDao.update(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				defaultPageDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from DefaultPage e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>();
		List<Object> args = new ArrayList<Object>();

		String targetType = (String) pset.getParameter("targetType");
		if (targetType != null && targetType.length() > 0) {
			sql.append("and e.targetType = ? ");
			types.add(Types.VARCHAR);
			args.add(targetType);
		}
		
		String targetId = (String) pset.getParameter("targetId");
		if (targetId != null && targetId.length() > 0) {
			sql.append("and e.targetId = ? ");
			types.add(Types.VARCHAR);
			args.add(targetId);
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

	public EntityDao<DefaultPage> getDefaultPageDao() {
		return defaultPageDao;
	}

	public void setDefaultPageDao(EntityDao<DefaultPage> defaultPageDao) {
		this.defaultPageDao = defaultPageDao;
	}

}
