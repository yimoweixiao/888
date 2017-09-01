package javax.xianfeng.plugin.json;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-4 上午12:09:07
 */
public class JsonFormatException extends RuntimeException {

	private static final long serialVersionUID = -4295186619887791000L;

	public JsonFormatException() {
		this("未知JsonFormat异常");
	}

	public JsonFormatException(String message) {
		super(message);
	}

	public JsonFormatException(Throwable cause) {
		super("JsonFormat异常", cause);
	}

	public JsonFormatException(String message, Throwable cause) {
		super(message, cause);
	}

}
