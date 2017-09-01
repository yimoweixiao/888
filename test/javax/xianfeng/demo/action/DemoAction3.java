package javax.xianfeng.demo.action;

import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.struts.action.BaseAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-20 下午05:46:33
 */
public class DemoAction3 extends BaseAction {
	private static final long serialVersionUID = 4192516503763587944L;
	private static final Log logger = LogFactory.getLog(DemoAction3.class);
	private List<String> list;

	@Override
	public String execute() {
		logger.info("测试struts返回给jsp数据");
		list = new ArrayList<String>();
		list.add("Hello");
		list.add("World");
		return SUCCESS;
	}

	public List<String> getList() {
		return list;
	}

	public void setList(List<String> list) {
		this.list = list;
	}

}
