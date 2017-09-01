package javax.xianfeng.util;

import java.lang.reflect.Method;

/**
 * 方法反射辅助类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:42:04
 */
public class MethodUtil {

	private MethodUtil() {
		super();
	}

	/**
	 * 获取Class对象的方法
	 * @param clazz Class对象
	 * @param methodName 方法名
	 * @param parameterTypes 参数类型
	 * @author Programmer.Wenlong
	 * @since 2012-5-2 下午10:42:49
	 * @return
	 * @throws NoSuchMethodException
	 */
	public static Method getMethod(Class<?> clazz, String methodName, Class<?>... parameterTypes) throws NoSuchMethodException {
		Method method = null;

		// 递归查找名称为methodName的方法对象
		while (true) {
			try {
				method = clazz.getDeclaredMethod(methodName, parameterTypes);
				return method;
			} catch (Exception e) {
				if (clazz != Object.class) {
					clazz = clazz.getSuperclass();
					continue;
				} else {
					throw new NoSuchMethodException();
				}
			}
		}
	}

}
