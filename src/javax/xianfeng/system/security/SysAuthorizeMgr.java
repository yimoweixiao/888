package javax.xianfeng.system.security;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.security.AuthorizeManager;
import javax.xianfeng.security.SecurityConfig;
import javax.xianfeng.system.permit.PermitApi;
import javax.xianfeng.system.security.entity.UserView;

public class SysAuthorizeMgr extends AuthorizeManager {

	@Override
	public boolean isPermit(HttpServletRequest request, String resUri) {
		// 判断登录访问的URI
		List<String> securityIncludeTargets = SecurityConfig.securityIncludeTargets;
		if (securityIncludeTargets.contains(resUri)) {
			return true;
		}

		// 删除开头斜杠
		if (resUri.startsWith("/")) {
			resUri = resUri.substring(1);
		}
		
		// 判断权限控制
		List<String> roleCtrlURIs = PermitApi.newInstance().getRoleCtrlURIs(); // 系统权限控制的URI集合
		if (!roleCtrlURIs.contains(resUri)) {
			return true;
		}

		UserView userView = (UserView) request.getSession().getAttribute(ApplicationConfig.USER);
		List<String> safeURICfgs = userView.getSafeURICfgs(); // 用户有权限访问的URI集合
		if (safeURICfgs.contains(resUri)) {
			return true;
		}

		return false;
	}

}
