package javax.xianfeng.web;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Web请求上下文类<br>
 * 生命周期：在服务器端接收到请求时创建，在响应客户端结束时销毁。<br>
 * @author Programmer.Wenlong
 * @since 2012-1-7 上午12:01:48
 */
public class WebApplication {

	private ServletRequest request; // 请求对象

	private ServletResponse response; // 响应对象

	private HttpSession session;

	private ServletContext application;

	private static final ThreadLocal<WebApplication> threadLocal = new ThreadLocal<WebApplication>();

	private WebApplication() {
		super();
	}

	private WebApplication(ServletRequest request, ServletResponse response) {
		this();
		this.request = request;
		this.response = response;
	}

	/**
	 * 注册当前Web请求上下文
	 * @param request
	 * @param response
	 */
	public static WebApplication activate(ServletContext application, ServletRequest request, ServletResponse response) {
		WebApplication applicationContext = new WebApplication(request, response);
		if (request instanceof HttpServletRequest) {
			applicationContext.session = ((HttpServletRequest) request).getSession(true);
		}
		applicationContext.application = application;
		threadLocal.set(applicationContext);
		return applicationContext;
	}

	/**
	 * 获取当前的Web请求上下文对象
	 * @return
	 */
	public static WebApplication currentInstance() {
		return threadLocal.get();
	}

	/**
	 * 释放当前Web请求上下文对象关联的资源
	 */
	public static void inactivate() {
		WebApplication applicationContext = threadLocal.get();
		if (applicationContext != null) {
			applicationContext = null;
		}
		threadLocal.set(null);
	}

	public ServletRequest getRequest() {
		return request;
	}

	public ServletResponse getResponse() {
		return response;
	}

	public HttpSession getSession() {
		return session;
	}

	public ServletContext getApplication() {
		return application;
	}

}
