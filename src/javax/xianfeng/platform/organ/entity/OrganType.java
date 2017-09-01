package javax.xianfeng.platform.organ.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

/**
 * 组织机构类型
 * @author Programmer.Wenlong
 * @since 2011-12-22 下午03:29:33
 */
@Entity
@Table(name = "SYS_ORGAN_TYPE")
public class OrganType extends StatefulBean {
	private static final long serialVersionUID = -8540438009253415087L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "TYPE_ID")
	private String id; // 主键

	@Column(name = "TYPE_NAME")
	private String name; // 名称

	@Column(name = "IS_LEAF")
	private Boolean isLeaf; // 是否叶子节点

	@Column(name = "SEQ")
	private Integer seq; // 序号

	public OrganType() {
		super();
	}

	public OrganType(String id, String name, Integer seq, Boolean isLeaf) {
		super();
		this.id = id;
		this.name = name;
		this.isLeaf = isLeaf;
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

	public Boolean getIsLeaf() {
		return isLeaf;
	}

	public void setIsLeaf(Boolean isLeaf) {
		this.isLeaf = isLeaf;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

}
