package javax.xianfeng.platform.organ.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

/**
 * 组织机构规则
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午11:38:38
 */
@Entity
@Table(name = "SYS_ORGAN_RULE")
@IdClass(OrganRulePk.class)
public class OrganRule extends StatefulBean {
	@Id
	@Column(name = "TYPE_ID")
	private String typeId; // 组织机构类型id

	@Id
	@Column(name = "CHILD_ID")
	private String childId; // 下级类型id

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
