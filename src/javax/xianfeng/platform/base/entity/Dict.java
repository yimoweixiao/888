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
 * 字典<br>
 * 例如：Sex-性别
 * @author Programmer.Wenlong
 * @since 2011-11-5 下午11:05:25
 */
@Entity
@Table(name = "SYS_DICT")
public class Dict extends StatefulBean {
	private static final long serialVersionUID = -5646879407380980689L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "DICT_CODE")
	private String code; // 字典编码

	@Column(name = "DICT_NAME")
	private String name; // 字典名称

	@Column(name = "EDIT_TIME")
	private Date editTime; // 修改时间
	
	@Transient
	private String editTimeStr;

	@Column(name = "DICT_DESC")
	private String desc; // 描述

	public Dict() {
		super();
	}

	public Dict(String code, String name, String desc) {
		super();
		this.code = code;
		this.name = name;
		this.desc = desc;
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

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
