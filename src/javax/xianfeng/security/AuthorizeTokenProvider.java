package javax.xianfeng.security;

import javax.servlet.http.HttpServletRequest;

/**
 * 基于HTTP的令牌提供者接口<br>
 * 依赖于来源于HTTP请求中的用户信息
 * @author Programmer.Wenlong
 * @since 2012-4-4 下午11:39:42
 * @see javax.servlet.http.HttpServletRequest
 */
public interface AuthorizeTokenProvider {

	public IAuthorizeToken authenticate(HttpServletRequest request);

}
