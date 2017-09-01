package javax.xianfeng.demo.action;

import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.struts.action.BaseAction;

/**
 * JSON类型的Action测试类
 * @author Programmer.Wenlong
 * @since 2012-4-14 上午11:04:16
 */
public class DemoJsonAction2 extends BaseAction {

	private static final long serialVersionUID = 7038396933488661853L;

	private List<DemoEntity1> list;

	/**
	 * 直接返回对象，自动组装JSON
	 * @author Programmer.Wenlong
	 * @since 2012-4-14 上午11:22:28
	 * @return
	 */
	@Override
	public String execute() {
		list = new ArrayList<DemoEntity1>();
		DemoEntity1 d1 = new DemoEntity1("1001", 21, "Jack");
		DemoEntity1 d2 = new DemoEntity1("1002", 22, "Rose");
		list.add(d1);
		list.add(d2);
		return SUCCESS;
	}

	public List<DemoEntity1> getList() {
		return list;
	}

	public void setList(List<DemoEntity1> list) {
		this.list = list;
	}

}
