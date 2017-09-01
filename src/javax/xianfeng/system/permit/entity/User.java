package javax.xianfeng.system.permit.entity;

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
 * 用户实体类
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:43:10
 */
@Entity
@Table(name = "SYS_USER")
public class User extends StatefulBean {
	private static final long serialVersionUID = -8246522534409667951L;
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "USER_ID")
	private String id; // 用户id

	@Column(name = "USER_TYPE")
	private String type; // 类型：System.User.Type

	@Column(name = "USER_NAME")
	private String name; // 用户名

	@Column(name = "PASSWORD")
	private String password; // 密码

	@Column(name = "STATUS")
	private String status; // 状态：System.User.Status

	@Column(name = "EDIT_TIME")
	private Date editTime; // 更新时间
	
	@Transient
	private String editTimeStr;
	
	@Column(name = "ORGAN_ID")
	private String organId; //组织员工id

	@Column(name = "QUESTION")
	private String question; // 预留问题

	@Column(name = "ANSWER")
	private String answer; // 预留问题答案

	@Column(name = "REGIST_TIME")
	private Date registTime; // 注册时间
	
	@Transient
	private String registTimeStr;
	
	public User() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getEditTime() {
		return editTime;
	}

	public String getEditTimeStr() {
		return DateUtil.format(this.editTime);
	}

	public void setEditTimeStr(String editTimeStr) {
		this.editTimeStr = editTimeStr;
	}

	public void setRegistTimeStr(String registTimeStr) {
		this.registTimeStr = registTimeStr;
	}

	public void setEditTime(Date editTime) {
		this.editTime = editTime;
	}

	public String getOrganId() {
		return organId;
	}

	public void setOrganId(String organId) {
		this.organId = organId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getRegistTime() {
		return registTime;
	}
	
	public String getRegistTimeStr() {
		return DateUtil.format(this.registTime);
	}


	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

}
