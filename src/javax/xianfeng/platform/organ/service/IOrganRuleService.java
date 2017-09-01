package javax.xianfeng.platform.organ.service;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.organ.entity.OrganRule;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-21 上午11:50:53
 */
public interface IOrganRuleService {

	public List<OrganRule> query(ParameterSet pset) throws DaoException;

	public int getTotalSize(ParameterSet pset) throws DaoException;

	public void save(List<OrganRule> list) throws DaoException;

}
