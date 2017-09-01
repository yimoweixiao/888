package javax.xianfeng.test.platform.organ;

import javax.xianfeng.platform.organ.OrganApi;
import javax.xianfeng.platform.organ.entity.Organ;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-29 上午10:47:47
 */
public class TestOrganApi {

	private OrganApi api = OrganApi.newInstance();
	
	@Test
	public void queryDept () {
		String organId = "10000007";
		Organ dept = api.queryDept(organId);
		System.out.println(dept.getName());
	}
	
	@Test
	public void queryCorp () {
		String organId = "10000007";
		Organ dept = api.queryCorp(organId);
		System.out.println(dept.getName());
	}
	
	@Test
	public void isRootCorp () {
		System.out.println(api.isRootCorp("10000001"));
		System.out.println(api.isRootCorp("20000013"));
	}
}
