package javax.xianfeng.struts.action;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * 基础的校验Action类
 * @author Programmer.Wenlong
 * @since 2011-12-21 下午07:20:07
 */
public class BaseValidateAction extends BaseAction {

	private static final long serialVersionUID = -1070283176125748279L;

	protected Map<String, String> parameters = new HashMap<String, String>();

	@SuppressWarnings("unchecked")
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		// 获取参数集合
		Enumeration<String> enums = request.getParameterNames();
		while (enums.hasMoreElements()) {
			String key = enums.nextElement();
			String value = request.getParameter(key);
			this.parameters.put(key, value);
		}
		// 获取HttpSession对象
		this.session = request.getSession();
	}

}
