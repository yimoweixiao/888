package javax.xianfeng.dao.template;

import java.io.Serializable;

/**
 * DAO查询模板类
 * @author Programmer.Wenlong
 * @since 2012-10-6 下午11:05:25
 */
public class BaseQueryTemplate implements Serializable {

	private static final long serialVersionUID = -5024887770975381149L;

	private String sql; // 查询语句

	private int[] types; // 查询参数类型数组

	private Object[] args; // 参数对象数组

	public BaseQueryTemplate() {
		super();
	}

	public BaseQueryTemplate(String sql, int[] types, Object[] args) {
		this();
		this.sql = sql;
		this.types = types;
		this.args = args;
	}

	public String getSql() {
		return sql;
	}

	public void setSql(String sql) {
		this.sql = sql;
	}

	public int[] getTypes() {
		return types;
	}

	public void setTypes(int[] types) {
		this.types = types;
	}

	public Object[] getArgs() {
		return args;
	}

	public void setArgs(Object[] args) {
		this.args = args;
	}

}
