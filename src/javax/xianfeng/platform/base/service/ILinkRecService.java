package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.LinkRec;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-29 下午11:05:18
 */
public interface ILinkRecService {

	public List<LinkRec> query(ParameterSet pset) throws DaoException;
	
	public List<LinkRec> queryNoPage(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public LinkRec get(String id) throws DaoException;
	
	public LinkRec getByTarget(String target) throws DaoException;

	public void saveOrUpdate(LinkRec e) throws DaoException;

	public void save(List<LinkRec> list) throws DaoException;
	
	public void delete(String id) throws DaoException;

}
