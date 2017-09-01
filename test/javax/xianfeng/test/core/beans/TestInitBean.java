package javax.xianfeng.test.core.beans;

import javax.xianfeng.core.beans.InitBean;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-25 下午08:35:03
 */
public class TestInitBean {

	@Test
	public void init() {
		TestInitBeanT e = new TestInitBeanT();
		e.init();
	}
}

class TestInitBeanT extends InitBean {
	protected Log logger = LogFactory.getLog(this.getClass()); // commons日志对象

	@Override
	public void init() {
		logger.info("Initializing......");

	}

}
