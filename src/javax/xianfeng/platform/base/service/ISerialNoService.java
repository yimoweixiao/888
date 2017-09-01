package javax.xianfeng.platform.base.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.SerialNo;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-22 下午09:38:56
 */
public interface ISerialNoService {

	public List<SerialNo> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public SerialNo get(String code) throws DaoException;

	public void save(List<SerialNo> list) throws DaoException;

	public void update(SerialNo e) throws DaoException;

	public void delete(String code) throws DaoException;

}
