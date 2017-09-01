package javax.xianfeng.system.permit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-15 下午04:46:11
 */
@Entity
@Table(name = "SYS_USER_ROLE")
@IdClass(UserRolePk.class)
public class UserRole extends StatefulBean {

	@Id
	@Column(name = "USER_ID")
	private String userId;
	
	@Id
	@Column(name = "ROLE_ID")
	private String roleId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	
}
