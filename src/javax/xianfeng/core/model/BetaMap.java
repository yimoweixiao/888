package javax.xianfeng.core.model;

import java.io.Serializable;
import java.util.List;

/**
 * 扩展的key-value集合接口
 * @author Programmer.Wenlong
 * @since 2012-5-17 下午03:53:49
 */
public interface BetaMap<K, V> extends Serializable {

	public V get(K key);

	public void put(K key, V value);

	public int size();

	public V remove(K key);

	public void clear();

	public boolean isEmpty();

	public List<K> keys();

	public List<V> values();

}
