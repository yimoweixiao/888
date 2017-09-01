package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Role;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:25
 */
public interface IRoleService {

	public List<Role> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Role get(String id) throws DaoException;

	public void save(List<Role> list) throws DaoException;

}
