package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.MenuType;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:25
 */
public interface IMenuTypeService {

	public List<MenuType> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public MenuType get(String id) throws DaoException;

	public void save(List<MenuType> list) throws DaoException;

}
