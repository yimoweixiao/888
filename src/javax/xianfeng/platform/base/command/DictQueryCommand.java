package javax.xianfeng.platform.base.command;

import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;
import javax.xianfeng.platform.base.entity.DictItem;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.web.command.BaseQueryCommand;

/**
 * 查询字典的Command类
 * @author Programmer.Wenlong
 * @since 2012-5-13 上午08:42:48
 */
public class DictQueryCommand extends BaseQueryCommand {

	private EntityDao<DictItem> dictItemDao = (HibernateDaoImpl<DictItem>) SpringIoc.find("platform.DictItemDao");

	/**
	 * DataSet标签加载字典项
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午05:33:58
	 * @return
	 */
	@Override
	public DataSet execute() {
		ParameterSet pset = this.getParameterSet();
		String dictName = (String) pset.getParameter("dictName");
		Boolean status = (Boolean) pset.getParameter("status");
		pset.clear();
		pset.setParameter("dictCode@=", dictName); // 字典名称
		pset.getPager().setPageLimit(-1);
		pset.getPager().setSortField("seq"); // 排序字段
		if (status != null) {
			// 根据状态过滤字典项
			pset.setParameter("status", status);
		}
		DataSet dataSet = null;
		try {
			dataSet = dictItemDao.filter(pset);
		} catch (DaoException e) {
			logger.error(e.getMessage(), e.getCause());
		}
		// 添加扩展属性
		if (dataSet != null) {
			for (DataRecord record : dataSet.getRecords()) {
				record.set("@key", record.get("code"));
				record.set("@value", record.get("value"));
			}
		}
		return dataSet;
	}

}
