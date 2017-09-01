package javax.xianfeng.platform.base.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;

import org.hibernate.annotations.GenericGenerator;

/**
 * 行政区划类型
 * @author Programmer.Wenlong
 * @since 2012-3-5 下午11:31:47
 */
@Entity
@Table(name = "SYS_CANT_TYPE")
public class CantType extends StatefulBean {
	private static final long serialVersionUID = -720064767385855310L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "TYPE_ID")
	private String id; // 编码

	@Column(name = "TYPE_NAME")
	private String name; // 名称

	@Column(name = "SEQ")
	private Integer seq; // 序号

	public CantType() {
		super();
	}

	public CantType(String id, String name, Integer seq) {
		super();
		this.id = id;
		this.name = name;
		this.seq = seq;
	}

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

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

}
