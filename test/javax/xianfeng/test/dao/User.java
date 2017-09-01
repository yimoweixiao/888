package javax.xianfeng.test.dao;

import java.io.Serializable;
import java.util.Date;

import javax.xianfeng.dao.jdbc.annotation.Column;
import javax.xianfeng.dao.jdbc.annotation.Id;
import javax.xianfeng.dao.jdbc.annotation.Table;

/**
 * 测试实体类
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午02:11:54
 */
@Table(name = "demo_user")
public class User implements Serializable {
	private static final long serialVersionUID = -8755166823985147647L;
	@Id(length = 32)
	private String id;
	@Column(length = 32)
	private String name;
	@Column(length = 3)
	private Integer age;
	@Column
	private Date birthday;

	public User() {
		super();
	}

	public User(String name, Integer age, Date birthday) {
		super();
		this.name = name;
		this.age = age;
		this.birthday = birthday;
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

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

}
