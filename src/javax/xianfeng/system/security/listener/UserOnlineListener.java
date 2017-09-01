package javax.xianfeng.system.security.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.system.security.entity.UserView;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-29 上午10:35:16
 */
public class UserOnlineListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		System.out.println("debug: " + session.getId());
		
		UserView userView = (UserView) session.getAttribute(ApplicationConfig.USER);
		if (userView != null) {
			System.out.println("login: " + userView.getName());
		}
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		HttpSession session = event.getSession();
		System.out.println("debug: " + session.getId());
		
		UserView userView = (UserView) session.getAttribute(ApplicationConfig.USER);
		if (userView != null) {
			System.out.println("logout: " + userView.getName());
		}
	}

}
