package javax.xianfeng.web.command;

import javax.xianfeng.ApplicationRuntimeException;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午09:05:58
 */
public class CommandNotFoundException extends ApplicationRuntimeException {

	private static final long serialVersionUID = -7134080026664388200L;

	public CommandNotFoundException() {
		this("command is not found");
	}

	public CommandNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public CommandNotFoundException(String message) {
		super(message);
	}

	public CommandNotFoundException(Throwable cause) {
		super(cause);
	}

}
