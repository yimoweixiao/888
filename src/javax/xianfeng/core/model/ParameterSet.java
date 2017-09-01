package javax.xianfeng.core.model;


/**
 * 参数集合类<br>
 * 说明：<br>
 * （1）ParameterSet继承自BetaSortedMap，具有有序key-value集合的特性<br>
 * （2）ParameterSet中的值都是Object类型<br>
 * （3）如果根据key在ParameterSet中没有查找到值就返回null
 * @author Programmer.Wenlong
 * @since 2011-11-7 下午10:09:51
 */
public final class ParameterSet extends BetaSortedMap<String, Object> {

	private static final long serialVersionUID = 563691457666554252L;

	private DataPager pager; // 分页对象

	public ParameterSet() {
		super();
	}

	public ParameterSet(int size) {
		super(size);
	}

	/**
	 * 添加参数
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:43:33
	 * @param key
	 * @param value
	 */
	public void setParameter(String key, Object value) {
		this.put(key, value);
	}

	/**
	 * 获取参数值
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:43:59
	 * @param key
	 */
	public Object getParameter(String key) {
		return this.get(key);
	}

	/**
	 * 获取String类型的参数值
	 * @author Programmer.Wenlong
	 * @since 2012-10-8 下午11:15:26
	 * @param key
	 * @return
	 */
	public String getString(String key) {
		Object value = this.get(key);
		return value != null ? String.valueOf(value) : null;
	}

	/**
	 * 获取分页组件对象<br>
	 * 说明：只对参数做简单的非空和空字符串校验
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午10:13:56
	 * @return
	 */
	public DataPager getPager() {
		if (this.pager != null) {
			return this.pager;
		}

		this.pager = new DataPager();

		Integer pageStart = (Integer) this.remove("start");
		if (pageStart != null) {
			this.pager.setPageStart(pageStart);
		} else {
			this.pager.setPageStart(0);
		}

		Integer pageLimit = (Integer) this.remove("limit");
		if (pageLimit != null) {
			this.pager.setPageLimit(pageLimit);
		} else {
			this.pager.setPageLimit(DataPager.DEFAULT_PAGE_LIMIT);
		}

		String sortField = (String) this.remove("sortField");
		if (sortField != null && sortField.length() > 0) {
			this.pager.setSortField(sortField);
		}

		String sortDir = (String) this.remove("sortDir");
		if (sortDir != null && sortDir.length() > 0) {
			this.pager.setSortDir(sortDir);
		} else {
			this.pager.setSortDir("asc");
		}

		return this.pager;
	}

}
