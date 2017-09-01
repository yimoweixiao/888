package javax.xianfeng.web.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xianfeng.ApplicationConfig;

/**
 * 访问权限控制Filter
 * @author Programmer.Wenlong
 * @since 2013-11-30 下午09:14:28
 */
public class DefaultAccessCtrlFilter extends AuthorizeFilter {

	@Override
	protected boolean doLoginFilter(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute(ApplicationConfig.USER);
		if (obj != null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	protected void doLicenseFilter(String uri) {
		// TODO Auto-generated method stub
		
	}

}