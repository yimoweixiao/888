package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Menu;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:25
 */
public interface IMenuService {

	public List<Menu> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Menu get(String id) throws DaoException;

	public void saveOrUpdate(Menu e) throws DaoException;

	public void delete(String id) throws DaoException;

	public void save(List<Menu> list) throws DaoException;

}
