package javax.xianfeng.demo.action;

import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.struts.action.BaseJsonAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-14 下午11:02:45
 */
public class DemoJsonAction1 extends BaseJsonAction {

	private static final long serialVersionUID = 2179166084237187615L;

	private static final Log logger = LogFactory.getLog(DemoJsonAction1.class);

	/**
	 * 返回组装的JSOn字符串
	 * @author Programmer.Wenlong
	 * @since 2012-4-14 上午11:22:33
	 * @return
	 */
	public void demo() {
		logger.info("demo - core json");
		DemoEntity1 d1 = new DemoEntity1("1001", 21, "Jack");
		DemoEntity1 d2 = new DemoEntity1("1002", 22, "Rose");
		json.append("{");
		json.append("{Id:'").append(d1.getId()).append("',Name:'").append(d1.getName()).append("'}");
		json.append(",");
		json.append("{Id:'").append(d2.getId()).append("',Name:'").append(d2.getName()).append("'}");
		json.append("}");
		this.responseJson();
	}

	public String auto() {

		return SUCCESS;
	}

}
