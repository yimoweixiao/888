package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.User;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:19:44
 */
public interface IUserService {

	public List<User> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public User get(String id) throws DaoException;

	public void delete(String id) throws DaoException;

	public void saveOrUpdate(User e) throws DaoException;

	public void save(List<User> list) throws DaoException;

}
