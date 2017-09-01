package javax.xianfeng.system.portal.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

/**
 * 首页管理
 * @author Programmer.Wenlong
 * @since 2015-3-31 下午11:42:54
 */
@Entity
@Table(name = "SYS_DEFAULT_PAGE")
public class DefaultPage extends StatefulBean {
	
	public static final String DEFAULT_PAGE_TYPE_ROLE = "ROLE";
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "PAGE_ID")
	private String id; //主键
	
	@Column(name = "PAGE_NAME")
	private String name; //名称
	
	@Column(name = "TARGET_TYPE")
	private String targetType; //关联类型：System.DefaultPage.Type
	
	@Column(name = "TARGET_ID")
	private String targetId; //关联主键
	
	@Column(name = "PAGE_URL")
	private String url; //页面链接
	
	@Column(name = "NOTE")
	private String note; //备注
	
	@Column(name = "SEQ")
	private String seq; //序号

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

	public String getTargetType() {
		return targetType;
	}

	public void setTargetType(String targetType) {
		this.targetType = targetType;
	}

	public String getTargetId() {
		return targetId;
	}

	public void setTargetId(String targetId) {
		this.targetId = targetId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}
	
}
