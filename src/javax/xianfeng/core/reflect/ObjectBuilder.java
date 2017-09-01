package javax.xianfeng.core.reflect;

import java.util.Map;

/**
 * 对象反射辅助类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:40:58
 */
public class ObjectBuilder {

	private ObjectBuilder() {
		super();
	}

	/**
	 * Class对象重建方法
	 * @param clazz 重建的对象类型
	 * @return
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws BuildException
	 */
	public static Object build(Class<?> clazz) throws InstantiationException, IllegalAccessException {
		Object obj = clazz.newInstance();
		return obj;
	}

	/**
	 * Class对象的重建方法
	 * @param clazz
	 * @param fields 属性键-值集合
	 * @return
	 * @throws IllegalAccessException
	 * @throws InstantiationException
	 * @throws BuildException
	 */
	public static Object build(Class<?> clazz, Map<String, Object> fields) throws InstantiationException, IllegalAccessException {
		Object obj = build(clazz);
		return obj;
	}

}
