package javax.xianfeng.core.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * 数据对象类<br>
 * 说明：<br>
 * （1）Map集合中，key为字段名，即field对象的name属性，value为字段的值<br>
 * （2）属性“@key”和“@value”为扩展属性，用于方便访问key-value格式的数据
 * @author Programmer.Wenlong
 * @since 2011-11-7 下午10:39:41
 */
public class DataRecord implements Serializable {

	private static final long serialVersionUID = 53384796632362902L;

	private Map<String, Object> datas; // 数据集合

	public DataRecord() {
		this(10);
	}

	/**
	 * 构造器
	 * @param size 指定数据对象的属性个数
	 */
	public DataRecord(int size) {
		super();
		datas = new HashMap<String, Object>(size);
	}

	/**
	 * 扩展方法：获取@key
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午04:56:59
	 * @return
	 */
	public String getKey() {
		Object key = this.datas.get("@key");
		return key == null ? null : key.toString();
	}

	/**
	 * 扩展方法：获取@value
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午04:57:10
	 * @return
	 */
	public String getValue() {
		Object value = this.datas.get("@value");
		return value == null ? null : value.toString();
	}

	public Object get(String name) {
		return this.datas.get(name);
	}

	public void set(String name, Object value) {
		this.datas.put(name, value);
	}

}
