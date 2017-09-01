package javax.xianfeng.system.permit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 下午01:57:06
 */
@Embeddable
public class UserRolePk implements Serializable {
	@Column(name = "USER_ID")
	private String userId; // 用户id
	
	@Column(name = "ROLE_ID")
	private String roleId; // 角色id


	public UserRolePk() {
		super();
	}

	public UserRolePk(String roleId, String userId) {
		super();
		this.roleId = roleId;
		this.userId = userId;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		} else if (obj instanceof UserRolePk) {
			UserRolePk target = (UserRolePk) (obj);
			if (this.roleId.equals(target.roleId) && this.userId.equals(target.userId)) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	@Override
	public int hashCode() {
		int prime = 31;
		int result = 1;
		if (this.roleId != null) {
			result = prime * result + this.roleId.hashCode();
		}
		if (this.userId != null) {
			result = prime * result + this.userId.hashCode();
		}
		return result;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}
