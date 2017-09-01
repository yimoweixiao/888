package javax.xianfeng.platform.organ.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.organ.entity.Organ;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-22 上午10:22:02
 */
public interface IOrganService {

	public List<Organ> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public Organ get(String id) throws DaoException;

	public void save(List<Organ> list) throws DaoException;

	public void saveOrUpdate(Organ e) throws DaoException;

	public void delete(String id) throws DaoException;

}
