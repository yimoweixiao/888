package javax.xianfeng.test.security;

import javax.xianfeng.security.SecurityConfig;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-6 下午01:20:52
 */
public class TestSecurityConfig {

	@Test
	public void licenseUri () {
		System.out.println(SecurityConfig.defaultNotLicencePage);
	}
	
}
