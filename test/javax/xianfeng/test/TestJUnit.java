package javax.xianfeng.test;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-8 上午11:37:39
 */
public class TestJUnit {

	private final transient Log logger = LogFactory.getLog(this.getClass());

	@Before
	public void init() {
		logger.info("init...");
	}
	@Test
	public void demo() {
		System.out.println("Hello");
	}

	@After
	public void destory () {
		logger.info("destory...");
	}
}
