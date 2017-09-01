package javax.xianfeng.system.permit.entity;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * 功能实体类<br>
 * 补充说明：子功能不能和操作并存，否则权限功能树将出现多个children子节点问题
 * Function:Operation = 1:n
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:49:00
 */
@Entity
@Table(name = "SYS_FUNCTION")
public class Function extends StatefulBean {
	private static final long serialVersionUID = 6433711201587357123L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "FUNCTION_ID")
	private String id; // 主键

	@Column(name = "FUNCTION_NAME")
	private String name; // 名称
	
	@Transient
	private String text; //显示名称

	@ManyToOne(targetEntity = Module.class, fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST })
	@JoinColumn(name = "MODULE_ID")
	@JsonIgnore
	private Module module; // 模块

	@Column(name = "PARENT_ID")
	private String parentId; // 父级id

	@Column(name = "SEQ")
	private Integer seq; // 序号：0（默认值）

	@OneToMany(targetEntity = Function.class, mappedBy = "children", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@JoinColumn(name = "PARENT_ID")
	@OrderBy("seq")
	private Set<Function> children; // 一对多单向外键关联

	@OneToMany(targetEntity = Operation.class, mappedBy = "function", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@OrderBy("seq")
	private Set<Operation> operations; // 一对多双向外键关联

	@Transient
	private String iconCls = "icon-function"; // 图标

	public Function() {
		super();
	}

	/**
	 * 获取包含操作有效叶子节点的Function对象 如果存在不包含操作的叶子节点，就移除
	 * @author Programmer.Wenlong
	 * @since 2014-6-10 上午10:53:04
	 * @param f
	 * @return
	 */
	public static Function getFunctionWithUsefulChildren(Function function) {
		Set<Function> children = function.getChildren();
		if (children != null && children.size() > 0) {
			// 子节点，递归调用
			Set<Function> childrenNew = new LinkedHashSet<Function>();
			for (Function f : children) {
				Function tmp = getFunctionWithUsefulChildren(f);
				if (tmp != null) {
					childrenNew.add(tmp);
				}
			}
			function.setChildren(childrenNew);
			return function;
		} else {
			// 叶子节点
			Set<Operation> operations = function.getOperations();
			if (operations == null || operations.size() == 0) {
				return null;
			} else {
				return function;
			}
		}
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

	public Module getModule() {
		return module;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public Set<Function> getChildren() {
		return children;
	}

	public void setChildren(Set<Function> children) {
		this.children = children;
	}

	public Set<Operation> getOperations() {
		return operations;
	}

	public void setOperations(Set<Operation> operations) {
		this.operations = operations;
	}
	
	public String getType() {
		return "function";
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

}
