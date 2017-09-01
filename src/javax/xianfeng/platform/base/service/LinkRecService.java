package javax.xianfeng.platform.base.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.core.model.DataPager;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.dao.template.BaseQueryTemplate;
import javax.xianfeng.dao.util.DaoFormatUtil;
import javax.xianfeng.platform.base.entity.LinkRec;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-29 下午11:05:27
 */
public class LinkRecService implements ILinkRecService {

	private EntityDao<LinkRec> linkRecDao;

	@Override
	public List<LinkRec> query(ParameterSet pset) throws DaoException {
		DataPager pager = pset.getPager();
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return linkRecDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs(), pager.getPageStart(), pager.getPageLimit());
	}

	@Override
	public List<LinkRec> queryNoPage(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return linkRecDao.query(bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}
	
	@Override
	public int getTotalSize(ParameterSet pset) throws DaoException {
		BaseQueryTemplate bqt = getQueryTemplate(pset);
		return linkRecDao.count("select count(*) " + bqt.getSql(), bqt.getTypes(), bqt.getArgs());
	}

	@Override
	public LinkRec get(String id) throws DaoException {
		return linkRecDao.get(id);
	}

	@Override
	public LinkRec getByTarget(String target) throws DaoException {
		return linkRecDao.queryUnique(
			"from LinkRec where target = ? ", 
			new int[]{Types.VARCHAR}, 
			new Object[]{target}
		);
	}
	@Override
	public void saveOrUpdate(LinkRec e) throws DaoException {
		linkRecDao.saveOrUpdate(e);
	}
	
	@Override
	public void save(List<LinkRec> list) throws DaoException {
		for (LinkRec e : list) {
			if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
				// 新增、修改
				linkRecDao.saveOrUpdate(e);
			} else if (e.getState() == StatefulBean.STATE_DELETE) {
				// 删除
				linkRecDao.drop(e);
			}
		}

	}

	@Override
	public void delete(String id) throws DaoException {
		linkRecDao.delete(id);
	}

	/**
	 * 获取查询模板
	 * 
	 * @param id
	 * @return
	 */
	private BaseQueryTemplate getQueryTemplate(ParameterSet pset) {
		BaseQueryTemplate template = new BaseQueryTemplate();

		StringBuffer sql = new StringBuffer();
		sql.append("from LinkRec p where 1=1 ");

		List<Integer> types = new ArrayList<Integer>();
		List<Object> args = new ArrayList<Object>();

		// 查询条件
		String name = (String) pset.getParameter("name");
		if (name != null && name.length() > 0) {
			sql.append("and p.name like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + name + "%");
		}
		
		String corpName = (String) pset.getParameter("corpName");
		if (corpName != null && corpName.length() > 0) {
			sql.append("and p.corpName like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + corpName + "%");
		}
		
		String postcode = (String) pset.getParameter("postcode");
		if (postcode != null && postcode.length() > 0) {
			sql.append("and p.postcode like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + postcode + "%");
		}
		
		String address = (String) pset.getParameter("address");
		if (address != null && address.length() > 0) {
			sql.append("and p.address like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + address + "%");
		}
		
		
		String mobile = (String) pset.getParameter("mobile");
		if (mobile != null && mobile.length() > 0) {
			sql.append("and p.mobile like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + mobile + "%");
		}
		
		String phone = (String) pset.getParameter("phone");
		if (phone != null && phone.length() > 0) {
			sql.append("and p.phone like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + phone + "%");
		}
		
		String email = (String) pset.getParameter("email");
		if (email != null && email.length() > 0) {
			sql.append("and p.email like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + email + "%");
		}
		
		String qq = (String) pset.getParameter("qq");
		if (qq != null && qq.length() > 0) {
			sql.append("and p.qq like ? ");
			types.add(Types.VARCHAR);
			args.add("%" + qq + "%");
		}

		// 排序条件
		String sortField = pset.getPager().getSortField();
		if (sortField != null && sortField.length() > 0) {
			sql.append("order by ").append(sortField);
		} else {
			sql.append("order by name ");
		}

		String sortDir = pset.getPager().getSortDir();
		if (sortDir != null && sortDir.length() > 0) {
			sql.append(sortDir);
		} else {
			sql.append("asc");
		}

		template.setSql(sql.toString());
		template.setArgs(args.toArray());
		template.setTypes(DaoFormatUtil.formatTypes(types));
		return template;
	}

	public EntityDao<LinkRec> getLinkRecDao() {
		return linkRecDao;
	}

	public void setLinkRecDao(EntityDao<LinkRec> linkRecDao) {
		this.linkRecDao = linkRecDao;
	}

}
