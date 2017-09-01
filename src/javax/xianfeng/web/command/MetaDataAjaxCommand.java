package javax.xianfeng.web.command;

import java.util.List;

import javax.xianfeng.plugin.metadata.MetaData;
import javax.xianfeng.plugin.metadata.MetaDataFactory;
import javax.xianfeng.plugin.metadata.MetaDataItem;

/**
 * @author Programmer.Wenlong
 * @since 2012-10-8 下午10:20:26
 */
public class MetaDataAjaxCommand extends BaseAjaxCommand {

	@Override
	public void execute() {
		String meta = this.getParameterSet().getString("meta");
		if (meta == null) {
			throw new IllegalArgumentException("meta is null");
		}
		MetaData metaData = MetaDataFactory.getMetaData(meta);
		List<MetaDataItem> items = metaData.getItems();
		for (MetaDataItem item : items) {
			this.returnSet.put(item.getKey(), item.getValue());
		}
	}

}
