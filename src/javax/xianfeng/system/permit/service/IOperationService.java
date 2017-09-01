package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Operation;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-5 下午03:59:40
 */
public interface IOperationService {

	public List<Operation> query(ParameterSet pset) throws DaoException;

	public List<Operation> queryNoPage(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Operation get(String id) throws DaoException;

	public void save(List<Operation> list) throws DaoException;
}
