package javax.xianfeng.demo.action;

import javax.xianfeng.demo.service.IDemoEntity1Service;
import javax.xianfeng.jsonrpc.spring.SpringJsonRpcObject;
import javax.xianfeng.spring.annotation.SpringBeforeX;
import javax.xianfeng.spring.annotation.SpringIocX;

public class DemoRpcAction extends SpringJsonRpcObject {

	@SpringIocX(name = "demo.DemoEntity1Service")
	private IDemoEntity1Service demoService;

	@SpringBeforeX
	public void demoInit() {
		System.out.println("1");
		init();
		System.out.println("2");
	}

	public void demo() {
		System.out.println(demoService);
	}

	public IDemoEntity1Service getDemoService() {
		return demoService;
	}

	public void setDemoService(IDemoEntity1Service demoService) {
		this.demoService = demoService;
	}

}