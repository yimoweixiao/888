package javax.xianfeng.plugin.xml;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午01:30:44
 */
public class XmlReaderException extends Exception {

	private static final long serialVersionUID = -675057454788918797L;

	public XmlReaderException() {
		this("未知XmlReader异常");
	}

	public XmlReaderException(String message) {
		super(message);
	}

	public XmlReaderException(Throwable cause) {
		super("XmlReader异常", cause);
	}

	public XmlReaderException(String message, Throwable cause) {
		super(message, cause);
	}

}
