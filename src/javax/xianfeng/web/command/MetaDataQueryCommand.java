package javax.xianfeng.web.command;

import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.model.DataField;
import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.plugin.metadata.MetaData;
import javax.xianfeng.plugin.metadata.MetaDataFactory;
import javax.xianfeng.plugin.metadata.MetaDataItem;

/**
 * 查询元数据的Command类
 * @author Programmer.Wenlong
 * @since 2012-5-13 上午08:44:44
 */
public class MetaDataQueryCommand extends BaseQueryCommand {

	/**
	 * DataSet标签加载元数据
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午05:34:17
	 * @return
	 */
	@Override
	public DataSet execute() {
		String metaName = (String) this.getParameter("metaName");
		Boolean state = (Boolean) this.getParameter("state");

		// 构造属性集合
		List<DataField> fields = new ArrayList<DataField>(3);
		fields.add(new DataField("key", "String"));
		fields.add(new DataField("value", "String"));
		fields.add(new DataField("state", "Boolean"));

		// 查询所有状态的元数据
		DataSet dataSet = null;
		MetaData metaData = MetaDataFactory.getMetaData(metaName);
		if (metaData != null) {
			List<MetaDataItem> items = metaData.getItems();
			List<DataRecord> records = new ArrayList<DataRecord>(items.size());
			for (MetaDataItem item : items) {
				if (state != null) {
					// 根据状态过滤元数据
					if (state == true) {
						if (item.getState() == true) {
							records.add(getRecordFromMetaDataItem(item));
						}
					} else {
						if (item.getState() == false) {
							records.add(getRecordFromMetaDataItem(item));
						}
					}
				} else {
					// 忽略元数据的状态
					records.add(getRecordFromMetaDataItem(item));
				}
			}
			dataSet = new DataSet(this.getParameterSet(), fields, records);
		} else {
			dataSet = new DataSet();
			dataSet.setParameters(this.getParameterSet());
			dataSet.setFields(fields);
		}
		return dataSet;
	}

	/**
	 * 通过MataDataItem获取DataRecord
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 上午11:42:31
	 * @param metaDataItem
	 * @return
	 */
	private DataRecord getRecordFromMetaDataItem(MetaDataItem metaDataItem) {
		DataRecord record = new DataRecord();
		record.set("key", metaDataItem.getKey());
		record.set("value", metaDataItem.getValue());
		record.set("state", metaDataItem.getState());
		// 扩展属性
		record.set("@key", metaDataItem.getKey());
		record.set("@value", metaDataItem.getValue());
		return record;
	}

}
