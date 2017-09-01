package javax.xianfeng.platform.base.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.platform.base.entity.Dict;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-29 下午11:32:44
 */
public class DictService implements IDictService {

	private EntityDao<Dict> dictDao;

	@Override
	public List<Dict> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return dictDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return dictDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public Dict get(String code) throws DaoException {
		return dictDao.get(code);
	}

	@Override
	public void save(List<Dict> list) throws DaoException {
		for (Dict e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				e.setEditTime(new Date());
				dictDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				dictDao.execute(
					"delete from SYS_DICT_ITEM where DICT_CODE = ?", 
					new int[]{Types.VARCHAR}, 
					new Object[] {e.getCode()}
				);
				
				dictDao.execute(
					"delete from SYS_DICT where DICT_CODE = ?", 
					new int[]{Types.VARCHAR}, 
					new Object[] {e.getCode()}
				);
			}
		}
	}

	@Override
	public void delete(String code) throws DaoException {
		dictDao.delete(code);
	}

	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from Dict e where 1=1 ");

		List<Integer> types = new ArrayList<Integer>(3);
		List<Object> args = new ArrayList<Object>(3);
		// 查询条件
		String code = (String) pset.getParameter("code");
		if (code != null && code.length() > 0) {
			sql.append("and e.code like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + code + "%");
		}

		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and e.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}

		// 排序条件
		String sortField = pset.getPager().getSortField();
		if (sortField != null && sortField.length() > 0) {
			sql.append("order by ").append(sortField);
		} else {
			sql.append("order by code");
		}

		String sortDir = pset.getPager().getSortDir();
		if (sortDir != null && sortDir.length() > 0) {
			sql.append(" ").append(sortDir);
		} else {
			sql.append(" asc");
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));

		return template;
	}

	public EntityDao<Dict> getDictDao() {
		return dictDao;
	}

	public void setDictDao(EntityDao<Dict> dictDao) {
		this.dictDao = dictDao;
	}

}
