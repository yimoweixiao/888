package javax.xianfeng.demo.entity;

/**
 * 测试实体类
 * @author Programmer.Wenlong
 * @since 2012-3-11 下午10:57:40
 */
public class T {

	private String id;

	private String name;

	private boolean state;

	public T() {
		super();
	}

	public T(String id, String name, boolean state) {
		super();
		this.id = id;
		this.name = name;
		this.state = state;
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

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

}
