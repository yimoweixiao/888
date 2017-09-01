package javax.xianfeng.system.permit.entity;

import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Where;

/**
 * 模块实体类<br>
 * Module:Module = 1:* Module:Function = 1:n
 * 
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:48:55
 */
@Entity
@Table(name = "SYS_MODULE")
public class Module extends StatefulBean {
	private static final long serialVersionUID = -5569653881664305422L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "MODULE_ID")
	private String id; // 主键

	@Column(name = "MODULE_NAME")
	private String name; // 名称

	@Transient
	private String text; // 显示名称

	@Column(name = "SEQ")
	private Integer seq; // 序号：0（默认值）

	@OneToMany(targetEntity = Function.class, mappedBy = "module", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@Where(clause = "PARENT_ID is null")
	@OrderBy("seq")
	private Set<Function> functions; // 一对多双向外键关联

	@Transient
	private Set<Function> usefulFunctions; // 有效的Function集合，级联过滤无任何操作的Function

	@Transient
	private String iconCls = "icon-module"; // 图标

	public Module() {
		super();
	}

	public Module(String id, String name) {
		super();
		this.id = id;
		this.name = name;
		this.seq = 0;
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

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public Set<Function> getFunctions() {
		/*Set<Function> set = new LinkedHashSet<Function>();
		for (Function function : functions) {
			if (function.getParentId() == null) {
				set.add(function);
			}
		}
		return set;*/
		return this.functions;
	}

	public Set<Function> getUsefulFunctions() {
		Set<Function> set = new LinkedHashSet<Function>();
		if (this.functions == null) {
			return set;
		}

		// Module只关联顶级的Function对象，过滤存在级联关系的子级Function对象
		for (Function function : functions) {
			if (function.getParentId() == null) {
				// 级联过滤不包含任何操作的Function对象
				Function functionTmp = Function.getFunctionWithUsefulChildren(function);
				if (functionTmp != null) {
					set.add(functionTmp);
				}
			}
		}
		return set;
	}

	public void setFunctions(Set<Function> functions) {
		this.functions = functions;
	}

	public String getType() {
		return "module";
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

}
