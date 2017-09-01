package javax.xianfeng.security;

/**
 * 令牌管理类
 * @author Programmer.Wenlong
 * @since 2012-4-4 上午12:09:48
 */
public class AuthorizeTokenHolder {

	private static final ThreadLocal<IAuthorizeToken> threadLocal = new ThreadLocal<IAuthorizeToken>();

	/**
	 * 激活
	 * @author Programmer.Wenlong
	 * @since 2012-4-4 上午12:16:12
	 * @param token
	 */
	public static void activate(IAuthorizeToken token) {
		threadLocal.set(token);
	}

	/**
	 * 销毁
	 * @author Programmer.Wenlong
	 * @since 2012-4-4 上午12:16:21
	 */
	public static void inactivate() {
		IAuthorizeToken token = threadLocal.get();
		if (token != null) {
			token = null;
		}
		threadLocal.set(null);
	}
}
