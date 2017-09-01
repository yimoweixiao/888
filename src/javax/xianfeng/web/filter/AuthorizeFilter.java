package javax.xianfeng.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.security.AuthorizeException;
import javax.xianfeng.security.IAuthorizeManager;
import javax.xianfeng.security.ISecurityResourceValidator;
import javax.xianfeng.security.SecurityConfig;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 权限管理的Filter类<br>
 * 权限管理的Filter由两部分组成：<br>
 * （1）登录状态<br>
 * （2）访问权限
 * 
 * @author Programmer.Wenlong
 * @since 2012-4-4 上午10:42:38
 */
public abstract class AuthorizeFilter implements Filter {

	private static final Log logger = LogFactory.getLog(AuthorizeFilter.class);

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub

	}

	/**
	 * synchronized保证用户登录的授权过程执行完成，否则即使登录成功也会转发到登录页面
	 */
	@Override
	public synchronized void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain) throws IOException, ServletException {
		// HTTP请求的权限管理
		if (arg0 instanceof HttpServletRequest && arg1 instanceof HttpServletResponse) {
			HttpServletRequest request = (HttpServletRequest) arg0;
			HttpServletResponse response = (HttpServletResponse) arg1;

			String uri = request.getRequestURI();

			String root = request.getContextPath(); // 应用根地址默认不校验
			// System.out.println(">>> root=" + root);

			// 判断是否需要进行权限过滤
			boolean isSecurity = false;
			if (SecurityConfig.isDebug || root.equals(uri)) {
				// 根地址、调试模式，默认校验通过
				isSecurity = true;
			} else {
				uri = uri.substring(root.length());
				// System.out.println(">>> uri=" + uri);
				isSecurity = isSecuritySource(uri);
			}
			logger.debug("isSecurity=" + isSecurity);

			if (isSecurity) {
				chain.doFilter(request, response);
				return;
			}
			
			// 验证用户登录状态
			boolean isLogin = doLoginFilter(request);
			logger.debug("isLogin=" + isLogin);
			if (!isLogin) {
				this.handleNotLogin(request, response, uri);
				return;
			}

			// 验证用户访问权限
			boolean isPermit = doPermitFilter(request, uri);
			logger.debug("isPermit=" + isPermit);
			if (!isPermit) {
				this.handleNotPermit(request, response, uri);
				return;
			}

			// 验证系统授权
			String licenseMgr = ApplicationConfig.getConfig("Xianfeng.License.Manager");
			if (ApplicationConfig.LICENSE_MANAGER_OPEN.equals(licenseMgr)) {
				try {
					doLicenseFilter(uri);
				} catch (Exception e) {
					this.handleNotLicence(request, response, uri, e.getMessage());
					return;
				}
			}

			// 有权限访问，继续执行请求
			chain.doFilter(request, response);
		} else {
			logger.warn("this authorizaction is only supported by HTTP");
			chain.doFilter(arg0, arg1);
		}
	}

	/**
	 * 返回登录页面
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-3-31 下午10:43:47
	 * @param request
	 * @param response
	 * @param uri
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void handleNotLogin(HttpServletRequest request, HttpServletResponse response, String uri) throws ServletException, IOException {
		logger.debug("dispach: " + SecurityConfig.getDefaultLoginPage());
		RequestDispatcher dispatcher = request.getRequestDispatcher(SecurityConfig.getDefaultLoginPage());
		dispatcher.forward(request, response);
	}

	/**
	 * 返回无权限访问提示页面
	 * 
	 * @author Programmer.Wenlong
	 * @since 2015-3-31 下午10:43:41
	 * @param request
	 * @param response
	 * @param uri
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void handleNotPermit(HttpServletRequest request, HttpServletResponse response, String uri) throws ServletException, IOException {
		logger.debug("dispach: " + SecurityConfig.defaultNoPermitWarningPage);
		RequestDispatcher dispatcher = request.getRequestDispatcher(SecurityConfig.defaultNoPermitWarningPage);
		dispatcher.forward(request, response);
	}

	/**
	 * 返回系统授权验证失败页面
	 * @author Programmer.Wenlong
	 * @since 2015-6-2 上午09:26:01
	 * @param request
	 * @param response
	 * @param uri
	 * @param errorMsg
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void handleNotLicence(HttpServletRequest request, HttpServletResponse response, String uri, String errorMsg) throws ServletException, IOException {
		logger.debug("dispach: " + SecurityConfig.defaultNotLicencePage);
		RequestDispatcher dispatcher = request.getRequestDispatcher(SecurityConfig.defaultNotLicencePage);
		dispatcher.forward(request, response);
	}

	/**
	 * 校验用户的登录状态
	 * 
	 * @author Programmer.Wenlong
	 * @since 2012-6-6 下午11:52:28
	 * @param request
	 * @return
	 */
	protected abstract boolean doLoginFilter(HttpServletRequest request);

	/**
	 * 校验用户访问资源的权限
	 * 
	 * @author Programmer.Wenlong
	 * @since 2012-6-6 下午11:52:42
	 * @param uri
	 * @return
	 * @throws AuthorizeException
	 */
	protected boolean doPermitFilter(HttpServletRequest request, String uri) throws AuthorizeException {
		IAuthorizeManager manager = null;
		try {
			manager = (IAuthorizeManager) Class.forName(SecurityConfig.authorizeManager).newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			throw new AuthorizeException("AuthorizeManager exception", e);
		}
		return manager.isPermit(request, uri);
	}
	
	/**
	 * 系统授权验证
	 * @author Programmer.Wenlong
	 * @since 2015-6-2 上午09:29:12
	 * @param uri
	 */
	protected abstract void doLicenseFilter(String uri);
	
	/**
	 * 判断是不需要检验访问权限的的资源
	 * @author Programmer.Wenlong
	 * @since 2012-4-18 上午12:06:32
	 * @param uri
	 * @return
	 */
	private boolean isSecuritySource(String uri) {
		ISecurityResourceValidator validator = null;
		try {
			validator = (ISecurityResourceValidator) Class.forName(SecurityConfig.authorizeSecurityValidator).newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return validator.validate(uri);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
