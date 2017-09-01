package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.RoleOperation;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:21:25
 */
public interface IRoleOperationService {

	public List<RoleOperation> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public RoleOperation get(String id) throws DaoException;

	public void save(List<RoleOperation> list) throws DaoException;

}
