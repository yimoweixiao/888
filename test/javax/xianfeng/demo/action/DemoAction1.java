package javax.xianfeng.demo.action;

import javax.xianfeng.struts.action.BaseAction;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-29 下午04:45:23
 */
public class DemoAction1 extends BaseAction {

	private static final long serialVersionUID = -7489320240563276632L;

	//http://localhost:9080/xianfeng/struts/demo/demo11.jspx
	@Override
	public String execute() throws Exception {
		System.out.println("action1...");
		return SUCCESS;
	}

}
