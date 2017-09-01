package javax.xianfeng.core.model;

import java.io.Serializable;
import java.util.List;

/**
 * 数据集合类 虚拟实现的有序、可重复的数据对象集合，特点如下：<br>
 * 1.有序：按照setter的先后进行排序<br>
 * 2.可重复：可以有重复的元素
 * @author Programmer.Wenlong
 * @since 2011-11-7 下午10:39:29
 */
public final class DataSet implements Serializable {

	private static final long serialVersionUID = -911562597698359807L;

	private ParameterSet parameters; // 参数集合

	private List<DataField> fields; // 字段列表

	private List<DataRecord> records; // 数据列表

	public DataSet() {
		super();
	}

	public DataSet(List<DataField> fields, List<DataRecord> records) {
		this();
		this.fields = fields;
		this.records = records;
	}

	public DataSet(ParameterSet parameters, List<DataField> fields, List<DataRecord> records) {
		this(fields, records);
		this.parameters = parameters;
	}

	/**
	 * 获取索引为i的属性对象
	 * @param i
	 * @return
	 */
	public DataField getField(int i) {
		return this.fields.get(i);
	}

	/**
	 * 增加属性对象
	 * @param field
	 */
	public void addField(DataField field) {
		this.fields.add(field);
	}

	/**
	 * 获取索引为i的数据对象
	 * @param i
	 * @return
	 */
	public DataRecord getRecord(int i) {
		return this.records.get(i);
	}

	/**
	 * 增加数据对象
	 * @param record
	 */
	public void addRecord(DataRecord record) {
		this.records.add(record);
	}

	/**
	 * 获取数据集合的大小
	 * @return
	 */
	public int getSize() {
		return this.records.size();
	}

	public ParameterSet getParameters() {
		return parameters;
	}

	public void setParameters(ParameterSet parameters) {
		this.parameters = parameters;
	}

	public List<DataField> getFields() {
		return this.fields;
	}

	public void setFields(List<DataField> fields) {
		this.fields = fields;
	}

	public List<DataRecord> getRecords() {
		return this.records;
	}

	public void setRecords(List<DataRecord> records) {
		this.records = records;
	}

}
