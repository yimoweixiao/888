package javax.xianfeng.dao.jdbc.beans;

import java.util.ArrayList;
import java.util.List;

/**
 * 数据库-表实体类
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午01:53:04
 */
public class DataBaseTable {

	private String name; // 表名

	private List<DataBaseField> keyFields = new ArrayList<DataBaseField>(); // 主键集合

	private List<DataBaseField> fields = new ArrayList<DataBaseField>(); // 字段集合

	private String constraint; // 表级约束

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<DataBaseField> getKeyFields() {
		return keyFields;
	}

	public void setKeyFields(List<DataBaseField> keyFields) {
		this.keyFields = keyFields;
	}

	public List<DataBaseField> getFields() {
		return fields;
	}

	public void setFields(List<DataBaseField> fields) {
		this.fields = fields;
	}

	public String getConstraint() {
		return constraint;
	}

	public void setConstraint(String constraint) {
		this.constraint = constraint;
	}

}
