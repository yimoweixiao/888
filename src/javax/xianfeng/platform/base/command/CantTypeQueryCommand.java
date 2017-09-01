package javax.xianfeng.platform.base.command;

import java.util.List;

import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.util.DataSetUtil;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;
import javax.xianfeng.platform.base.entity.CantType;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.web.command.BaseQueryCommand;

public class CantTypeQueryCommand extends BaseQueryCommand {

	private EntityDao<CantType> dao = (HibernateDaoImpl<CantType>) SpringIoc.find("platform.CantTypeDao");

	@Override
	public DataSet execute() {
		try {
			String hql = "from CantType t order by seq ";
			List<CantType> list = dao.query(hql);
			DataSet ds = DataSetUtil.format(CantType.class, list);
			if (ds != null && ds.getSize() > 0) {
				List<DataRecord> records = ds.getRecords();
				for (int i = 0, size = records.size(); i < size; i++) {
					ds.getRecord(i).set("@key", records.get(i).get("id").toString());
					ds.getRecord(i).set("@value", records.get(i).get("name"));
				}
			}
			return ds;
		} catch (Exception e) {
			logger.debug(e.getMessage(), e.getCause());
			return null;
		}
	}

}
