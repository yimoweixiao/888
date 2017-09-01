package javax.xianfeng.security;

import java.util.List;


/**
 * 采用弱校验算法（以校验资源为校验对象）实现的安全沙箱资源校验类 不完全匹配算法：不在校验资源列表中路径模糊匹配，就校验通过
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午09:11:01
 */
public class RelaxedSecurityResourceValidator implements ISecurityResourceValidator {

	@Override
	public boolean validate(String resUri) {
		List<String> targets = SecurityConfig.securityIncludeTargets;
		for (String target : targets) {
			if (resUri.contains(target) && !isDefaultExcludeURI(resUri) && !isExcludeURI(resUri)) {
				return false;
			}
		}
		return true;
	}

	/**
	 * 判断是否为系统默认的开放资源
	 * @author Programmer.Wenlong
	 * @since 2014-4-19 下午02:23:29
	 * @param uri
	 * @return
	 */
	private boolean isDefaultExcludeURI(String uri) {
		// 无权限跳转页面
		if (SecurityConfig.defaultNoPermitWarningPage.equals(uri)) {
			return true;
		}
		// 登录页面
		if (SecurityConfig.securityLoginPages.containsKey(uri)) {
			return true;
		}
		return false;
	}

	/**
	 * 判断是否为开放资源
	 * @author Programmer.Wenlong
	 * @since 2014-4-19 下午07:52:24
	 * @param uri
	 * @return
	 */
	private boolean isExcludeURI(String uri) {
		return SecurityConfig.securityExcludeTargets.contains(uri);
	}
}
