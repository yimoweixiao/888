package javax.xianfeng.platform.base.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.util.DateUtil;

import org.hibernate.annotations.GenericGenerator;

/**
 * 系统属性<br>
 * 例如：System.Default.Title=xxx系统<br>
 * 为了方便管理，通过分隔符标识模块结构
 * @author Programmer.Wenlong
 * @since 2012-2-24 下午04:53:02
 */
@Entity
@Table(name = "SYS_PROP")
public class Property extends StatefulBean {
	private static final long serialVersionUID = -5115591880170167393L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "PROP_ID")
	private String id; // 主键

	@Column(name = "PROP_VALUE")
	private String value; // 属性值

	@Column(name = "EDIT_TIME")
	private Date editTime; // 保存时间
	
	@Transient
	private String editTimeStr;

	@Column(name = "PROP_DESC")
	private String desc; // 描述

	@Column(name = "SEQ")
	private Integer seq; // 序号

	public Property() {
		super();
	}

	public Property(String id, String value, String desc, Integer seq) {
		super();
		this.id = id;
		this.value = value;
		this.desc = desc;
		this.seq = seq;
		this.editTime = new Date();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

}
