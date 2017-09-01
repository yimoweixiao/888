package javax.xianfeng.web.command;

/**
 * @author Programmer.Wenlong
 * @since 2014-3-20 下午10:15:28
 */
public class DemoAjaxCommand extends BaseAjaxCommand {

	@Override
	public void execute() {
		hello();
	}

	public void hello() {
		String message = this.getRequest().getParameter("message");
		String isError = this.getRequest().getParameter("isError");
		if ("true".equals(isError)) {
			throw new RuntimeException("对不起，后台出现异常。。。");
		}
		this.setResult("message", "回复：" + message);
		this.setResult("status", 1);
		this.setResult("isError", false);
	}

}
