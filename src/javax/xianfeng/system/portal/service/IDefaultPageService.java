package javax.xianfeng.system.portal.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.portal.entity.DefaultPage;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-1 下午10:16:24
 */
public interface IDefaultPageService {

	public List<DefaultPage> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public DefaultPage get(String id) throws DaoException;

	public void save(List<DefaultPage> list) throws DaoException;
	
}
