package javax.xianfeng.dao;

import java.util.HashMap;
import java.util.Map;


/**
 * DAO创建接口类<br>
 * 功能：根据实体类型对象构造DAO对象<br>
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午12:06:24
 */
public abstract class DaoFactory {

	// DAO工厂
	protected static Map<String, EntityDao<?>> factory = new HashMap<String, EntityDao<?>>();

	/**
	 * 缓存DAO对象
	 * @param Entity
	 * @param dao
	 */
	@SuppressWarnings("unchecked")
	protected static void put(Class Entity, EntityDao<?> dao) {
		factory.put(Entity.getName(), dao);
	}

	/**
	 * 获取DAO对象
	 * @param Entity
	 * @return
	 */
	@SuppressWarnings("unchecked")
	protected static EntityDao get(Class Entity) {
		return (EntityDao) factory.get(Entity.getName());
	}

}
