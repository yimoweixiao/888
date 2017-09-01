package javax.xianfeng.platform.base.entity;

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
 * 流水号
 * @author Programmer.Wenlong
 * @since 2012-2-28 下午11:46:00
 */
@Entity
@Table(name = "SYS_SERIAL_NO")
public class SerialNo extends StatefulBean {
	private static final long serialVersionUID = -1691123226555455933L;

	@Transient
	public static final String YYYY = "YYYY";

	@Transient
	public static final String YY = "YY";

	@Transient
	public static final String MM = "MM";

	@Transient
	public static final String DD = "DD";

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "NO_CODE")
	private String code; // 编码

	@Column(name = "NO_NAME")
	private String name; // 名称

	@Column(name = "NO_PREFIX")
	private String prefix; // 前缀

	@Column(name = "NO_SUFFIX")
	private String suffix; // 后缀

	@Column(name = "NO_VALUE")
	private Long value; // 当前值

	@Column(name = "NO_LENGTH")
	private Integer length; // 号码长度

	@Column(name = "NO_TYPE")
	private String type; // 流水类型：YMD规则

	@Column(name = "EDIT_TIME")
	private Date editTime; // 保存时间

	@Transient
	private String editTimeStr;
	
	public SerialNo() {
		super();
	}

	public SerialNo(String code, String name, String prefix, String suffix, Long value, Integer length, String type) {
		super();
		this.code = code;
		this.name = name;
		this.prefix = prefix;
		this.suffix = suffix;
		this.value = value;
		this.length = length;
		this.type = type;
		this.editTime = new Date();
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrefix() {
		return prefix;
	}

	public void setPrefix(String prefix) {
		this.prefix = prefix;
	}

	public String getSuffix() {
		return suffix;
	}

	public void setSuffix(String suffix) {
		this.suffix = suffix;
	}

	public Long getValue() {
		return value;
	}

	public void setValue(Long value) {
		this.value = value;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getEditTime() {
		return editTime;
	}

	public void setEditTime(Date editTime) {
		this.editTime = editTime;
	}

	public String getEditTimeStr() {
		return DateUtil.format(this.editTime);
	}

	public void setEditTimeStr(String editTimeStr) {
		this.editTimeStr = editTimeStr;
	}

}
