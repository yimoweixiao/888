package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Cant;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-25 下午08:27:04
 */
public interface ICantService {

	public List<Cant> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Cant get(String id) throws DaoException;

	public void save(List<Cant> list) throws DaoException;

}
