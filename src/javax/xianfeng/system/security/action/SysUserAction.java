package javax.xianfeng.system.security.action;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.core.util.BeanUtil;
import javax.xianfeng.license.client.LicenseValidateException;
import javax.xianfeng.license.client.LicenseValidator;
import javax.xianfeng.platform.organ.OrganApi;
import javax.xianfeng.platform.organ.entity.Organ;
import javax.xianfeng.platform.organ.entity.OrganType;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.security.SecurityConfig;
import javax.xianfeng.struts.action.BaseAction;
import javax.xianfeng.system.permit.UserApi;
import javax.xianfeng.system.permit.entity.Menu;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.system.security.UserOnlineApi;
import javax.xianfeng.system.security.entity.UserView;
import javax.xianfeng.util.DateUtil;
import javax.xianfeng.web.util.RequestUtil;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-18 下午10:25:16
 */
public class SysUserAction extends BaseAction {

	private UserApi userApi = UserApi.newInstance();

	private OrganApi organApi = OrganApi.newInstance();

	private UserOnlineApi userOnlineApi = UserOnlineApi.newInstance();

	/**
	 * 登录
	 * 
	 * @author Programmer.Wenlong
	 * @since 2014-6-18 下午10:25:51
	 * @return
	 */
	public Serializable doLogin() {
		Map<String, Object> map = new HashMap<String, Object>();

		String userId = this.request.getParameter("userId");
		if (userId == null || userId.length() == 0) {
			map.put("error", "用户名不能为空");
			return resultHandler(map);
		}

		String password = this.request.getParameter("password");
		if (password == null || password.length() == 0) {
			map.put("error", "密码不能为空");
			return resultHandler(map);
		}

		String verifyCode = this.request.getParameter("verifyCode");
		if (verifyCode == null || verifyCode.length() == 0) {
			map.put("error", "验证码不能为空");
			return resultHandler(map);
		}
		String verifyCodeRegx = (String) this.session.getAttribute("verifyCode");
		logger.debug("UserId = " + userId + "\tPwd = " + password + "\tverifyCode = " + verifyCodeRegx);
		if (!verifyCodeRegx.equals(verifyCode)) {
			map.put("error", "验证码错误");
			return resultHandler(map);
		}

		User user = null;
		try {
			user = userApi.queryUser(userId);
			if (user == null) {
				map.put("error", "用户名不存在");
				return resultHandler(map);
			} else if (!user.getPassword().equals(password)) {
				map.put("error", "用户密码错误");
				return resultHandler(map);
			} else if (user.getStatus().equals(UserApi.USER_STATUS_INACTIVE) || user.getStatus().equals(UserApi.USER_STATUS_LOCKED)) {
				map.put("error", "用户未激活或者已经锁定");
				return resultHandler(map);
			} else {
				map.put("success", "用户登录成功");
				return resultHandler(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "网络繁忙，请稍后再试");
			return resultHandler(map);
		} finally {
			if (user != null) {
				loginHandler(user);
			}
		}
	}

	private void loginHandler(User user) {
		UserView userView = new UserView();
		BeanUtil.copyFields(user, userView);
		userView.initExtCfgData();

		// 保存用户登录信息
		userOnlineApi.saveLoginInfo(userView, RequestUtil.getRemoteAddr(request), session.getId());

		session.setAttribute(ApplicationConfig.USER, userView);
		session.setMaxInactiveInterval(SecurityConfig.sessionMaxInterval);

		/*
		 * try { JsonConfig config = new JsonConfig(); config.setExcludes(new
		 * String[] { "module", "function" }); String json =
		 * JSONArray.fromObject(userView, config).toString();
		 * System.out.println(json); Cookie cookie = new
		 * Cookie(ApplicationConfig.USER, json);
		 * cookie.setMaxAge(SecurityConfig.cookieMaxAge);
		 * response.addCookie(cookie); } catch (Exception e2) {
		 * e2.printStackTrace(); }
		 */
	}

	/**
	 * 加载用户菜单
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-4-5 下午01:57:58
	 * @return
	 */
	public Serializable doLoadMenu() {
		List<Menu> list = null;
		try {
			UserView userView = (UserView) session.getAttribute(ApplicationConfig.USER);
			// System.out.println("size:" + userView.getSafeMenuCfgs().size());
			if (userView != null) {
				list = userView.getSafeMenuCfgs();
				for (Menu menu : list) {
					doTreeMenuNodeFilter(menu);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(list);
		result = result.replaceAll("\"state\":-1000", "\"state\":\"closed\"");
		ResponseUtil.responseJson(response, result);
		return null;
	}

	private void doTreeMenuNodeFilter(Menu menu) {
		// 子节点（默认不展开）
		if (!menu.getIsLeaf()) {
			menu.setState(-1000);
		}

		for (Menu child : menu.getChildren()) {
			doTreeMenuNodeFilter(child);
		}
	}

	/**
	 * 注销
	 * 
	 * @author Programmer.Wenlong
	 * @since 2014-6-18 下午10:25:54
	 * @return
	 */
	public Serializable doLogout() {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			UserView userView = (UserView) session.getAttribute(ApplicationConfig.USER);
			userOnlineApi.saveLogoutInfo(userView, RequestUtil.getRemoteAddr(request), session.getId());
			session.removeAttribute(ApplicationConfig.USER);
			session.invalidate();
			map.put("success", "用户注销成功");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "网络繁忙，请稍后再试");
		}
		return resultHandler(map);
	}

	/**
	 * 修改密码
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-4-5 下午01:55:36
	 * @return
	 */
	public Serializable doPwdEdit() {
		Map<String, Object> map = new HashMap<String, Object>();
		String password = this.parameters.getString("password");
		String newpwd = this.parameters.getString("newpwd");
		try {
			UserView userView = (UserView) session.getAttribute(ApplicationConfig.USER);
			User user = userApi.queryUser(userView.getId());
			if (!user.getPassword().equals(password)) {
				map.put("error", "原密码错误");
			} else {
				userApi.saveUserPassword(userView.getId(), newpwd);
				map.put("success", "修改密码成功");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			map.put("error", "网络繁忙，请稍后再试");
		}
		return resultHandler(map);
	}

	/**
	 * 锁定屏幕
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-4-5 下午01:57:09
	 * @return
	 */
	public Serializable doLockScr() {
		Map<String, Object> map = new HashMap<String, Object>();

		// 验证授权文件
		try {
			LicenseValidator.newInstance().validate();
		} catch (LicenseValidateException e) {
			map.put("error", e.getMessage());
			return resultHandler(map);
		}

		try {
			session.setAttribute(ApplicationConfig.LOCK_SCREEN, "true");
			session.setMaxInactiveInterval(SecurityConfig.sessionMaxInterval);
			map.put("success", "锁定屏幕成功");
		} catch (Throwable e) {
			e.printStackTrace();
			map.put("error", "网络繁忙，请稍后再试");
		}
		return resultHandler(map);
	}

	/**
	 * 解锁屏幕<br>
	 * 关键字synchronized解决锁屏解锁之后地址栏图标一直转圈问题
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-4-5 下午01:57:05
	 * @return
	 */
	public synchronized Serializable doUnlockScr() {
		Map<String, Object> map = new HashMap<String, Object>();
		// 验证授权文件
		try {
			LicenseValidator.newInstance().validate();
		} catch (LicenseValidateException e) {
			map.put("error", e.getMessage());
			return resultHandler(map);
		}

		try {
			UserView userView = (UserView) session.getAttribute(ApplicationConfig.USER);
			String password = this.parameters.getString("password");
			if (!userView.getPassword().equals(password)) {
				map.put("error", "密码错误");
			} else {
				session.removeAttribute(ApplicationConfig.LOCK_SCREEN);
				map.put("success", "解锁屏幕成功");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			map.put("error", "网络繁忙，请稍后再试");
		}
		return resultHandler(map);
	}

	/**
	 * 保存菜单风格
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-4-25 下午09:01:02
	 * @return
	 */
	public Serializable doMenuStyle() {
		String menuStyle = this.parameters.getString("menuStyle");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Cookie cookie = new Cookie(ApplicationConfig.MENU_STYLE, menuStyle);
			String host = request.getHeader("host");
//			System.out.println("host=" + host);
			if (host.indexOf(":") > -1) {
				host = host.split(":")[0];
			}
//			System.out.println("host=" + host);
			cookie.setDomain(host);
			
			String ctxPath = request.getContextPath();
//			System.out.println("path=" + ctxPath);
			cookie.setPath(ctxPath);
			
			cookie.setMaxAge(Integer.MAX_VALUE);
			response.addCookie(cookie);
			map.put("success", "菜单风格保存成功");
		} catch (Throwable e) {
			e.printStackTrace();
			map.put("error", "菜单风格保存失败！网络繁忙，请稍后再试");
		}
		return resultHandler(map);
	}

	/**
	 * 注册
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-3-28 下午10:44:10
	 */
	public Serializable doRegist() {
		Map<String, Object> map = new HashMap<String, Object>();

		String verifyCode = this.parameters.getString("verifyCode");
		String verifyCodeRegx = (String) this.session.getAttribute("verifyCode");
		if (!verifyCodeRegx.equals(verifyCode)) {
			map.put("error", "验证码错误");
			return resultHandler(map);
		}

		try {
			String corpName = this.parameters.getString("corpName");
			String deptName = this.parameters.getString("deptName");
			String postId = this.parameters.getString("postId");
			String name = this.parameters.getString("name");

			Organ organ = new Organ();
			organ.setName(name);
			organ.setFullName(corpName + deptName + name);
			organ.setParentId(postId);
			OrganType organType = new OrganType();
			organType.setId(OrganApi.ORGAN_TYPE_EMP);
			organ.setType(organType);
			String organId = organApi.insert(organ);

			String id = this.parameters.getString("id");
			String password = this.parameters.getString("password");

			User user = new User();
			user.setId(id);
			user.setName(name);
			user.setPassword(password);
			user.setType(UserApi.USER_TYPE_USER);
			user.setOrganId(organId);
			userApi.regist(user);

			map.put("success", "用户注册成功");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "网络繁忙，请稍后再试");
		}
		return resultHandler(map);
	}

	private String resultHandler(Map<String, Object> map) {
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

}
