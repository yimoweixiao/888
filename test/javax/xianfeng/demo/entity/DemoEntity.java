package javax.xianfeng.demo.entity;

import java.io.Serializable;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-8 上午12:07:12
 */
public class DemoEntity implements Serializable {

	private String id;

	private String name;

	private String note;

	public DemoEntity() {
		super();
	}

	public DemoEntity(String id, String name, String note) {
		super();
		this.id = id;
		this.name = name;
		this.note = note;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
