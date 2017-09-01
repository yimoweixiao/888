package javax.xianfeng.platform.organ.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 下午01:57:06
 */
@Embeddable
public class OrganRulePk implements Serializable {
	@Column(name = "TYPE_ID")
	private String typeId; // 组织机构类型id

	@Column(name = "CHILD_ID")
	private String childId; // 下级类型id

	public OrganRulePk() {
		super();
	}

	public OrganRulePk(String typeId, String childId) {
		super();
		this.typeId = typeId;
		this.childId = childId;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null) {
			return false;
		} else if (obj instanceof OrganRulePk) {
			OrganRulePk target = (OrganRulePk) (obj);
			if (this.typeId.equals(target.typeId) && this.childId.equals(target.childId)) {
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
		if (this.typeId != null) {
			result = prime * result + this.typeId.hashCode();
		}
		if (this.childId != null) {
			result = prime * result + this.childId.hashCode();
		}
		return result;
	}

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public String getChildId() {
		return childId;
	}

	public void setChildId(String childId) {
		this.childId = childId;
	}

}
