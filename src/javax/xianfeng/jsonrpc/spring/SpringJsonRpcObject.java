package javax.xianfeng.jsonrpc.spring;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

import javax.xianfeng.jsonrpc.JsonRpcInterf;
import javax.xianfeng.spring.annotation.SpringIocX;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.util.FieldUtil;
import javax.xianfeng.util.StringUtil;

import jcore.jsonrpc.common.JsonRpcObject;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * JsonRpcObject的Spring抽象类 通过Spring查找Bean的方式给@Resource标注的属性赋值<br>
 * 1、包含public、protected、private修饰的属性，但是不包含继承的属性<br>
 * 2、不包含static修饰的属性
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午03:22:12
 */
public abstract class SpringJsonRpcObject extends JsonRpcObject implements JsonRpcInterf {

	private final Log logger = LogFactory.getLog(this.getClass());

	@Override
	public void init() {
		logger.info("init JsonRpc fileds with SpringIoc ...");

		Field[] fields = FieldUtil.getFields(this.getClass());
		filedLoop: for (Field field : fields) {
			// 查找@Resource标注的属性
			Map<String, String> map = FieldUtil.getValueOfAnnotation(field, SpringIocX.class);
			if (map == null) {
				continue;
			}

			String beanName = map.get("name");
			if (beanName == null || beanName.length() == 0) {
				continue;
			}

			// 从Spring容器中获取Bean对象
			Object bean = SpringIoc.find(beanName);
			if (bean == null) {
				continue;
			}

			// 调用setter方法给属性赋值
			String methodName = "set" + StringUtil.toUpperOnlyFirst(field.getName());
			try {
				// Class<?> fieldClass = Class.forName(fieldType.toString()).getClass();
				logger.debug(this.getClass().getName() + "." + methodName + "(" + bean.getClass().getName() + ")");

				Method[] methods = this.getClass().getMethods();
				methodLoop: for (Method method : methods) {
					if (!method.getName().equals(methodName)) {
						continue;
					}

					Class<?>[] paramTypes = method.getParameterTypes();
					if (paramTypes.length != 1) {
						continue;
					}

					Class<?>[] interfaceClasses = bean.getClass().getInterfaces();
					for (Class<?> interfaceClass : interfaceClasses) {
						System.out.println("debug: " + interfaceClass.getName() + " - " + (paramTypes[0] == interfaceClass));
						if (paramTypes[0] == interfaceClass) {
							method.invoke(this, bean);
							break methodLoop;
						}
					}
				}
			} catch (SecurityException e) {
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}
	}

}
