package javax.xianfeng.test.core.reflect;

import java.lang.reflect.Field;

import javax.xianfeng.util.FieldUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-12 下午11:35:49
 */
public class TestFieldUtil {

	private String id;

	@Test
	public void type() {
		System.out.println(String.class.getName());
		Field[] fields = FieldUtil.getFields(TestFieldUtil.class);
		for (Field field : fields) {
			System.out.println(field.getName() + " - " + field.getType().getName());
		}
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
