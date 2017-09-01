package javax.xianfeng.dao;

/**
 * Dao异常类
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午01:50:56
 */
public class DaoException extends Exception {

	private static final long serialVersionUID = 5201292370028959212L;

	public DaoException() {
		this("未知dao异常");
	}

	public DaoException(String message, Throwable cause) {
		super(message, cause);
	}

	public DaoException(String message) {
		super(message);
	}

	public DaoException(Throwable cause) {
		super("dao异常", cause);
	}

}
