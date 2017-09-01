package javax.xianfeng.core.model;

import java.io.Serializable;

/**
 * 数据属性类
 * @author Programmer.Wenlong
 * @since 2011-11-7 下午10:39:49
 */
public final class DataField implements Serializable {

	private static final long serialVersionUID = 1693709708709579096L;

	private String name; // 属性名

	private String type; // 类型

	private boolean required = false; // 非空：false（默认值）

	private Object defaultValue; // 默认值

	private String rule; // 约束

	public DataField() {
		super();
	}

	public DataField(String name, String type) {
		super();
		this.name = name;
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean isRequired() {
		return required;
	}

	public void setRequired(boolean required) {
		this.required = required;
	}

	public Object getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(Object defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getRule() {
		return rule;
	}

	public void setRule(String rule) {
		this.rule = rule;
	}

}
