package javax.xianfeng.test.demo;

import javax.xianfeng.demo.action.DemoAction2;
import javax.xianfeng.spring.ioc.SpringIoc;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-14 下午10:39:53
 */
public class TestDemoEntity1Action {

	@Test
	public void init() {
		DemoAction2 action = (DemoAction2) SpringIoc.find("demo.DemoEntity1Action");
		System.out.println(action.getDemoService());
	}

}
