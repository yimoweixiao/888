package javax.xianfeng.test.jsonrpc;

import javax.xianfeng.demo.action.DemoRpcAction;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午03:24:28
 */
public class TestSpringIocJsonRpc {

	@Test
	public void init() {
		DemoRpcAction rpc = new DemoRpcAction();
		System.out.println(rpc.getDemoService());
	}

}
