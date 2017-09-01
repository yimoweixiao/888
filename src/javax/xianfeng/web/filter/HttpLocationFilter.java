package javax.xianfeng.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Http请求URL过滤器
 * @author Programmer.Wenlong
 * @since 2012-3-25 下午10:23:00
 */
public class HttpLocationFilter implements Filter {

	private static final Log logger = LogFactory.getLog(HttpLocationFilter.class);

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		logger.info("URL - " + req.getRequestURI());

		chain.doFilter(request, response);

	}

	@Override
	public void init(FilterConfig config) throws ServletException {

	}

}
