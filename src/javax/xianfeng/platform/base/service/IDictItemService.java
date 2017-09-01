package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.DictItem;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-13 下午05:23:56
 */
public interface IDictItemService {

	public List<DictItem> query(ParameterSet pset) throws DaoException;
	
	public List<DictItem> queryNoPage(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public DictItem queryUniqueByDictCodeAndItemCode(String dictCode, String itemCode) throws DaoException;

	public void save(List<DictItem> list) throws DaoException;

	public void delete(String code) throws DaoException;

}
