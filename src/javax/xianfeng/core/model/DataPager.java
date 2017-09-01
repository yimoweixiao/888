package javax.xianfeng.core.model;

import java.io.Serializable;

/**
 * 分页组件实体类
 * @author Programmer.Wenlong
 * @since 2012-4-30 上午08:39:33
 */
public final class DataPager implements Serializable {

	private static final long serialVersionUID = -4380299835191332623L;

	public static int DEFAULT_PAGE_LIMIT = 10; // 默认分页大小

	private int pageStart = 0; // 起始页码：0（默认值）

	private int pageLimit = DEFAULT_PAGE_LIMIT; // 分页大小

	private String sortField = null; // 排序字段（暂时只支持单字段排序）

	private String sortDir = "asc"; // 排序规则：asc-升序（默认值）, desc-降序

	private int totalNumber = -1; // 总记录数

	private int pageNumber = -1;; // 总分页数

	/**
	 * 根据总记录数和分页大小计算分页数
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午06:47:46
	 */
	public void setPageNumber() {
		int pageNumber = 0;

		if (totalNumber % pageLimit == 0) {
			pageNumber = totalNumber / pageLimit;
		} else {
			pageNumber = totalNumber / pageLimit + 1;
		}

		this.setPageNumber(pageNumber);
	}

	public int getPageStart() {
		return pageStart;
	}

	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public String getSortField() {
		return sortField;
	}

	public void setSortField(String sortField) {
		this.sortField = sortField;
	}

	public String getSortDir() {
		return sortDir;
	}

	public void setSortDir(String sortDir) {
		this.sortDir = sortDir;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

}
