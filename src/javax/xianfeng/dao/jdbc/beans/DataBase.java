package javax.xianfeng.dao.jdbc.beans;

import java.sql.Driver;

/**
 * 数据库实体类
 * @author Programmer.Wenlong
 * @since 2011-11-26 下午11:59:33
 */
public class DataBase {

	private Driver driver; // 驱动类

	private String url; // 连接字符串

	private String user; // 用户名

	private String password; // 密码

	public DataBase() {
		super();
	}

	public DataBase(Driver driver, String url, String user, String password) {
		super();
		this.driver = driver;
		this.url = url;
		this.user = user;
		this.password = password;
	}

	public Driver getDriver() {
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
