package javax.xianfeng.plugin.metadata;

import java.io.Serializable;
import java.util.List;

/**
 * 元数据实体类
 * @author Programmer.Wenlong
 * @since 2012-2-22 下午09:39:08
 */
public class MetaData implements Serializable {

	private static final long serialVersionUID = -7876142837262107298L;

	private String meta; // 标识

	private List<MetaDataItem> items; // 数据项

	public MetaData() {
		super();
	}

	public MetaData(String meta, List<MetaDataItem> items) {
		super();
		this.meta = meta;
		this.items = items;
	}

	public String getMeta() {
		return meta;
	}

	public void setMeta(String meta) {
		this.meta = meta;
	}

	public List<MetaDataItem> getItems() {
		return items;
	}

	public void setItems(List<MetaDataItem> items) {
		this.items = items;
	}

}
