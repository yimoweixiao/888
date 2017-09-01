package javax.xianfeng.hibernate.util;

import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.jdbc.JdbcKeyWord;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 * Hibernate条件查询Criteria的工具类
 * @author Programmer.Wenlong
 * @since 2012-5-1 上午12:31:35
 */
public final class HibernateCriteriaUtil {

	private static final Log logger = LogFactory.getLog(HibernateCriteriaUtil.class);

	/**
	 * Criteria关联ParameterSet查询条件
	 * @author Programmer.Wenlong
	 * @since 2012-5-1 上午12:32:49
	 * @param criteria
	 * @param parameterSet
	 * @return
	 */
	public static Criteria onParameter(Criteria criteria, ParameterSet parameterSet) {
		// 排序条件
		DataPager pager = parameterSet.getPager();
		String sortField = pager.getSortField();
		String sortDir = pager.getSortDir();
		logger.debug("sortField=" + sortField + "\tsortDir=" + sortDir);
		if (sortField != null) {
			criteria.addOrder(JdbcKeyWord.DESC.equals(sortDir) ? Order.desc(sortField) : Order.asc(sortField)); // 默认升序
		}

		// 分页条件
		criteria.setFirstResult(pager.getPageStart());
		int pageLimit = pager.getPageLimit();
		if (pageLimit > -1) {
			criteria.setMaxResults(pageLimit);
		}
		logger.debug("start=" + pager.getPageStart() + "\tlimit=" + pageLimit);

		// 字段匹配条件
		int _index = -1;
		String _keyword = null;
		String _paramName = null;
		Object _paramValue = null;
		for (String condition : parameterSet.keys()) {
			if ((_index = condition.indexOf("@")) > 0) {
				_paramName = condition.substring(0, _index);
				_keyword = condition.substring(_index + 1);
			} else {
				_paramName = condition;
				_keyword = JdbcKeyWord.EQUAL; // 默认为“@=”
			}
			_paramValue = parameterSet.getParameter(condition);

			logger.debug(_paramName + " " + _keyword + " " + _paramValue);

			if (JdbcKeyWord.EQUAL.equals(_keyword)) {
				// 关键字：=
				criteria.add(Restrictions.eq(_paramName, _paramValue));
			} else if (JdbcKeyWord.NOT_EQUAL.equals(_keyword)) {
				// 关键字：!=
				criteria.add(Restrictions.ne(_paramName, _paramValue));
			} else if (JdbcKeyWord.LIKE.equals(_keyword)) {
				// 关键字：like
				criteria.add(Restrictions.like(_paramName, _paramValue));
			} else if (JdbcKeyWord.LESS.equals(_keyword)) {
				// 关键字：<
				criteria.add(Restrictions.lt(_paramName, _paramValue));
			} else if (JdbcKeyWord.LESS_EQUAL.equals(_keyword)) {
				// 关键字：<=
				criteria.add(Restrictions.le(_paramName, _paramValue));
			} else if (JdbcKeyWord.GREATER.equals(_keyword)) {
				// 关键字：>
				criteria.add(Restrictions.gt(_paramName, _paramValue));
			} else if (JdbcKeyWord.GREATER_EQUAL.equals(_keyword)) {
				// 关键字：>=
				criteria.add(Restrictions.ge(_paramName, _paramValue));
			} else if (JdbcKeyWord.IS_NULL.equals(_keyword)) {
				// 关键字：is null
				criteria.add(Restrictions.isNull(_paramName));
			} else if (JdbcKeyWord.IS_NOT_NULL.equals(_keyword)) {
				// 关键字：is not null
				criteria.add(Restrictions.isNotNull(_paramName));
			}
		}

		return criteria;
	}

	private HibernateCriteriaUtil() {
		super();
	}

}
