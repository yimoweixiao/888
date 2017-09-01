package javax.xianfeng;

/**
 * 不合法返回值异常类
 * @author Programmer.Wenlong
 * @since 2012-10-9 下午10:13:52
 */
public class IllegalResultException extends Exception {

	private static final long serialVersionUID = -7922820618931726238L;

	public IllegalResultException() {
		this("未知Result异常");
	}

	public IllegalResultException(String message) {
		super(message);
	}

	public IllegalResultException(Throwable cause) {
		super("Result异常", cause);
	}

	public IllegalResultException(String message, Throwable cause) {
		super(message, cause);
	}

}
