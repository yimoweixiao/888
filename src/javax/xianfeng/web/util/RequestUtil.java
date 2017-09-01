package javax.xianfeng.web.util;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

/**
 * HttpServletRequest的Util类
 * @author Programmer.Wenlong
 * @since 2011-12-10 上午12:57:57
 */
public final class RequestUtil {

	private RequestUtil() {
		super();
	}

	/**
	 * 获取Project的请求路径
	 * @param request
	 * @return
	 */
	public static String getBasePath(HttpServletRequest request) {
		String project = request.getContextPath();
		String schema = request.getScheme();
		String server = request.getServerName();
		int port = request.getServerPort();
		String basePath = schema + "://" + server + ":" + port + project + "/";
		return basePath;
	}

	/**
	 * 获取Project部署在本地的路径
	 * @param servlet
	 * @return
	 */
	public static String getLocalPath(HttpServlet servlet) {
		return getLocalPath(servlet, null);
	}

	/**
	 * 获取filePath相对于Project的本地路径
	 * @param servlet
	 * @param filePath 文件的相对路径
	 * @return
	 */
	public static String getLocalPath(HttpServlet servlet, String filePath) {
		ServletContext context = servlet.getServletContext();
		String local = null;
		if (filePath != null) {
			local = context.getRealPath(filePath);
		} else {
			local = context.getRealPath("");
		}
		return local;
	}

	/**
	 * 获取客户端ip地址
	 * @author Programmer.Wenlong
	 * @since 2014-7-1 下午10:25:24
	 * @param request
	 * @return
	 */
	public static String getRemoteAddr(HttpServletRequest request) {
		String str = request.getHeader("x-forwarded-for");
		if ((str == null) || (str.length() == 0) || ("unknown".equalsIgnoreCase(str))) {
			str = request.getHeader("Proxy-Client-IP");
		}
		if ((str == null) || (str.length() == 0) || ("unknown".equalsIgnoreCase(str))) {
			str = request.getHeader("WL-Proxy-Client-IP");
		}
		if ((str == null) || (str.length() == 0) || ("unknown".equalsIgnoreCase(str))) {
			str = request.getRemoteAddr();
		}
		return str;
	}

	/**
	 * 判断是否为访问地址后缀
	 * @author Programmer.Wenlong
	 * @since 2015-3-31 下午11:08:39
	 * @param uri
	 * @param suffix
	 * @return
	 */
	public static boolean isURISuffix(String uri, String suffix) {
		int start  = uri.indexOf(".");
		if (start < 0) {
			//不包含点号无法判断后缀，直接返回缺省值
			return false;
		}
		
		int end = uri.indexOf("?");
		if (end < 0) {
			end = uri.length();
		}
		
		String uriSuffix = uri.substring(start, end);
		if (suffix.equals(uriSuffix)) {
			return true;
		} else {
			return false;
		}
	}
	
}
