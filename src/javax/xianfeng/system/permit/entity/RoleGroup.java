package javax.xianfeng.system.permit.entity;

import java.io.Serializable;
import java.util.List;

/**
 * 角色组实体类
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:45:01
 */
public class RoleGroup implements Serializable {
	private static final long serialVersionUID = -400882492721570806L;
	private String id; // 主键
	private String name; // 名称
	private String desc; // 描述
	private List<Role> roles; // 角色集合

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

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

}
