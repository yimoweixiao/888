package javax.xianfeng.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 重定向的Servlet<br>
 * @author Programmer.Wenlong
 * @since 2011-12-7 下午05:27:54
 */
public class HttpRedirectServlet extends HttpServlet {

	private static final long serialVersionUID = -8727580608840318666L;

	private transient Log logger = LogFactory.getLog(getClass());

	@Override
	public void init() throws ServletException {
		super.init();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String redirect = request.getParameter("redirect");
		try {
			response.sendRedirect(redirect);
		} catch (IOException e) {
			logger.error(e.getMessage(), e.getCause());
			// 重定向至默认的错误页面
			response.sendRedirect("");
		}

	}

	@Override
	public void destroy() {
		super.destroy();
	}

}
