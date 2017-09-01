package javax.xianfeng.system.permit.entity;

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
 * 菜单类型
 * @author Programmer.Wenlong
 * @since 2014-5-27 下午03:24:17
 */
@Entity
@Table(name = "SYS_MENU_TYPE")
public class MenuType extends StatefulBean {
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "TYPE_ID")
	private String id; // 主键

	@Column(name = "TYPE_NAME")
	private String name; // 名称

	@Column(name = "TARGET")
	private String target; // 关联对象：角色、用户等

	@Column(name = "STATUS")
	private Boolean status; // 是否启用

	@Column(name = "EDIT_TIME")
	private Date editTime; // 修改时间
	
	@Transient
	private String editTimeStr;

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

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Date getEditTime() {
		return editTime;
	}

	public void setEditTime(Date editTime) {
		this.editTime = editTime;
	}

	public String getEditTimeStr() {
		return DateUtil.format(editTime);
	}

	public void setEditTimeStr(String editTimeStr) {
		this.editTimeStr = editTimeStr;
	}

}
