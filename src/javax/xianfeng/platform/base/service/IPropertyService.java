package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Property;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-29 下午11:05:18
 */
public interface IPropertyService {

	public List<Property> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Property get(String id) throws DaoException;

	public void save(List<Property> list) throws DaoException;

	public void delete(String id) throws DaoException;

}
