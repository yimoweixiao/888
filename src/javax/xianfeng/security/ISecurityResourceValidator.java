package javax.xianfeng.security;

/**
 * 安全沙箱资源校验接口
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午08:59:03
 */
public interface ISecurityResourceValidator {
	/**
	 * 校验resUri标识的资源是安全沙箱中的资源<br>
	 * 可选用的极限算法：<br>
	 * （1）强匹配校验算法：resUri必须和安全沙箱中的资源标识完全匹配<br>
	 * （2）弱匹配校验算法：resUri被包含在安全沙箱中的资源标识中即可<br>
	 * @author Programmer.Wenlong
	 * @since 2012-6-6 下午08:59:29
	 * @param resUri
	 * @return true-是，false-否
	 */
	public boolean validate(String resUri);

}
