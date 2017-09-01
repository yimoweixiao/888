package javax.xianfeng.jdbc;

/**
 * DataSource异常类
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午04:50:07
 */
public class DataSourceException extends Exception {

	private static final long serialVersionUID = -99768476619352243L;

	public DataSourceException() {
		super("未知DataSource异常");
	}

	public DataSourceException(String message, Throwable cause) {
		super(message, cause);
	}

	public DataSourceException(String message) {
		super(message);
	}

	public DataSourceException(Throwable cause) {
		super("DataSource异常", cause);
	}

}
