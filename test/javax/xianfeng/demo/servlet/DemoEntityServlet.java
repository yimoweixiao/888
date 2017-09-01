package javax.xianfeng.demo.servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xianfeng.demo.service.IDemoEntityService;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午02:03:22
 */
public class DemoEntityServlet extends HttpServlet {

	@Resource(name = "demo.DemoEntityService")
	private IDemoEntityService service;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("debug: service=" + service);
		super.service(request, response);
	}

	public IDemoEntityService getService() {
		return service;
	}

	public void setService(IDemoEntityService service) {
		this.service = service;
	}

}
