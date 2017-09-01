package javax.xianfeng.demo.service;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-8 下午09:05:31
 */
public interface IDemoEntityService {

	public DemoEntity get(String id) throws DaoException;

}
