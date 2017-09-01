package javax.xianfeng.util;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Map;

/**
 * Annotation的工具类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:46:35
 */
public class AnnotationUtil {

	private AnnotationUtil() {
		super();
	}

	/**
	 * 获取Annotation对象的标注名称和值集合
	 * @param annotation 标注类型
	 * @return
	 */
	public static Map<String, String> getAnnotations(Annotation annotation) {
		String content = annotation.toString();
		// 格式：包名.标注类名(标注1=值1,标注2=值2……)
		if (content.indexOf("(") < 0 && content.indexOf(")") < 0) {
			// 没有标注内容
			return null;
		}
		// 获取括号汇总的标注内容
		content = content.substring(content.indexOf("(") + 1, content.length() - 1);
		String[] arrays = content.split(",");
		Map<String, String> map = new HashMap<String, String>();
		for (String str : arrays) {
			// 拆分名称和值
			// str格式：name=user，length=20,required=true
			int index = str.indexOf("=");
			String name = str.substring(0, index).trim();
			String value = str.substring(index + 1).trim();
			map.put(name, value);
		}
		return map;
	}
}
