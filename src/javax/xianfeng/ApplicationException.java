package javax.xianfeng;

/**
 * @author Programmer.Wenlong
 * @since 2015-2-25 下午03:52:14
 */
public class ApplicationException extends Exception {

	public ApplicationException() {
		this("未知系统异常");
	}

	public ApplicationException(String message, Throwable cause) {
		super(message, cause);
	}

	public ApplicationException(String message) {
		super(message);
	}

	public ApplicationException(Throwable cause) {
		this("系统异常", cause);
	}

}
