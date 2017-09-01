package javax.xianfeng.web.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 静态方法重新加载Servlet类 访问地址：servlet/reloadc.exe?class=javax.xianfeng.ApplicationConfig&method=reload 其中，&method=reload为可选参数
 * @author Programmer.Wenlong
 * @since 2013-8-7 下午07:32:44
 */
public class HttpReloadClassServlet extends HttpServlet {

	private static final long serialVersionUID = -5903862482401146192L;

	private static final Log log4j = LogFactory.getLog(HttpReloadClassServlet.class);

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String className = request.getParameter("class"); // 类名
		String methodName = request.getParameter("method"); // 方法名

		if (log4j.isInfoEnabled()) {
			log4j.info("调用的静态方法： " + methodName + "@" + className);
		}

		if (methodName == null || methodName.equals("")) {
			methodName = "reload"; // 默认调用的加载配置信息的方法
		}

		try {
			Class<?> clazz = Class.forName(className);
			Method method = clazz.getMethod(methodName, new Class[] {});
			method.invoke(clazz, new Object[] {});
		} catch (Exception e) {
			if (log4j.isErrorEnabled()) {
				log4j.error(e);
			}
		}
	}

}
