package javax.xianfeng.struts.action;

import java.sql.Connection;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Jaspaer的Action类
 * @author Programmer.Wenlong
 * @since 2012-8-8 下午11:15:40
 */
public class BaseJasperAction extends ActionSupport implements ServletRequestAware, ServletResponseAware, ServletContextAware {

	private static final long serialVersionUID = -9030893081099282198L;

	@Resource
	protected DataSource dataSource;

	// JasperReport的JDBC对象
	private Connection jdbc;

	protected HttpServletRequest request;

	protected HttpServletResponse response;

	protected HttpSession session;

	protected ServletContext application;

	// JasperReport参数集合
	// private Map<String, Object> parameters = new HashMap<String, Object>();

	@Override
	public String execute() {
		try {
			// 获取Connection对象
			this.jdbc = this.dataSource.getConnection();

			// TODO 获取URL参数

			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public Connection getJdbc() {
		return jdbc;
	}

	public void setJdbc(Connection jdbc) {
		this.jdbc = jdbc;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession(true);
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletContext(ServletContext application) {
		this.application = application;
	}

}