package javax.xianfeng.test.system.portal;

import java.util.List;

import javax.xianfeng.system.portal.PortalApi;
import javax.xianfeng.system.portal.entity.DefaultPage;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-1 下午11:22:45
 */
public class TestPortalApi {
	
	private PortalApi api = PortalApi.newInstance();

	@Test
	public void queryDefaultPage () {
		List<DefaultPage> pages = api.queryDefaultPage("ROLE", "SUPERADMIN");
		for (DefaultPage defaultPage: pages) {
			System.out.println(defaultPage.getName() + ":" + defaultPage.getUrl());
		}
	}
	
}
