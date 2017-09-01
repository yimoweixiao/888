package javax.xianfeng.demo.service;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.demo.entity.DemoEntity1;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-8 下午09:05:31
 */
public interface IDemoEntity1Service {

	public DemoEntity1 get(Long id) throws DaoException;

}
