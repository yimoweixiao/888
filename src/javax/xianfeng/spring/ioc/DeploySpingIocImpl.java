package javax.xianfeng.spring.ioc;

import javax.servlet.ServletContext;
import javax.xianfeng.web.WebApplication;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-13 下午06:31:13
 */
public class DeploySpingIocImpl extends AbstractSpringIoc {

	private static final Log logger = LogFactory.getLog(DeploySpingIocImpl.class);

	private static AbstractSpringIoc instance;

	private DeploySpingIocImpl() {
		super();
	}

	/**
	 * 单例方法
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午06:32:29
	 * @return
	 */
	public static AbstractSpringIoc newInstance() {
		if (instance == null) {
			instance = new DeploySpingIocImpl();
		}
		return instance;
	}

	@Override
	public void init() {
		ServletContext application = WebApplication.currentInstance().getApplication();
		if (application == null) {
			logger.error("WebApplication is not be activated");
			return;
		}
		applicationContext = WebApplicationContextUtils.getRequiredWebApplicationContext(application);

	}

}
