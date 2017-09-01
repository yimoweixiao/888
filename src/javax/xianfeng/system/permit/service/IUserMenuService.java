package javax.xianfeng.system.permit.service;

import java.util.List;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.system.permit.entity.Menu;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:25:54
 */
public interface IUserMenuService {

	/**
	 * 根据User的id获取菜单
	 * @author Programmer.Wenlong
	 * @since 2012-4-2 下午03:31:32
	 * @param userId
	 * @param safeURICfgs
	 * @return
	 * @throws DaoException
	 */
	public List<Menu> queryUserMenus(String userId, List<String> safeURICfgs) throws DaoException;

	/**
	 * 查询子菜单
	 * @author Programmer.Wenlong
	 * @since 2013-3-27 下午11:08:30
	 * @param userId
	 * @param safeURICfgs
	 * @param parentId
	 * @return
	 * @throws DaoException
	 */
	public List<Menu> queryUserMenus(String userId, List<String> safeURICfgs, String parentId) throws DaoException;

}
