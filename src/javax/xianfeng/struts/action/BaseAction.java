package javax.xianfeng.struts.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.util.ParameterSetUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 基层的Action类
 * @author Programmer.Wenlong
 * @since 2011-12-9 上午12:37:53
 */
public abstract class BaseAction extends ActionSupport implements ServletRequestAware, ServletResponseAware, ServletContextAware {

	private static final long serialVersionUID = 1095563897076055469L;

	protected final transient Log logger = LogFactory.getLog(this.getClass());

	protected static final String FAIL = "fail";

	// http对象属性
	protected HttpServletRequest request; // 请求对象
	protected HttpServletResponse response; // 响应对象
	protected HttpSession session; // 会话对象
	protected ServletContext application;

	protected ParameterSet parameters; // 参数对象

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();

		this.parameters = ParameterSetUtil.create(request);
		this.parameters.put("start", this.getPageStart());
		this.parameters.put("limit", this.getPageSize());
		//logger.debug("start=" + this.getPageStart() + "\tlimit=" + this.getPageSize());
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletContext(ServletContext application) {
		this.application = application;
	}

	/**
	 * 获取当前页码
	 * @return
	 */
	public int getThisPage() {
		String thisPage = (String) this.parameters.getParameter("thisPage");
		if (thisPage == null) {
			return 1;
		}
		return Integer.parseInt(thisPage);
	}

	/**
	 * 获取分页大小
	 * @return
	 */
	public int getPageSize() {
		String pageSize = (String) this.parameters.getParameter("pageSize");
		if (pageSize == null) {
			return DataPager.DEFAULT_PAGE_LIMIT;
		}
		return Integer.parseInt(pageSize);
	}

	/**
	 * 获取分页查询开始索引
	 * @return
	 */
	public int getPageStart() {
		return getPageSize() * (getThisPage() - 1);
	}

}
