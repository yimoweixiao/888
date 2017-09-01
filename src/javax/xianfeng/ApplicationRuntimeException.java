package javax.xianfeng;

/**
 * @author Programmer.Wenlong
 * @since 2015-2-25 下午03:52:24
 */
public class ApplicationRuntimeException extends RuntimeException{

	public ApplicationRuntimeException() {
		this("未知系统运行异常");
	}

	public ApplicationRuntimeException(String message, Throwable cause) {
		super(message, cause);
	}

	public ApplicationRuntimeException(String message) {
		super(message);
	}

	public ApplicationRuntimeException(Throwable cause) {
		this("系统运行异常", cause);
	}

}
