package javax.xianfeng.core.model;

import java.util.ArrayList;
import java.util.Collection;

/**
 * 扩展的有序、无重复元素的List集合类<br>
 * 说明：<br>
 * （1）有序：按照add的先后顺序进行排序<br>
 * （2）无重复元素：相同的元素会覆盖<br>
 * @author Programmer.Wenlong
 * @since 2012-5-13 上午10:56:08
 */
@SuppressWarnings("hiding")
public class BetaUniqueList<E> extends ArrayList<E> {

	private static final long serialVersionUID = 1983804325716492077L;

	public BetaUniqueList() {
		super();
	}

	public BetaUniqueList(int size) {
		super(size);
	}

	public BetaUniqueList(Collection<? extends E> c) {
		super(c);
	}

	/**
	 * 添加元素<br>
	 * 说明：如果有重复元素，就先删除后添加
	 * @param obj
	 */
	@Override
	public boolean add(E obj) {
		if (this.contains(obj)) {
			this.remove(obj);
		}
		return super.add(obj);
	}

}
