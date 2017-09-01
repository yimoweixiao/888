package javax.xianfeng.security;

/**
 * 权限管理用户令牌接口类
 * @athor Programmer.Wenlong
 * @since 2011-12-1 下午04:44:16
 */
public interface IAuthorizeToken {

	/**
	 * 获取标识
	 * @author Programmer.Wenlong
	 * @since 2012-4-3 下午11:53:12
	 * @return
	 */
	public String getPrincipal();

	/**
	 * 获取凭证
	 * @author Programmer.Wenlong
	 * @since 2012-4-3 下午11:53:23
	 * @return
	 */
	public String getCredential();

}
