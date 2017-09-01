package javax.xianfeng.platform.base.entity;

import java.util.Date;
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
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.util.DateUtil;

import org.hibernate.annotations.GenericGenerator;

/**
 * 字典项<br>
 * 例如：1-男，0-女
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:07:10
 */
@Entity
@Table(name = "SYS_DICT_ITEM")
public class DictItem extends StatefulBean {
	private static final long serialVersionUID = -377812468484463777L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "ITEM_CODE")
	private String code; // 字典项编码

	@Column(name = "ITEM_VALUE")
	private String value; // 字典项值

	@Column(name = "DICT_CODE")
	private String dictCode; // 字典编码

	@Column(name = "PARENT_CODE")
	private String parentCode; // 父项编码

	@Column(name = "EDIT_TIME")
	private Date editTime; // 修改时间
	
	@Transient
	private String editTimeStr;

	@Column(name = "ITEM_DESC")
	private String desc; // 描述

	@Column(name = "SEQ")
	private Integer seq; // 序号

	@Column(name = "STATUS")
	private Boolean status; // 可用状态：true-启用（默认值），false-停用

	// 一对多单向外键关联
	@OneToMany(targetEntity = DictItem.class, mappedBy = "children", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@JoinColumn(name = "PARENT_CODE")
	@OrderBy("seq")
	private Set<DictItem> children;

	public DictItem() {
		super();
	}

	public DictItem(String code, String value, String dictCode, Integer seq) {
		super();
		this.code = code;
		this.value = value;
		this.dictCode = dictCode;
		this.seq = seq;
		this.editTime = new Date();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getDictCode() {
		return dictCode;
	}

	public void setDictCode(String dictCode) {
		this.dictCode = dictCode;
	}

	public String getParentCode() {
		return parentCode;
	}

	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getEditTime() {
		return editTime;
	}

	public void setEditTime(Date editTime) {
		this.editTime = editTime;
	}

	public String getEditTimeStr() {
		return DateUtil.format(this.editTime);
	}

	public void setEditTimeStr(String editTimeStr) {
		this.editTimeStr = editTimeStr;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Set<DictItem> getChildren() {
		return children;
	}

	public void setChildren(Set<DictItem> children) {
		this.children = children;
	}

}
