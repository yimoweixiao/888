package javax.xianfeng.platform.organ.command;

import java.util.List;

import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.util.DataSetUtil;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.hibernate.dao.HibernateDaoImpl;
import javax.xianfeng.platform.organ.entity.OrganType;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.web.command.BaseQueryCommand;

public class OrganTypeCommand extends BaseQueryCommand {

	private EntityDao<OrganType> dao = (HibernateDaoImpl<OrganType>) SpringIoc.find("platform.OrganTypeDao");

	/**
	 * 查询组织类型可选的类型
	 */
	@Override
	public DataSet execute() {
		String typeId = (String) this.getParameter("typeId");
		String includeSelf = (String) this.getParameter("includeSelf");
		try {
			StringBuffer hql = new StringBuffer("from OrganType t ");
			if (typeId != null && typeId.length() > 0) {
				hql.append("where t.id in (");
				hql.append("select r.childId from OrganRule r where r.typeId = '").append(typeId).append("'");
				hql.append(")");
				if ("true".equals(includeSelf)) {
					hql.append("or t.id = '").append(typeId).append("'");
				}
			}
			hql.append("order by t.seq");
			List<OrganType> list = dao.query(hql.toString());
			DataSet ds = DataSetUtil.format(OrganType.class, list);
			if (ds != null && ds.getSize() > 0) {
				List<DataRecord> records = ds.getRecords();
				for (int i = 0, size = records.size(); i < size; i++) {
					ds.getRecord(i).set("@key", records.get(i).get("id"));
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
