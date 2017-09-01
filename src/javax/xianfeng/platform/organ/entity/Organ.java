package javax.xianfeng.platform.organ.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.platform.organ.OrganApi;

import org.hibernate.annotations.GenericGenerator;

/**
 * 组织机构
 * @author Programmer.Wenlong
 * @since 2011-12-3 下午11:53:03
 */
@Entity
@Table(name = "SYS_ORGAN")
public class Organ extends StatefulBean {
	private static final long serialVersionUID = 8742060662745864213L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "ORGAN_ID")
	private String id; // 主键

	@Column(name = "ORGAN_NAME")
	private String name; // 名称
	
	@Transient
	private String text;

	@Column(name = "FULL_NAME")
	private String fullName; // 全称

	@OneToOne(targetEntity = OrganType.class, cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "TYPE_ID")
	private OrganType type; // 类型

	@Column(name = "PARENT_ID")
	private String parentId; // 父节点id
	
	@OneToMany(targetEntity = Organ.class, mappedBy = "children", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@JoinColumn(name = "PARENT_ID")
	@OrderBy("seq")
	private Set<Organ> children; // 子节点

	@Column(name = "STATUS")
	private Boolean status; // 可用状态：true-启用（默认值），false-停用

	@Column(name = "SEQ")
	private Integer seq; // 序号
	
	@Transient
	private String iconCls; // 图标

	public Organ() {
		super();
	}

	public Organ(String id, String name, String fullName, Integer seq) {
		super();
		this.id = id;
		this.name = name;
		this.fullName = fullName;
		this.seq = seq;
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

	public String getText() {
		return name;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public OrganType getType() {
		return type;
	}

	public void setType(OrganType type) {
		this.type = type;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public Set<Organ> getChildren() {
		return children;
	}

	public void setChildren(Set<Organ> children) {
		this.children = children;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getIconCls() {
		if (OrganApi.ORGAN_TYPE_EMP.equals(this.getType().getId())) {
			return "icon-emp";
		} else if (OrganApi.ORGAN_TYPE_POST.equals(this.getType().getId())) {
			return "icon-post";
		} else if (OrganApi.ORGAN_TYPE_DEPT.equals(this.getType().getId())) {
			return "icon-dept";
		} else if (OrganApi.ORGAN_TYPE_CORP.equals(this.getType().getId())) {
			return "icon-corp";
		}
		return iconCls;
	}

}
