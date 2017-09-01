package javax.xianfeng.web.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2012-10-9 下午11:18:45
 */
public class MetaDataAjaxServlet extends HttpAjaxCommandServlet {

	private static final long serialVersionUID = 4138302597957771201L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String json = executeCommand(request, ApplicationConfig.getConfig("Xianfeng.Command.AjaxMetaData"), null);

		logger.debug(json.toString());

		ResponseUtil.responseJson(response, json);
	}

}
