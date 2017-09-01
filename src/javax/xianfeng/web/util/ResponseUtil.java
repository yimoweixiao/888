package javax.xianfeng.web.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

/**
 * HttpServletResponse类的Util类
 * @author Programmer.Wenlong
 * @since 2011-12-10 上午12:57:41
 */
public final class ResponseUtil {

	private ResponseUtil() {
		super();
	}

	/**
	 * 响应HTML文档
	 * @param response HttpServletResponse对象
	 * @param content HTML内容
	 */
	public static void responseHtml(HttpServletResponse response, String content) {
		response(response, content, MimeUtil.HTML);
	}

	/**
	 * 响应XML文档
	 * @param response HttpServletResponse对象
	 * @param content XML内容
	 */
	public static void responseXml(HttpServletResponse response, String content) {
		response(response, content, MimeUtil.XML);
	}

	/**
	 * 响应JSON字符串
	 * @param response HttpServletResponse对象
	 * @param content JSON内容
	 */
	public static void responseJson(HttpServletResponse response, String content) {
		response(response, content, MimeUtil.JSON);
	}

	/**
	 * 响应内容
	 * @param response HttpServletResponse对象
	 * @param content 文本内容
	 * @param contentType 文本格式
	 */
	private static void response(HttpServletResponse response, String content, String contentType) {
		// 响应内容类型
		response.setContentType(contentType);
		// 输出响应内容
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(content);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.flush();
			out.close();
		}
	}

}
