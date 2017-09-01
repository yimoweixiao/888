package javax.xianfeng.system.permit.entity;

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

/**
 * 菜单<br>
 * Menu:Menu = 1:*
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:49:33
 */
@Entity
@Table(name = "SYS_MENU")
public class Menu extends StatefulBean {
	private static final long serialVersionUID = -95482643224809058L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "MENU_ID")
	private String id; // 主键

	@Column(name = "MENU_NAME")
	private String name; // 名称
	
	@Transient
	private String text; //显示名称

	// 多对一单向外键关联
	@ManyToOne(targetEntity = MenuType.class, fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST })
	@JoinColumn(name = "TYPE_ID")
	private MenuType type;

	@Column(name = "PARENT_ID")
	private String parentId; // 父节点id

	@Column(name = "MENU_URL")
	private String url; // 链接地址

	@Column(name = "LINK_TYPE")
	private String linkType; // 链接类型：System.Menu.LinkType

	@Column(name = "DEFINE_TYPE")
	private String defineType; // 类型定义：Script实例化组件的类型、Frame框架名称等，结合openType使用

	@Column(name = "OPEN_TYPE")
	private String openType; // 打开方式：System.Menu.OpenType

	@Column(name = "MENU_ICON1")
	private String icon1; // 1号图标（16*16）

	@Column(name = "MENU_ICON2")
	private String icon2; // 2号图标（32*32）

	@Column(name = "MENU_ICON3")
	private String icon3; // 3号图标（48*48）

	@Column(name = "STATUS")
	private Boolean status; // 启用状态：true-启用、false-停用

	@Transient
	private Boolean display; // 是否显示：true-显示、false-隐藏

	@Column(name = "IS_LEAF")
	private Boolean isLeaf; // 是否叶子节点

	@OneToMany(targetEntity = Menu.class, mappedBy = "children", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "PARENT_ID")
	@OrderBy("seq")
	private Set<Menu> children; // 子节点

	@Column(name = "SEQ")
	private Integer seq; // 序号：1（默认值）

	public Menu() {
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

	public MenuType getType() {
		return type;
	}

	public void setType(MenuType type) {
		this.type = type;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getLinkType() {
		return linkType;
	}

	public void setLinkType(String linkType) {
		this.linkType = linkType;
	}

	public String getDefineType() {
		return defineType;
	}

	public void setDefineType(String defineType) {
		this.defineType = defineType;
	}

	public String getOpenType() {
		return openType;
	}

	public void setOpenType(String openType) {
		this.openType = openType;
	}

	public String getIcon1() {
		return icon1;
	}

	public void setIcon1(String icon1) {
		this.icon1 = icon1;
	}

	public String getIcon2() {
		return icon2;
	}

	public void setIcon2(String icon2) {
		this.icon2 = icon2;
	}

	public String getIcon3() {
		return icon3;
	}

	public void setIcon3(String icon3) {
		this.icon3 = icon3;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Boolean getDisplay() {
		return display;
	}

	public void setDisplay(Boolean display) {
		this.display = display;
	}

	public Boolean getIsLeaf() {
		return isLeaf;
	}

	public void setIsLeaf(Boolean isLeaf) {
		this.isLeaf = isLeaf;
	}

	public Set<Menu> getChildren() {
		return children;
	}

	public void setChildren(Set<Menu> children) {
		this.children = children;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

}
