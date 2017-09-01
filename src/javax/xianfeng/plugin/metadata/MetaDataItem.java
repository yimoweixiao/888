package javax.xianfeng.plugin.metadata;

import java.io.Serializable;

/**
 * 元数据项实体类
 * @author Programmer.Wenlong
 * @since 2012-2-24 下午05:07:32
 */
public class MetaDataItem implements Serializable {

	private static final long serialVersionUID = 5884993800992574847L;

	private String key; // 键

	private String value; // 值

	private boolean state = true; // 可用状态：true-启用（默认值），false-停用

	public MetaDataItem() {
		super();
	}

	public MetaDataItem(String key, String value) {
		super();
		this.key = key;
		this.value = value;
	}

	/**
	 * 判断元数据是否相同<br>
	 * 判断依据：元数据键名称
	 * @param obj
	 */
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof MetaDataItem) {
			MetaDataItem item = (MetaDataItem) obj;
			return this.key.equals(item.key);
		}
		return false;
	}

	@Override
	public int hashCode() {
		return this.key.hashCode() * 13;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public boolean getState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

}
