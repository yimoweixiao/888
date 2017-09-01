package javax.xianfeng.hibernate;

import javax.xianfeng.dao.DaoException;

/**
 * Hibernate实现的DAO异常类
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午08:23:18
 */
public class HibernateDaoException extends DaoException {

	private static final long serialVersionUID = -949529765451390196L;

	public HibernateDaoException() {
		super();
	}

	public HibernateDaoException(String message, Throwable cause) {
		super(message, cause);
	}

	public HibernateDaoException(String message) {
		super(message);
	}

	public HibernateDaoException(Throwable cause) {
		super(cause);
	}

}
