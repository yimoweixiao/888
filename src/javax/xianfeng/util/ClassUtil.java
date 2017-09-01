package javax.xianfeng.util;

import java.lang.annotation.Annotation;
import java.util.Map;

/**
 * 类-反射辅助类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-27 上午12:31:23
 */
public class ClassUtil {

	private ClassUtil() {
		super();
	}

	/**
	 * 获取简单的类名<br>
	 * 例如：java.lang.String的简单类名为String
	 * @param clazz
	 * @return
	 */
	public static String getSimpleName(Class<?> clazz) {
		return clazz.getSimpleName();
	}

	/**
	 * 获取类的annotation标注
	 * @param clazz 实体类
	 * @param annotation 标注类
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, String> getValueOfAnnotaction(Class clazz, Class annotation) {
		if (clazz.isAnnotationPresent(annotation)) {
			Annotation anno = clazz.getAnnotation(annotation);
			return AnnotationUtil.getAnnotations(anno);
		}
		return null;
	}

}
