package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.entity.UserRole;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:25
 */
public interface IUserRoleService {
	
	public int getTotalSize(ParameterSet pset) throws DaoException;
	
	public List<UserRole> query(ParameterSet pset) throws DaoException;

	/**
	 * 查询委派给用户的角色
	 * @author Programmer.Wenlong
	 * @since 2014-6-15 下午05:15:05
	 * @param userId
	 * @return
	 * @throws DaoException
	 */
	public List<Role> queryDelegatedRoles(String userId) throws DaoException;
	
	/**
	 * 查询没有委派给用户的角色
	 * @author Programmer.Wenlong
	 * @since 2014-6-15 下午04:56:45
	 * @param userId
	 * @return
	 * @throws DaoException
	 */
	public List<Role> queryUnDelegatedRoles(String userId) throws DaoException;

	public void save(List<UserRole> list) throws DaoException;

}
