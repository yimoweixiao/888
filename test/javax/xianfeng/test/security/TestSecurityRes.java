package javax.xianfeng.test.security;

import javax.xianfeng.security.ISecurityResourceValidator;
import javax.xianfeng.security.StrictSecurityResourceValidator;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-30 下午10:37:34
 */
public class TestSecurityRes {
	
	@Test
	public void exclude () {
		ISecurityResourceValidator validator = new StrictSecurityResourceValidator();
		System.out.println(validator.validate("/jsp/xianfeng/ucenter/login-header.jsp"));
	}
	
	@Test
	public void include () {
		ISecurityResourceValidator validator = new StrictSecurityResourceValidator();
		System.out.println(validator.validate("/jsp/xianfeng/ucenter/index.jsp"));
	}

}
