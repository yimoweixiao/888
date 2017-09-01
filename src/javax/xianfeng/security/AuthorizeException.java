package javax.xianfeng.security;

import javax.xianfeng.ApplicationRuntimeException;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午11:50:27
 */
public class AuthorizeException extends ApplicationRuntimeException {

	private static final long serialVersionUID = 6649728007527476589L;

	public AuthorizeException() {
		super();
	}

	public AuthorizeException(String message, Throwable cause) {
		super(message, cause);
	}

	public AuthorizeException(String message) {
		super(message);
	}

	public AuthorizeException(Throwable cause) {
		super(cause);
	}

}
