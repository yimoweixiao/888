package javax.xianfeng.spring.ioc;

import javax.xianfeng.ApplicationConfig;

/**
 * 获取Spring通过IOC管理的Bean工具类
 * @author Programmer.Wenlong
 * @since 2011-12-29 下午10:21:07
 */
public final class SpringIoc {

	private SpringIoc() {
		super();
	}

	/**
	 * 根据id查找IOC注入的Bean类对象
	 * @param id
	 * @return
	 */
	public static Object find(String id) {
		Object bean = null;
		try {
			bean = DeploySpingIocImpl.newInstance().find(id);
		} catch (Exception e) {
			bean = DevelopSpingIocImpl.newInstance().find(id);
		}
		return bean;
	}

	/**
	 * 根据Class查找IOC注入的Bean类对象
	 * @param id
	 * @return
	 */
	public static Object find(Class<?> clazz) {
		if (ApplicationConfig.APP_STATE_DEBUG.equalsIgnoreCase(ApplicationConfig.getConfig("Xianfeng.Application.State"))) {
			return DevelopSpingIocImpl.newInstance().find(clazz);
		} else {
			return DeploySpingIocImpl.newInstance().find(clazz);
		}

	}
}
