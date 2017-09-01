package javax.xianfeng.hibernate;

import javax.xianfeng.dao.DaoFactory;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Hibernate实现的DaoFactory
 * @author Programmer.Wenlong
 * @since 2011-12-7 下午09:40:35
 */
public final class HibernateDaoFactory extends DaoFactory {

	private static final Log logger = LogFactory.getLog(HibernateDaoFactory.class);

	private HibernateDaoFactory() {
		super();
	}

	@SuppressWarnings("unchecked")
	public static EntityDao build(Class Entity) {
		logger.info("Build hibernate dao for class " + Entity.getName());
		EntityDao dao = get(Entity);
		if (dao == null) {
			dao = new HibernateDaoImpl(Entity);
			put(Entity, dao);
		}
		return dao;
	}
}
