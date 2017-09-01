package javax.xianfeng.demo.action;

import javax.annotation.Resource;
import javax.xianfeng.demo.entity.DemoEntity1;
import javax.xianfeng.demo.service.IDemoEntity1Service;
import javax.xianfeng.struts.action.BaseAction;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 测试参数自动赋值
 * @author Programmer.Wenlong
 * @since 2012-3-30 上午01:18:34
 */
public class DemoAction2 extends BaseAction {
	private static final Log logger = LogFactory.getLog(DemoAction2.class);
	private Long id;

	@Resource(name = "demo.DemoEntity1Service")
	private IDemoEntity1Service demoService;

	@Override
	public String execute() {
		logger.info("demo - id=" + id);
		id = 1001L;
		try {
			DemoEntity1 entity = demoService.get(id);
			System.out.println(entity);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public IDemoEntity1Service getDemoService() {
		return demoService;
	}

	public void setDemoService(IDemoEntity1Service demoService) {
		this.demoService = demoService;
	}

}
