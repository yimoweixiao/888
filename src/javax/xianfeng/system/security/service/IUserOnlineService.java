package javax.xianfeng.system.security.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.security.entity.UserOnline;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-23 下午10:35:58
 */
public interface IUserOnlineService {

	public List<UserOnline> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public UserOnline get(String id) throws DaoException;
	
	public List<UserOnline> queryByUserId(String userId, Boolean isOnline) throws DaoException;
	
	public void update(UserOnline e) throws DaoException;

	public void saveOrUpdate(UserOnline e) throws DaoException;
	
}
