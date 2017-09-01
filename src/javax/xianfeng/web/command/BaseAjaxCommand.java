package javax.xianfeng.web.command;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xianfeng.core.model.ResultSet;
import javax.xianfeng.web.WebApplication;

/**
 * 支持Ajax调用的Command类<br>
 * 说明：<br>
 * 1、此Command在执行某个方法的时候可以反复调用setReturn()方法返回多个值
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午07:57:53
 */
public abstract class BaseAjaxCommand extends BaseCommand {

	protected ResultSet returnSet = new ResultSet(); // 返回值集合

	/**
	 * 可执行方法
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:31:55
	 * @return
	 */
	public abstract void execute();

	/**
	 * 设置Ajax返回值
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:25:27
	 * @param key
	 * @param obj
	 */
	protected void setResult(String key, Object obj) {
		this.returnSet.setResult(key, obj);
	}

	/**
	 * 获取HttpServletRequest
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:20:54
	 * @return
	 */
	protected HttpServletRequest getRequest() {
		return (HttpServletRequest) WebApplication.currentInstance().getRequest();
	}

	/**
	 * 获取HttpServletResponse
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:21:02
	 * @return
	 */
	protected HttpServletResponse getResponse() {
		return (HttpServletResponse) WebApplication.currentInstance().getResponse();
	}

	/**
	 * 获取HttpSession
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:22:58
	 * @return
	 */
	public HttpSession getSession() {
		return WebApplication.currentInstance().getSession();
	}

	/**
	 * 获取ServletContext
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:23:06
	 * @return
	 */
	public ServletContext getApplication() {
		return WebApplication.currentInstance().getApplication();
	}

	public ResultSet getReturnSet() {
		return returnSet;
	}

	public void setReturnSet(ResultSet returnSet) {
		this.returnSet = returnSet;
	}

}
