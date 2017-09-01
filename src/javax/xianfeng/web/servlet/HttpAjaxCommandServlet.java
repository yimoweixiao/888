package javax.xianfeng.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xianfeng.IllegalResultException;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.model.ResultSet;
import javax.xianfeng.core.reflect.ObjectBuilder;
import javax.xianfeng.core.util.ParameterSetUtil;
import javax.xianfeng.plugin.json.JsonLibUtil;
import javax.xianfeng.util.MethodUtil;
import javax.xianfeng.web.util.ResponseUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 执行调用Command的Servlet<br>
 * 参数说明：<br>
 * （1）class：要调用的Command类名<br>
 * （2）method：调用Command类的方法名<br>
 * 返回值类型：ResultSet<br>
 * 测试URL：/servlet/command.exe?class=javax.xianfeng.framework.command.DemoAjaxCommand
 * @see javax.xianfeng.framework.filter.ApplicationFilter
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午09:08:41
 */
public class HttpAjaxCommandServlet extends HttpServlet {

	private static final long serialVersionUID = 9217365969344583038L;

	protected transient Log logger = LogFactory.getLog(this.getClass());

	@Override
	public void init() throws ServletException {
		super.init();

	}

	@SuppressWarnings("unchecked")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 请求的command信息
		String className = request.getParameter("class");
		String methodName = request.getParameter("method");

		logger.info("execute command - " + className + "@" + methodName);

		String json = executeCommand(request, className, methodName);

		logger.debug(json.toString());

		ResponseUtil.responseJson(response, json);

	}

	/**
	 * 执行command的方法返回执行结果
	 * @author Programmer.Wenlong
	 * @since 2012-10-9 下午11:27:12
	 * @param request
	 * @param className
	 * @param methodName
	 */
	protected String executeCommand(HttpServletRequest request, String className, String methodName) {
		// 默认为调用command的execute()方法
		if (methodName == null || methodName.length() == 0) {
			methodName = "execute";
		}

		// 请求参数的集合
		ParameterSet parameterSet = ParameterSetUtil.create(request);
		StringBuffer json = new StringBuffer();
		json.append("{");
		try {
			Class<?> commandClass = Class.forName(className);

			Object command = ObjectBuilder.build(commandClass);

			// 设置参数集合，调用command的setParameterSet()方法
			// commandClass.getMethod("setParameterSet").invoke(command, parameterSet);
			MethodUtil.getMethod(commandClass, "setParameterSet", ParameterSet.class).invoke(command, parameterSet);

			// 执行方法
			commandClass.getMethod(methodName).invoke(command);

			// 获取执行结果
			Object result = commandClass.getMethod("getReturnSet").invoke(command);

			json.append("\"status\":1");

			if ((result instanceof ResultSet) == false) {
				throw new IllegalResultException("Result type is " + result.getClass().getName());
			}

			ResultSet returnSet = (ResultSet) result;
			json.append(",\"results\":");
			List<String> keys = returnSet.keys();
			String key = null;
			Object value = null;
			String _json = null;
			json.append("[");
			for (int i = 0, size = keys.size(); i < size; i++) {
				key = keys.get(i);
				value = returnSet.getResult(key);
				// 将key和value转换为JSON格式
				_json = JsonLibUtil.toJson(key, value);
				logger.debug(_json);
				json.append(_json);
				if (i < size - 1) {
					json.append(",");
				}
			}
			json.append("],");
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage(), e.getCause());
			json.append("\"status\":0,");
		} finally {
			json.append("\"invoked\":true");
		}

		json.append("}");
		return json.toString();
	}

	@Override
	public void destroy() {
		super.destroy();
	}

}
