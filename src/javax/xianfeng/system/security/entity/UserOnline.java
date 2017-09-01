package javax.xianfeng.system.security.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.dao.UUIDCreator;
import javax.xianfeng.system.permit.entity.User;

import org.hibernate.annotations.GenericGenerator;

/**
 * 用户在线记录
 * @author Programmer.Wenlong
 * @since 2012-3-3 上午12:19:04
 */
@Entity
@Table(name = "SYS_USER_ONLINE")
public class UserOnline extends StatefulBean {
	
	private static final long serialVersionUID = -9053561180744593514L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "ID")
	private String id;
	
	// 多对一单向外键关联
	@ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER, cascade = { CascadeType.PERSIST })
	@JoinColumn(name = "USER_ID")
	public User user; // 用户
	
	@Column(name = "LOGIN_IP")
	private String loginIp; // 登录ip
	
	@Column(name = "SESSION_ID")
	private String sessionId; // 会话id
	
	@Column(name = "LOGIN_TIME")
	private Date loginTime; // 登录时间
	
	@Column(name = "LOGOUT_TIME")
	private Date logoutTime; // 退出时间
	
	public UserOnline() {
		super();
	}

	public UserOnline(User user, String loginIp, String sessionId) {
		super();
		this.id = UUIDCreator.newInstance().getId();
		this.user = user;
		this.loginIp = loginIp;
		this.sessionId = sessionId;
		this.loginTime = new Date();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public String getLoginIp() {
		return loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public Date getLogoutTime() {
		return logoutTime;
	}

	public void setLogoutTime(Date logoutTime) {
		this.logoutTime = logoutTime;
	}

}
