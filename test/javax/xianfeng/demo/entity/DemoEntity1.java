package javax.xianfeng.demo.entity;

import java.io.Serializable;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-12 下午03:06:48
 */
public class DemoEntity1 implements Serializable {

	private Long id;

	private String name;

	private Integer age;

	private String note;

	public DemoEntity1() {
		super();
	}

	public DemoEntity1(String name, Integer age, String note) {
		super();
		this.name = name;
		this.age = age;
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

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

}
