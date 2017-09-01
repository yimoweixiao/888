package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Module;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-5 下午03:59:40
 */
public interface IModuleService {

	public List<Module> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Module get(String id) throws DaoException;

	public void saveOrUpdate(Module e) throws DaoException;

	public void delete(String id) throws DaoException;

	public void save(List<Module> list) throws DaoException;

}
