package javax.xianfeng.system.permit.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * 操作实体类<br>
 * Operation:Fucntion = n:1
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:47:52
 */
@Entity
@Table(name = "SYS_OPERATION")
public class Operation extends StatefulBean {
	private static final long serialVersionUID = -383766436369080074L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "OPERATION_ID")
	private String id; // 主键

	@Column(name = "OPERATION_NAME")
	private String name; // 名称
	
	@Transient
	private String text;
	
	@Transient
	private Boolean checked;

	@Column(name = "TARGET")
	private String target; // 操作目标标识符

	@ManyToOne(targetEntity = Function.class, fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST })
	@JoinColumn(name = "FUNCTION_ID")
	@JsonIgnore
	private Function function; // 功能

	@Column(name = "SEQ")
	private Integer seq; // 序号：0（默认值）
	
	@Transient
	private String iconCls = "icon-operation"; // 图标

	public Operation() {
		super();
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

	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}

	public Function getFunction() {
		return function;
	}

	public void setFunction(Function function) {
		this.function = function;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

}
