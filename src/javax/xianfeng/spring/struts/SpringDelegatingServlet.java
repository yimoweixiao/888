package javax.xianfeng.spring.struts;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 * 类似org.springframework.web.struts.DelegatingRequestProcessor的一个委托实现
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午01:56:08
 */
public class SpringDelegatingServlet extends GenericServlet {
	private static final long serialVersionUID = -8403730122808846429L;

	private String targetSpringBeanName;

	private Servlet proxyServlet;

	/**
	 * 初始化
	 */
	@Override
	public void init() throws ServletException {
		this.targetSpringBeanName = getServletName();
		getServletBean();
		proxyServlet.init(getServletConfig());
	}

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		proxyServlet.service(request, response);
	}

	/**
	 * 获取Bean
	 */
	private void getServletBean() {
		WebApplicationContext webAppCtx = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
		this.proxyServlet = (Servlet) webAppCtx.getBean(targetSpringBeanName);
	}

}
