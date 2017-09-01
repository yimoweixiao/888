package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.CantType;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-25 下午08:27:04
 */
public interface ICantTypeService {

	public List<CantType> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public CantType get(String id) throws DaoException;

	public void save(List<CantType> list) throws DaoException;

}
