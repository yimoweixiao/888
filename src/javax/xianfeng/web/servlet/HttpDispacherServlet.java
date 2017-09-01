package javax.xianfeng.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 转发的Servlet<br>
 * @author Programmer.Wenlong
 * @since 2011-12-7 下午05:27:38
 */
public class HttpDispacherServlet extends HttpServlet {

	private static final long serialVersionUID = 5444682850542113550L;

	private transient Log logger = LogFactory.getLog(getClass());

	@Override
	public void init() throws ServletException {
		super.init();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String dispatch = request.getParameter("dispatch");
		RequestDispatcher dispatcher = request.getRequestDispatcher(dispatch);
		try {
			dispatcher.forward(request, response);
		} catch (ServletException e) {
			logger.error(e.getMessage(), e.getCause());
			// 转发至默认的错误页面
		}

	}

	@Override
	public void destroy() {
		super.destroy();
	}
}
