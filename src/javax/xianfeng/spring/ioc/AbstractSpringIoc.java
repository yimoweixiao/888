package javax.xianfeng.spring.ioc;

import org.springframework.context.ApplicationContext;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-13 下午06:29:29
 */
public abstract class AbstractSpringIoc {

	protected static ApplicationContext applicationContext;

	/**
	 * 初始化
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午06:34:41
	 */
	public abstract void init();

	/**
	 * 根据id查找IOC注入的Bean类对象
	 * @param id
	 * @return
	 */
	public Object find(String id) {
		if (applicationContext == null) {
			init();
		}
		return applicationContext.getBean(id);
	}

	/**
	 * 根据Class类型查找IOC注入的Bean类对象
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午07:42:49
	 * @param clazz
	 * @return
	 */
	public Object find(Class<?> clazz) {
		if (applicationContext == null) {
			init();
		}
		return applicationContext.getBean(clazz);
	}

}
