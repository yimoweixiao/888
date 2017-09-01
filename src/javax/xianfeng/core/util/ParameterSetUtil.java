package javax.xianfeng.core.util;

import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.xianfeng.core.model.ParameterSet;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * ParameterSet工具类
 * @author Programmer.Wenlong
 * @since 2012-5-2 下午03:01:59
 */
public final class ParameterSetUtil {

	private static final transient Log logger = LogFactory.getLog(ParameterSetUtil.class);

	private ParameterSetUtil() {
		super();
	}

	/**
	 * 通过HttpServletRequest中的参数构造ParameterSet对象<br>
	 * 参数格式说明：typeId@String=1001
	 * @author Programmer.Wenlong
	 * @since 2012-5-2 下午03:03:57
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static ParameterSet create(HttpServletRequest request) {
		ParameterSet parameters = new ParameterSet();
		Enumeration<String> enums = request.getParameterNames();
		while (enums.hasMoreElements()) {
			String key = enums.nextElement();
			String[] values = request.getParameterValues(key);

			if (values != null && values.length == 1) {
				// 单个值的参数
				logger.debug("Key=" + key + "\tValue=" + values[0]);
				parameters.put(key, values[0]);

				request.setAttribute(key, values[0]); // 缓存参数
			} else {
				// 多个值的参数
				String value =  Arrays.toString(values);
				value = value.substring(1, value.length() - 1); //[val1,val2]
				logger.debug("Key=" + key + "\tValue=" + value);
				parameters.put(key, value);

				request.setAttribute(key, value); // 缓存参数
			}
		}
		return parameters;
	}

}
