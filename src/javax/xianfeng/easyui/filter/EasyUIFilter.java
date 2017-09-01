package javax.xianfeng.easyui.filter;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xianfeng.web.HttpServletRequestWrapper;

/**
 * JEasyUI过滤器类<br/>
 * 说明：将JEasyUI默认参数转换成平台的参数，比如分页参数等
 * 
 * @author Programmer.Wenlong
 * @since 2015-3-1 下午01:07:19
 */
public class EasyUIFilter implements Filter {

	public void init(FilterConfig arg0) throws ServletException {

	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		String pageStart = request.getParameter("page"); // 当前页码
		String pageLimit = request.getParameter("rows"); // 分页大小
		String sortField = request.getParameter("sort"); // 排序字段
		String sortDir = request.getParameter("order"); // 排序

		HashMap map = new HashMap(request.getParameterMap());
		// 分页参数
		map.remove("page");
		if (pageStart != null) {
			map.put("thisPage", pageStart);
		}

		map.remove("rows");
		if (pageLimit != null) {
			map.put("pageSize", pageLimit);
		}

		// 排序参数
		map.remove("sort");
		if (sortField != null) {
			map.put("sortField", sortField);
		}

		map.remove("order");
		if (sortDir != null) {
			map.put("sortDir", sortDir);
		}
		HttpServletRequestWrapper requestWrapper = new HttpServletRequestWrapper(request, map);
		request = requestWrapper;

		// 过滤请求和响应
		chain.doFilter(request, response);
	}

	public void destroy() {

	}

}
