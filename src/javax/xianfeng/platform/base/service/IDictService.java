package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Dict;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-29 下午11:32:35
 */
public interface IDictService {

	public List<Dict> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Dict get(String code) throws DaoException;

	public void save(List<Dict> list) throws DaoException;

	public void delete(String code) throws DaoException;

}
