package javax.xianfeng.system.permit.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

/**
 * 角色实体类
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:45:08
 */
@Entity
@Table(name = "SYS_ROLE")
public class Role extends StatefulBean {
	private static final long serialVersionUID = -2353557725205623168L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "ROLE_ID")
	private String id; // 主键

	@Column(name = "ROLE_NAME")
	private String name; // 名称

	@Column(name = "ROLE_DESC")
	private String desc; // 描述

	@OneToMany(targetEntity = Operation.class, fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
	@JoinTable(name = "SYS_ROLE_OPERATION", joinColumns = @JoinColumn(name = "ROLE_ID", nullable = true), inverseJoinColumns = @JoinColumn(name = "OPERATION_ID", nullable = true))
	private Set<Operation> operations; // 一对多单向中间表关联

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

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Set<Operation> getOperations() {
		return operations;
	}

	public void setOperations(Set<Operation> operations) {
		this.operations = operations;
	}

}
