package javax.xianfeng.core.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 扩展的有序、无重复元素的key-value集合类<br>
 * 虚拟实现了有序、无重复元素的key-value集合，特点如下：<br>
 * （1）有序：按照set的先后顺序进行排序<br>
 * （2）无重复元素：key相同的元素会覆盖之前的值<br>
 * （3）元素的名称不能为null，元素的值可以为null<br>
 * key集合保存元素的键，value集合保存元素的值，可以通过key集合中key的值在value集合中找到一个唯一的值与之对应<br>
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午08:37:29
 */
public class BetaSortedMap<K, V> implements BetaMap<K, V> {

	private static final long serialVersionUID = 2313000977475374453L;

	private List<K> keys; // key集合

	private Map<K, V> values; // value集合

	/**
	 * 默认的构造方法，初始化的参数集合大小为10
	 */
	public BetaSortedMap() {
		this(10);
	}

	public BetaSortedMap(int size) {
		super();
		keys = new ArrayList<K>(size);
		values = new HashMap<K, V>(size);
	}

	/**
	 * 添加键为key，值为value的元素
	 * @param key
	 * @param value
	 */
	public synchronized void put(K key, V value) {
		// 过滤键无效的元素
		if (key == null) {
			throw new NullPointerException("key is null");
		}
		// 添加元素
		if (keys.contains(key) == false) {
			keys.add(key); // 把key表示的名称set到keys中
		}
		values.put(key, value); // 把value表示的值set到values中
	}

	/**
	 * 获取键key的值
	 * @param key
	 */
	public V get(K key) {
		return values.get(key);
	}

	/**
	 * 删除参数元素
	 * @param key 键
	 * @return 值
	 */
	public synchronized V remove(K key) {
		keys.remove(key);
		return values.remove(key);
	}

	/**
	 * 清空集合的方法
	 */
	public synchronized void clear() {
		this.keys.clear();
		this.values.clear();
	}

	/**
	 * 获取ParameterSet的大小
	 * @return
	 */
	public int size() {
		return this.keys.size();
	}

	/**
	 * 判断集合是否含有元素
	 * @return
	 */
	public boolean isEmpty() {
		return this.keys.size() == 0;
	}

	/**
	 * 获取有序的键集合
	 * @return
	 */
	public List<K> keys() {
		return keys;
	}

	/**
	 * 获取有序的值集合
	 * @return
	 */
	public List<V> values() {
		List<V> list = new ArrayList<V>(keys.size());
		for (K key : keys) {
			list.add(values.get(key));
		}
		return list;
	}

}
