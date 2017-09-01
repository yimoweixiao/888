package javax.xianfeng.system.permit;

import java.util.Date;
import java.util.List;

import javax.xianfeng.core.beans.LoggedBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Menu;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.system.permit.service.IUserMenuService;
import javax.xianfeng.system.permit.service.IUserRoleService;
import javax.xianfeng.system.permit.service.IUserService;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-28 下午11:05:31
 */
public final class UserApi extends LoggedBean {
	// 用户类型
	public static final String USER_TYPE_USER = "USER"; //普通用户
	
	public static final String USER_TYPE_ADMIN = "ADMIN"; //管理员
	
	// 用户状态
	public static final String USER_TATUS_ACTIVE = "1"; //激活
	
	public static final String USER_STATUS_LOCKED = "0"; //锁定
	
	public static final String USER_STATUS_INACTIVE = "-1"; //未激活
	
	private IUserService userService = (IUserService) SpringIoc.find("system.UserService");

	private IUserRoleService userRoleService = (IUserRoleService) SpringIoc.find("system.UserRoleService");

	private IUserMenuService userMenuService = (IUserMenuService) SpringIoc.find("system.UserMenuService");
	
	private UserApi() {
		super();
	}
	
	/**
	 * 查询用户信息
	 * @author Programmer.Wenlong
	 * @since 2014-6-22 下午04:54:55
	 * @param userId
	 * @return
	 */
	public User queryUser(String userId) {
		try {
			return userService.get(userId);
		} catch (DaoException e) {
			logger.error(e);
			return null;
		}
	}
	
	/**
	 * 查询用户角色
	 * @author Programmer.Wenlong
	 * @since 2014-6-22 下午04:55:02
	 * @param userId
	 * @return
	 */
	public List<Role> queryUserRoles(String userId) {
		try {
			return userRoleService.queryDelegatedRoles(userId);
		} catch (DaoException e) {
			logger.error(e);
			return null;
		}
	}
	
	/**
	 * 查询用户菜单
	 * @author Programmer.Wenlong
	 * @since 2014-6-22 下午04:55:10
	 * @param userId
	 * @param safeURICfgs
	 * @return
	 */
	public List<Menu> queryUserMenus(String userId, List<String> safeURICfgs) {
		try {
			return userMenuService.queryUserMenus(userId, safeURICfgs);
		} catch (DaoException e) {
			logger.error(e);
			return null;
		}
	}
	
	public void regist(User user) {
		Date now = new Date();
		user.setRegistTime(now);
		user.setEditTime(now);
		user.setStatus(USER_STATUS_INACTIVE); //默认未激活
		
		//TODO 密码加密
		
		try {
			userService.saveOrUpdate(user);
		} catch (DaoException e) {
			e.printStackTrace();
			throw new RuntimeException("注册失败", e);
		}
	}
	
	public void saveUserPassword (String userId, String password) {
		User user = this.queryUser(userId);
		user.setEditTime(new Date());
		//TODO 密码加密
		user.setPassword(password);
		try {
			userService.saveOrUpdate(user);
		} catch (DaoException e) {
			e.printStackTrace();
			throw new RuntimeException("修改密码失败", e);
		}
	}

	public static UserApi newInstance() {
		return UserApiHolder.INSTANCE;
	}

	private static class UserApiHolder {
		private static final UserApi INSTANCE = new UserApi();
	}
	
}
