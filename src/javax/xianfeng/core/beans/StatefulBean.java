package javax.xianfeng.core.beans;

import java.io.Serializable;

import javax.persistence.Transient;

/**
 * @author Programmer.Wenlong
 * @since 2014-3-17 下午08:06:09
 */
public abstract class StatefulBean implements Serializable {

	@Transient
	protected int state = -1;

	public static final int STATE_CREATE = 0; // 新建

	public static final int STATE_UPDATE = 1; // 更新

	public static final int STATE_DELETE = 2; // 删除

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

}
