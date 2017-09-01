package javax.xianfeng.platform.organ.service;

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
import javax.xianfeng.platform.organ.entity.OrganRule;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 上午11:51:39
 */
public class OrganRuleService implements IOrganRuleService {

	private EntityDao<OrganRule> organRuleDao;

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return organRuleDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<OrganRule> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return organRuleDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public void save(List<OrganRule> list) throws DaoException {
		for (OrganRule e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				organRuleDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				//删除
				organRuleDao.drop(e);
			}
		}
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();
		StringBuffer sql = new StringBuffer();
		sql.append("from OrganRule e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(1);
		List<Object> args = new ArrayList<Object>(1);

		String typeId = (String) pset.getParameter("typeId");
		if (typeId != null && typeId.length() > 0) {
			sql.append("and e.typeId = ? ");
			types.add(Types.VARCHAR);
			args.add(typeId);
		}

		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		template.setSql(sql.toString());
		return template;
	}

	public EntityDao<OrganRule> getOrganRuleDao() {
		return organRuleDao;
	}

	public void setOrganRuleDao(EntityDao<OrganRule> organRuleDao) {
		this.organRuleDao = organRuleDao;
	}

}
