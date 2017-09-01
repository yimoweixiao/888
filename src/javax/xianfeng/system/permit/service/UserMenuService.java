package javax.xianfeng.system.permit.service;

import java.sql.Types;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.dao.EntityDao;
import javax.xianfeng.system.Constants;
import javax.xianfeng.system.permit.entity.Menu;

/**
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午03:26:39
 */
public class UserMenuService implements IUserMenuService {

	private EntityDao<Menu> menuDao;
	
	/**
	 * 查询一级菜单<br>
	 * 优先查询默认菜单，然后查询预置菜单
	 */
	@Override
	public List<Menu> queryUserMenus(String userId, List<String> safeURICfgs) throws DaoException {
		String sql = "from Menu m where m.type.id = ? and m.parentId is null order by m.seq";
		List<Menu> list = menuDao.query(sql, new int[]{Types.VARCHAR}, new Object[]{Constants.MENU_TYPE_DEFAULT});
		if (list == null || list.size() == 0) {
			list = menuDao.query(sql, new int[]{Types.VARCHAR}, new Object[]{Constants.MENU_TYPE_SYSTEM});
		}
		List<Menu> undelegatedMenus = filterUnDelegatedMenus(list, safeURICfgs);
		list.removeAll(undelegatedMenus);
		return list;
	}

	/**
	 * 查询子菜单
	 */
	public List<Menu> queryUserMenus(String userId, List<String> safeURICfgs, String parentId) throws DaoException {
		List<Menu> list = menuDao.query(
			"from Menu m where m.parentId = ? order by m.seq", 
			new int[] {Types.VARCHAR}, 
			new Object[] {parentId}
		);
		List<Menu> undelegatedMenus = filterUnDelegatedMenus(list, safeURICfgs);
		list.removeAll(undelegatedMenus);
		return list;
	}
	
	/**
	 * 过滤未授权的菜单
	 * @author Programmer.Wenlong
	 * @since 2014-6-22 下午05:39:43
	 * @param menus
	 * @param safeURICfgs
	 */
	private List<Menu> filterUnDelegatedMenus(Collection<Menu> menus, List<String> safeURICfgs) {
		List<Menu> list = new ArrayList<Menu>();
		for (Iterator<Menu> iterator = menus.iterator(); iterator.hasNext(); ) {
			Menu menu = iterator.next();
			Set<Menu> children = menu.getChildren();
			
			//子节点
			if (children != null && children.size() > 0) {
				//有子节点的非叶子结点递归过滤
				List<Menu> undelegatedMenus = this.filterUnDelegatedMenus(children, safeURICfgs);
				list.addAll(undelegatedMenus);
				children.removeAll(undelegatedMenus);
				
				//如果子节点都被过滤掉，本节点也被过滤掉
				/*int size = 0;
				for (Menu child: children) {
					if (undelegatedMenus.contains(child)) {
						size++;
					}
				}
				if (children.size() == size) {
					list.add(menu);
				}*/
				if (menu.getChildren().size() == 0) {
					list.add(menu);
				}
				continue;
			} else if (!menu.getIsLeaf()) {
				//没有子节点的非叶子结点过滤掉
				list.add(menu);
				continue;
			}
			
			//叶子节点
			String url = menu.getUrl();
			if (url == null || url.length() == 0) {
				//无效url的叶子节点过滤掉
				list.add(menu);
				continue;
			}
			
			//有效url的叶子节点遍历safeURICfgs
			boolean isFilter = true;
			for (String safeURI: safeURICfgs) {
				//uri为jsp/xianfeng/demo/test.jsp?type=view
				//safeURI为jsp/xianfeng/demo/test.jsp，不带url参数
				if (url.indexOf(safeURI) >= 0) {
					isFilter = false;
				}
			}
			//System.out.println(isFilter + " >>> " + menu.getUrl());
			if (isFilter) {
				list.add(menu);
			}
		}
		return list;
	}

	public EntityDao<Menu> getMenuDao() {
		return menuDao;
	}

	public void setMenuDao(EntityDao<Menu> menuDao) {
		this.menuDao = menuDao;
	}

}
