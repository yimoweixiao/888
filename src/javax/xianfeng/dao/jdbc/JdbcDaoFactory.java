package javax.xianfeng.dao.jdbc;

import javax.xianfeng.dao.DaoFactory;
import javax.xianfeng.dao.EntityDao;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * O JDBC实现的DaoBuilder
 * @author Programmer.Wenlong
 * @since 2011-12-10 下午03:33:20
 */
public final class JdbcDaoFactory extends DaoFactory {

	private static final Log logger = LogFactory.getLog(JdbcDaoFactory.class);

	private JdbcDaoFactory() {
		super();
	}

	@SuppressWarnings("unchecked")
	public static EntityDao build(Class Entity) {
		logger.info("Build jdbc dao for class " + Entity.getName());
		EntityDao dao = get(Entity);
		if (dao == null) {
			dao = new JdbcDaoImpl(Entity);
			put(Entity, dao);
		}
		return dao;
	}

}
