package javax.xianfeng.struts.action;

import javax.xianfeng.web.util.ResponseUtil;

/**
 * JSON支持的Action
 * @author Programmer.Wenlong
 * @since 2012-3-25 上午12:38:26
 */
public class BaseJsonAction extends BaseAction {

	private static final long serialVersionUID = 1780001613876097191L;

	protected StringBuffer json = new StringBuffer("");

	/**
	 * 响应JSON格式的内容
	 * @author Programmer.Wenlong
	 * @since 2012-3-25 上午12:43:07
	 * @param json
	 */
	public void responseJson() {
		logger.debug("json - " + getJson());
		ResponseUtil.responseJson(response, json.toString());
	}

	public StringBuffer getJson() {
		return json;
	}

	public void setJson(StringBuffer json) {
		this.json = json;
	}

}
