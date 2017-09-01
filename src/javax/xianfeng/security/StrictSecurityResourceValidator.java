package javax.xianfeng.security;

import java.util.List;


/**
 * 采用强校验算法（以开放资源为校验对象）实现的安全沙箱资源校验类 完全匹配算法：在开放资源列表中完全匹配，才校验通过
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午09:22:38
 */
public class StrictSecurityResourceValidator implements ISecurityResourceValidator {

	@Override
	public boolean validate(String resUri) {
		List<String> targets = SecurityConfig.securityExcludeTargets;
		for (String target : targets) {
			if (target.equals(resUri)) {
				return true;
			}
		}
		return false;
	}

}
