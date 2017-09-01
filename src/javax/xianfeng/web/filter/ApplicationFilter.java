package javax.xianfeng.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.xianfeng.web.WebApplication;

/**
 * Application的Filter类<br>
 * @author Programmer.Wenlong
 * @since 2012-1-9 下午11:34:24
 * @see javax.xianfeng.WebApplication.Application
 */
public class ApplicationFilter implements Filter {
	private ServletContext application = null;

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.application = config.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 关联ApplicationContext
		WebApplication.activate(this.application, request, response);
		// 执行过滤器
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		WebApplication.inactivate();
	}

}
