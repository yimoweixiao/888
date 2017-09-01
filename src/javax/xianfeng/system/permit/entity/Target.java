package javax.xianfeng.system.permit.entity;

import java.io.Serializable;

/**
 * 操作对象实体类<br>
 * @author Programmer.Wenlong
 * @since 2011-11-17 上午12:54:52
 */
public class Target implements Serializable {
	private static final long serialVersionUID = -3286896689975938679L;
	private String id; // 主键
	private String name; // 名称
	private String uri; // 定位标示符

	public Target() {
		super();
	}

	public Target(String id, String name, String uri) {
		super();
		this.id = id;
		this.name = name;
		this.uri = uri;
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

	public String getUri() {
		return uri;
	}

	public void setUri(String uri) {
		this.uri = uri;
	}

}
