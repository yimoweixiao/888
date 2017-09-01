package javax.xianfeng.dao.jdbc.beans;

/**
 * 数据库-表-字段实体类
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午01:52:57
 */
public class DataBaseField {

	private String name; // 字段名

	private String type; // 类型

	private int length; // 长度

	private int decimal; // 精度

	private boolean required; // 不为空

	private String constraint; // 字段级约束

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

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public int getDecimal() {
		return decimal;
	}

	public void setDecimal(int decimal) {
		this.decimal = decimal;
	}

	public boolean getRequired() {
		return required;
	}

	public void setRequired(boolean required) {
		this.required = required;
	}

	public String getConstraint() {
		return constraint;
	}

	public void setConstraint(String constraint) {
		this.constraint = constraint;
	}

}
