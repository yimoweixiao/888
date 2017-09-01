package javax.xianfeng.demo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午03:06:48
 */
@Entity(name = "DEMO_TABLE2")
public class DemoEntity2 implements Serializable {
	@Id
	private Long id;

	@Column(unique = true)
	private String name;

	@Column(name = "note")
	private String note;

	public DemoEntity2() {
		super();
	}

	public DemoEntity2(String name, String note) {
		super();
		this.name = name;
		this.note = note;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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
