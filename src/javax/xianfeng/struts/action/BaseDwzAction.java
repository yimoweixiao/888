package javax.xianfeng.struts.action;

import com.opensymphony.xwork2.ActionProxy;

/**
 * 集成DWZ框架的Action类
 * @author Programmer.Wenlong
 * @since 2013-4-29 下午08:07:14
 */
public abstract class BaseDwzAction extends BaseEntityAction {
	// 响应编码
	public static final String STATUS_SUCCESS = "200"; // 成功
	public static final String STATUS_FAILED = "300"; // 失败
	public static final String STATUS_TIMEOUT = "301"; // 超时

	// 回调类型
	public static final String CALLBACK_CLOSE = "closeCurrent"; // 关闭
	public static final String CALLBACK_FORWARD = "forward"; // 跳转至forwardUrl

	// 响应类型
	public static final String DEFAULT_RESULT = "result";

	private String statusCode;
	private String message;
	private String navTabId;
	private String rel;
	private String callbackType;
	private String forwardUrl;

	private ActionProxy proxy;

	public BaseDwzAction() {
		super();
		// this.proxy = ActionContext.getContext().getActionInvocation().getProxy();
	}

	public String getNamespace() {
		String namespace = proxy.getNamespace();
		if ("/".equals(namespace)) {
			namespace = "";
		}
		return namespace;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNavTabId() {
		return navTabId;
	}

	public void setNavTabId(String navTabId) {
		this.navTabId = navTabId;
	}

	public String getRel() {
		return rel;
	}

	public void setRel(String rel) {
		this.rel = rel;
	}

	public String getCallbackType() {
		return callbackType;
	}

	public void setCallbackType(String callbackType) {
		this.callbackType = callbackType;
	}

	public String getForwardUrl() {
		return forwardUrl;
	}

	public void setForwardUrl(String forwardUrl) {
		this.forwardUrl = forwardUrl;
	}

	public ActionProxy getProxy() {
		return proxy;
	}

	public void setProxy(ActionProxy proxy) {
		this.proxy = proxy;
	}

}
