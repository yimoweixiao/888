package javax.xianfeng.plugin.json;

/**
 * JSON元素实体类<br>
 * @author Programmer.Wenlong
 * @since 2012-1-16 下午10:35:13
 */
public class JsonItem {

	private String code; // 编码

	private String value; // 码值

	public JsonItem() {
		super();
	}

	public JsonItem(String code, String value) {
		super();
		this.code = code;
		this.value = value;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
