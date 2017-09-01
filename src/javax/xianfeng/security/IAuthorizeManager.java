package javax.xianfeng.security;

import javax.servlet.http.HttpServletRequest;

/**
 * 权限管理接口
 * @author Programmer.Wenlong
 * @since 2011-12-1 下午08:26:38
 */
public interface IAuthorizeManager {
	/**
	 * 注册令牌，使令牌生效
	 * @param token 授权的令牌
	 * @author Programmer.Wenlong
	 * @since 2012-4-3 下午12:50:28
	 */
	public void active(IAuthorizeToken token);

	/**
	 * 校验令牌
	 * @author Programmer.Wenlong
	 * @since 2012-4-3 下午12:42:11
	 */
	public boolean examine(IAuthorizeToken token);

	/**
	 * 校验是否有权限访问
	 * @author Programmer.Wenlong
	 * @since 2012-4-3 下午12:55:28
	 * @param resUri 校验的资源标识
	 * @return
	 */
	public boolean isPermit(HttpServletRequest request, String resUri);

	/**
	 * 销毁令牌，使令牌无效
	 * @author Programmer.Wenlong
	 * @since 2012-4-3 下午12:49:57
	 */
	public void inactive();

}
