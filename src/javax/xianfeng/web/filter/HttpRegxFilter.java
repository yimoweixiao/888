package javax.xianfeng.web.filter;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.xianfeng.security.web.ISafeHtmlMgr;
import javax.xianfeng.security.web.SafeHtmlMgr;

/**
 * Http请求响应的内容过滤
 * @author Programmer.Wenlong
 * @since 2014-6-5 下午06:14:41
 */
public class HttpRegxFilter implements Filter {

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpRegxResponse regxResponse = new HttpRegxResponse((HttpServletResponse) response);
		
		chain.doFilter(request, regxResponse);
		
		String content = regxResponse.getContent();
		
		//无权限访问的按钮过滤
		ISafeHtmlMgr html = new SafeHtmlMgr();
		content = html.filter(content);
		
		response.getWriter().print(content);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	class HttpRegxResponse extends HttpServletResponseWrapper {
		private RegxPrintWriter regxWriter;
		private ByteArrayOutputStream output;

		public HttpRegxResponse(HttpServletResponse response) {
			super(response);
			output = new ByteArrayOutputStream();
			regxWriter = new RegxPrintWriter(output);
		}

		@Override
		public void finalize() throws Throwable {
			super.finalize();
			output.close();
			regxWriter.close();
		}

		public String getContent() {
			regxWriter.flush(); // 刷新该流的缓冲，详看java.io.Writer.flush()
			String str = regxWriter.getByteArrayOutputStream().toString();
			// 此处可根据需要进行对输出流以及Writer的重置操作，比如regxWriter.getByteArrayOutputStream().reset()
			return str;
		}

		@Override
		public PrintWriter getWriter() throws IOException {
			return regxWriter;
		}

		public void close() throws IOException {
			regxWriter.close();
		}

		class RegxPrintWriter extends PrintWriter {

			private ByteArrayOutputStream outputStream; // 此即为存放response输入流的对象

			public RegxPrintWriter(ByteArrayOutputStream outputStream) {
				super(outputStream);
				this.outputStream = outputStream;
			}

			public ByteArrayOutputStream getByteArrayOutputStream() {
				return outputStream;
			}
		}
	}

}
