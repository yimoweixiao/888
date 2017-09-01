package javax.xianfeng.web.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * 字符编码Filter<br>
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午05:00:36
 */
public class HttpEncodingFilter implements Filter {

	// 字符编码
	private static String ENCODING = "UTF-8"; // 默认为UTF-8

	@Override
	public void init(FilterConfig config) throws ServletException {
		// 获取初始化参数
		String str = config.getInitParameter("encoding");
		if (str != null && str.length() > 0) {
			ENCODING = str;
		}
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;

		// 设置中文编码
		try {
			req.setCharacterEncoding(ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		response.setCharacterEncoding(ENCODING);

		// 过滤请求和响应
		chain.doFilter(request, response);

	}

	@Override
	public void destroy() {

	}

}
