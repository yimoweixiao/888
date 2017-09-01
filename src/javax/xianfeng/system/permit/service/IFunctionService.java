package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Function;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-5 下午03:59:40
 */
public interface IFunctionService {

	public List<Function> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Function get(String id) throws DaoException;

	public void delete(String id) throws DaoException;

	public void saveOrUpdate(Function e) throws DaoException;

	public void save(List<Function> list) throws DaoException;
}
