package javax.xianfeng.web.listener;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.xianfeng.security.Authorize;
import javax.xianfeng.security.IAuthorizeToken;
import javax.xianfeng.security.AuthorizeTokenHolder;

/**
 * HttpSession中用户授权令牌的监听器
 * @author Programmer.Wenlong
 * @since 2012-4-4 上午10:08:11
 */
public class AuthSessionListener implements HttpSessionAttributeListener {

	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		// 激活用户授权令牌
		if (Authorize.SECURITY_IDENTITY.equals(event.getName())) {
			AuthorizeTokenHolder.activate((IAuthorizeToken) event.getValue());
		}

	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		// 销毁用户授权令牌
		if (Authorize.SECURITY_IDENTITY.equals(event.getName())) {
			AuthorizeTokenHolder.inactivate();
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// 重置用户授权令牌
		if (Authorize.SECURITY_IDENTITY.equals(event.getName())) {
			AuthorizeTokenHolder.activate((IAuthorizeToken) event.getValue());
		}
	}

}
