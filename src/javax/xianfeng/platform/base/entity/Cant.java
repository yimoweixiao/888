package javax.xianfeng.platform.base.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

/**
 * 行政区划 包含原则：高级别类型的行政区划可以包含低级别类型的行政区划，不能包含更高级别类型、同级别类型的行政区划
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:17:17
 */
@Entity
@Table(name = "SYS_CANT")
//@Cache(usage = CacheConcurrencyStrategy.READ_ONLY) 
public class Cant extends StatefulBean {
	private static final long serialVersionUID = -7420243809162983895L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "CANT_CODE")
	private String code; // 编码

	@Column(name = "CANT_NAME")
	private String name; // 名称

	@Column(name = "FULL_NAME")
	private String fullName; // 全称（包含上级行政区域）
	
	@Column(name = "TYPE_ID")
	private String typeId; //类型id

	@Column(name = "PARENT_CODE")
	private String parentCode; // 父级编码

	@Column(name = "POSTCODE")
	private String postcode; // 邮政编码

	@Column(name = "PHONECODE")
	private String phonecode; // 电话区号

	@Column(name = "STATUS")
	private Boolean status; // 可用状态：true-启用（默认值），false-停用

	@Column(name = "SEQ")
	private Integer seq; // 序号

	// 一对多单向外键关联
	@OneToMany(targetEntity = Cant.class, mappedBy = "children", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@JoinColumn(name = "PARENT_CODE")
	@OrderBy("seq")
	private Set<Cant> children; // 子集合

	public Cant() {
		super();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getParentCode() {
		return parentCode;
	}

	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getPhonecode() {
		return phonecode;
	}

	public void setPhonecode(String phonecode) {
		this.phonecode = phonecode;
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

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public Set<Cant> getChildren() {
		return children;
	}

	public void setChildren(Set<Cant> children) {
		this.children = children;
	}

}
