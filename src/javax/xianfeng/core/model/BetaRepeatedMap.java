package javax.xianfeng.core.model;

import java.util.ArrayList;
import java.util.List;

/**
 * 扩展的有序、可有重复元素的key-value集合类<br>
 * 虚拟实现了有序、可有重复元素的key-value集合，特点如下：<br>
 * （1）有序：按照set的先后顺序进行排序，key相同的元素也会按照set的先后顺序排序<br>
 * （2）可有重复元素：可以存在多个key相同的元素<br>
 * （3）元素的名称不能为null，元素的值可以为null<br>
 * key集合保存元素的键，value集合保存元素的值，可以通过key集合中key的值在value集合中找到一个或者多个值与之对应<br>
 * @author Programmer.Wenlong
 * @since 2012-5-17 下午03:52:02
 */
public class BetaRepeatedMap<K, V> implements BetaMap<K, V> {

	private static final long serialVersionUID = 8979119057612072335L;

	private List<K> keys; // key集合

	private List<V> values; // value集合

	public BetaRepeatedMap() {
		this(10);
	}

	public BetaRepeatedMap(int size) {
		super();
		this.keys = new ArrayList<K>();
		this.values = new ArrayList<V>();
	}

	@Override
	public synchronized void clear() {
		this.keys.clear();
		this.values.clear();
	}

	@Override
	public V get(K key) {
		// 查找元素
		int index = this.indexOf(key);
		return this.values.get(index);
	}

	@Override
	public boolean isEmpty() {
		return this.keys.size() == 0 ? true : false;
	}

	@Override
	public List<K> keys() {
		return this.keys;
	}

	@Override
	public synchronized void put(K key, V value) {
		// 过滤键无效的元素
		if (key == null) {
			throw new NullPointerException("key is null");
		}
		// 添加元素
		this.keys.add(key);
		this.values.add(value);
	}

	@Override
	public synchronized V remove(K key) {
		// 查找元素
		int index = this.indexOf(key);
		V value = this.values.get(index);

		// 删除元素
		this.keys.remove(index);
		this.values.remove(index);

		// 返回删除的元素
		return value;
	}

	@Override
	public int size() {
		return this.keys.size();
	}

	@Override
	public List<V> values() {
		return this.values;
	}

	/**
	 * 查找key的索引
	 * @author Programmer.Wenlong
	 * @since 2012-5-17 下午04:12:57
	 * @param key
	 * @return
	 */
	private int indexOf(K key) {
		int index = -1;
		for (int i = 0, size = this.keys.size(); i < size; i++) {
			if (this.keys.get(i).equals(key)) {
				index = i;
				break;
			}
		}
		return index;
	}

}
