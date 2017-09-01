package javax.xianfeng.security;

import javax.servlet.http.HttpServletRequest;


/**
 * 授权提供接口默认实现类
 * @author Programmer.Wenlong
 * @since 2012-4-3 下午12:36:55
 */
public class AuthorizeManager implements IAuthorizeManager {

	protected IAuthorizeToken token;

	@Override
	public boolean isPermit(HttpServletRequest request, String resUri) {
		// 默认不需要进行权限校验
		return true;
	}

	@Override
	public boolean examine(IAuthorizeToken token) {
		return this.token.getCredential().equals(token.getCredential()) && this.token.getPrincipal().equals(token.getPrincipal());
	}

	@Override
	public void inactive() {
		this.token = null;
	}

	@Override
	public void active(IAuthorizeToken token) {
		this.token = token;
	}

}
