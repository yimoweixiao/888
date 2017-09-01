package javax.xianfeng.system.security;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.xianfeng.core.beans.LoggedBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.system.security.entity.UserOnline;
import javax.xianfeng.system.security.service.IUserOnlineService;


/**
 * @author Programmer.Wenlong
 * @since 2014-7-2 下午09:52:38
 */
public final class UserOnlineApi extends LoggedBean {

	private IUserOnlineService userOnlineervice = (IUserOnlineService) SpringIoc.find("system.UserOnlineService");
	
	private UserOnlineApi () {
		super();
	}
	
	/**
	 * 保存登录信息
	 * @author Programmer.Wenlong
	 * @since 2014-7-2 下午10:17:12
	 * @param user
	 * @param loginIp
	 * @param sessionId
	 */
	public void saveLoginInfo(User user, String loginIp, String sessionId) {
		UserOnline userOnline = new UserOnline(user, loginIp, sessionId);
		try {
			userOnlineervice.saveOrUpdate(userOnline);
		} catch (DaoException e) {
			logger.error(e);
		}
	}
	
	/**
	 * 保存注销信息
	 * @author Programmer.Wenlong
	 * @since 2014-7-2 下午10:26:54
	 * @param user
	 * @param loginIp
	 * @param sessionId
	 */
	public void saveLogoutInfo(User user, String loginIp, String sessionId) {
		if (user == null) {
			return;
		}
		
		List<UserOnline> list = null;
		try {
			list = userOnlineervice.queryByUserId(user.getId(), true);
		} catch (DaoException e) {
			logger.error(e);
		}
		
		UserOnline userOnline = null;
		
		if (list != null) {
			for (UserOnline e: list) {
				if (e.getLoginIp().equals(loginIp) && e.getSessionId().equals(sessionId)) {
					userOnline = e;
					break;
				}
			}
		} else {
			userOnline = new UserOnline(user, loginIp, sessionId);
			
			Calendar history = Calendar.getInstance();
			history.set(1970, 01, 01);
			userOnline.setLoginTime(history.getTime());
		}
		
		userOnline.setLogoutTime(new Date());
		try {
			userOnlineervice.saveOrUpdate(userOnline);
		} catch (Exception e) {
			logger.error(e);
		}
	}
	
	public static UserOnlineApi newInstance() {
		return UserOnlineApiHolder.INSTANCE;
	}

	private static class UserOnlineApiHolder {
		private static final UserOnlineApi INSTANCE = new UserOnlineApi();
	}
	
}
