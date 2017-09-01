package javax.xianfeng.system.security.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.system.security.entity.UserOnline;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-30 下午09:46:28
 */
public class UserOnlineService implements IUserOnlineService {

	private EntityDao<UserOnline> userOnlineDao;

	@Override
	public UserOnline get(String id) throws DaoException {
		return userOnlineDao.get(id);
	}

	public List<UserOnline> queryByUserId(String userId, Boolean isOnline) throws DaoException {
		StringBuffer sql = new StringBuffer();
		sql.append("from UserOnline e ");
		sql.append("where e.user.id = ? ");
		if (isOnline != null && isOnline) {
			// 查询未注销的登录记录
			sql.append("and e.logoutTime is null ");
		} else if (isOnline != null && !isOnline) {
			// 查询已经注销的登录记录
			sql.append("and e.logoutTime is not null ");
		} else {
			// 查询用户所有登录记录
		}
		return userOnlineDao.query(sql.toString(), new int[] { Types.VARCHAR }, new Object[] { userId });
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return userOnlineDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<UserOnline> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return userOnlineDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from UserOnline e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String userId = (String) pset.getParameter("userId");
		if (userId != null && userId.length() > 0) {
			sql.append("and e.user.id like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + userId + "%");
		}

		String isHistory = (String) pset.getParameter("isHistory");
		if (isHistory != null && isHistory.length() > 0) {
			sql.append("and e.logoutTime is not null ");
		} else {
			sql.append("and e.logoutTime is null ");
		}

		sql.append("order by e.loginTime desc ");

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	@Override
	public void saveOrUpdate(UserOnline e) throws DaoException {
		userOnlineDao.saveOrUpdate(e);
	}

	@Override
	public void update(UserOnline e) throws DaoException {
		userOnlineDao.update(e);
	}

	public EntityDao<UserOnline> getUserOnlineDao() {
		return userOnlineDao;
	}

	public void setUserOnlineDao(EntityDao<UserOnline> userOnlineDao) {
		this.userOnlineDao = userOnlineDao;
	}

}
