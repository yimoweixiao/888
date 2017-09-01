package javax.xianfeng.platform.base.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.platform.base.entity.DictItem;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-13 下午05:24:17
 */
public class DictItemService implements IDictItemService {

	private EntityDao<DictItem> dictItemDao;

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return dictItemDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public List<DictItem> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return dictItemDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}
	
	@Override
	public List<DictItem> queryNoPage(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return dictItemDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}
	
	@Override
	public DictItem queryUniqueByDictCodeAndItemCode(String dictCode, String itemCode) throws DaoException {
		return dictItemDao.queryUnique(
			"from DictItem e where e.dictCode = ? and e.code = ? ", 
			new int[] { Types.VARCHAR, Types.VARCHAR }, 
			new Object[] { dictCode, itemCode }
		);
	}

	@Override
	public void save(List<DictItem> list) throws DaoException {
		for (DictItem e : list) {
			// System.out.println("children: " + e.getChildren());
			// System.out.println("children: " + e.getChildren().size());
			if (e.getState() == StatefulBean.STATE_CREATE) {
				// 新增
				e.setEditTime(new Date());
				dictItemDao.save(e);
			} else if (e.getState() == StatefulBean.STATE_UPDATE) {
				// 修改
				e.setEditTime(new Date());
				dictItemDao.update(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				this.dropCascade(e);
			}
		}
	}
	
	private void dropCascade (DictItem e) throws DaoException {
		Set<DictItem> children = e.getChildren() ;
		for (DictItem child: children) {
			dropCascade (child);
		}
		
		dictItemDao.execute(
			"delete from SYS_DICT_ITEM where DICT_CODE = ? and ITEM_CODE = ? ", 
			new int[]{Types.VARCHAR, Types.VARCHAR}, 
			new Object[] {e.getDictCode(), e.getCode()}
		);
	}

	@Override
	public void delete(String code) throws DaoException {
		dictItemDao.delete(code);
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from DictItem e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);

		String dictCode = (String) pset.getParameter("dictCode");
		if (dictCode != null && dictCode.length() > 0) {
			sql.append("and e.dictCode = ? ");
			types.add(Types.VARCHAR);
			args.add(dictCode);
		}

		String parentCode = (String) pset.getParameter("parentCode");
		if (parentCode != null && parentCode.length() > 0) {
			sql.append("and e.parentCode = ? ");
			types.add(Types.VARCHAR);
			args.add(parentCode);
		} else {
			sql.append("and e.parentCode is null ");
		}

		sql.append("order by e.seq ");

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));

		return template;
	}

	public EntityDao<DictItem> getDictItemDao() {
		return dictItemDao;
	}

	public void setDictItemDao(EntityDao<DictItem> dictItemDao) {
		this.dictItemDao = dictItemDao;
	}

}
