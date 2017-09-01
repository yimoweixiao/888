package javax.xianfeng.plugin.json;

import java.util.ArrayList;
import java.util.List;

/**
 * JSON实体类
 * @author Programmer.Wenlong
 * @since 2012-1-16 下午10:40:41
 */
public class Json {

	private List<JsonItem> items = new ArrayList<JsonItem>(); // 元素集合

	private List<Json> children = new ArrayList<Json>(); // 子节点

	public List<JsonItem> getItems() {
		return items;
	}

	public void setItems(List<JsonItem> items) {
		this.items = items;
	}

	public List<Json> getChildren() {
		return children;
	}

	public void setChildren(List<Json> children) {
		this.children = children;
	}

}
