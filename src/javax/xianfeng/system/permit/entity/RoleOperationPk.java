package javax.xianfeng.system.permit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 下午01:57:06
 */
@Embeddable
public class RoleOperationPk implements Serializable {
	@Column(name = "ROLE_ID")
	private String roleId; // 角色id

	@Column(name = "OPERATION_ID")
	private String operationId; // 操作id

	public RoleOperationPk() {
		super();
	}

	public RoleOperationPk(String roleId, String operationId) {
		super();
		this.roleId = roleId;
		this.operationId = operationId;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		} else if (obj instanceof RoleOperationPk) {
			RoleOperationPk target = (RoleOperationPk) (obj);
			if (this.roleId.equals(target.roleId) && this.operationId.equals(target.operationId)) {
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
		if (this.operationId != null) {
			result = prime * result + this.operationId.hashCode();
		}
		return result;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getOperationId() {
		return operationId;
	}

	public void setOperationId(String operationId) {
		this.operationId = operationId;
	}

}
