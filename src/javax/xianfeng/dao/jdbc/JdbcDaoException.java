package javax.xianfeng.dao.jdbc;

import javax.xianfeng.dao.DaoException;

/**
 * JDBC异常类
 * @author Programmer.Wenlong
 * @since 2011-12-3 下午11:13:45
 */
public class JdbcDaoException extends DaoException {

	private static final long serialVersionUID = 4467677254344268265L;

	public JdbcDaoException() {
		this("未知JdbcDao异常");
	}

	public JdbcDaoException(String message, Throwable cause) {
		super(message, cause);
	}

	public JdbcDaoException(String message) {
		super(message);
	}

	public JdbcDaoException(Throwable cause) {
		super("JdbcDao异常", cause);
	}

}
