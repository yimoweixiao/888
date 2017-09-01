package javax.xianfeng.core.model;


/**
 * 返回值集合类
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午08:35:22
 */
public class ResultSet extends BetaSortedMap<String, Object> {

	private static final long serialVersionUID = 2012194352667448423L;

	public ResultSet() {
		super();
	}

	public ResultSet(int size) {
		super(size);
	}

	/**
	 * 设置返回值
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:44:50
	 * @param key
	 * @param value
	 */
	public void setResult(String key, Object value) {
		this.put(key, value);
	}

	/**
	 * 获取返回值
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:45:17
	 * @param key
	 * @return
	 */
	public Object getResult(String key) {
		return this.get(key);
	}

	/**
	 * 删除返回值
	 * @author Programmer.Wenlong
	 * @since 2013-1-1 下午09:43:52
	 * @param key
	 * @return
	 */
	public Object remove(String key) {
		return super.remove(key);
	}
}
