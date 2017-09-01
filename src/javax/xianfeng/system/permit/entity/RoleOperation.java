package javax.xianfeng.system.permit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-30 下午02:25:32
 */
@Entity
@Table(name = "SYS_ROLE_OPERATION")
@IdClass(RoleOperationPk.class)
public class RoleOperation extends StatefulBean {

	@Id
	@Column(name = "ROLE_ID")
	private String roleId; // 角色id

	@Id
	@Column(name = "OPERATION_ID")
	private String operationId; // 操作id

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
