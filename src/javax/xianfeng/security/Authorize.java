package javax.xianfeng.security;

import java.util.List;

/**
 * 权限管理授权类
 * @author Programmer.Wenlong
 * @since 2012-4-4 上午10:14:30
 */
public class Authorize {

	public static final String SECURITY_IDENTITY = "LoginUser"; // 系统级安全身份标识名称（System Security Identity）

	private List<Object> accreditations; // 可访问的资源授权集合

	private IAuthorizeToken token; // 授权令牌

	private Authorize() {
		super();
	}

	public List<Object> getAccreditations() {
		return accreditations;
	}

	public void setAccreditations(List<Object> accreditations) {
		this.accreditations = accreditations;
	}

	public IAuthorizeToken getToken() {
		return token;
	}

	public void setToken(IAuthorizeToken token) {
		this.token = token;
	}

}
