package javax.xianfeng.system.security.entity;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.Transient;
import javax.xianfeng.system.permit.UserApi;
import javax.xianfeng.system.permit.entity.Menu;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.system.portal.PortalApi;
import javax.xianfeng.system.portal.entity.DefaultPage;

/**
 * 用户视图实体类：关联和用户有关的必要其他属性
 * @author Programmer.Wenlong
 * @since 2014-6-21 下午04:16:59
 */
public class UserView extends User {
	
	@Transient
	private List<Role> roleCfgs; //角色集合
	
	@Transient
	private List<String> safeURICfgs; //有权限访问的uri集合
	
	@Transient
	private List<Menu> safeMenuCfgs; //用户菜单集合
	
	@Transient
	private Map<String, String> defaultPageCfgs; //首页集合
	
	private final UserApi userApi = UserApi.newInstance();
	
	private final PortalApi portalApi = PortalApi.newInstance();
	
	/**
	 * 初始化用户扩展数据
	 * @author Programmer.Wenlong
	 * @since 2015-4-2 下午11:29:47
	 */
	public void initExtCfgData () {
		if (this.getId() == null) {
			return;
		}
		
		// 查询用户权限
		List<Role> roles = userApi.queryUserRoles(this.getId());
		this.setRoleCfgs(roles);
		
		this.safeURICfgs = new ArrayList<String>();
		for (Role role: this.roleCfgs) {
			Set<Operation> operations = role.getOperations();
			for (Operation operation: operations) {
				String target = operation.getTarget();
				if (!this.safeURICfgs.contains(target)) {
					this.safeURICfgs.add(target);
				}
			}
		}

		// 查询用户菜单
		List<Menu> menus = userApi.queryUserMenus(this.getId(), this.getSafeURICfgs());
		this.setSafeMenuCfgs(menus);
		
		//查询用户首页
		defaultPageCfgs = new LinkedHashMap<String, String>();
		for (Role role: roles) {
			List<DefaultPage> defaultPages = portalApi.queryDefaultPage(DefaultPage.DEFAULT_PAGE_TYPE_ROLE, role.getId());
			for (DefaultPage defaultPage: defaultPages) {
				defaultPageCfgs.put(defaultPage.getName(), defaultPage.getUrl());
			}
		}
	}
	
	public List<Role> getRoleCfgs() {
		return roleCfgs;
	}

	public void setRoleCfgs(List<Role> roleCfgs) {
		this.roleCfgs = roleCfgs;
	}

	public List<String> getSafeURICfgs() {
		return safeURICfgs;
	}

	public void setSafeURICfgs(List<String> safeURICfgs) {
		this.safeURICfgs = safeURICfgs;
	}
	
	public List<Menu> getSafeMenuCfgs() {
		return safeMenuCfgs;
	}

	public void setSafeMenuCfgs(List<Menu> safeMenuCfgs) {
		this.safeMenuCfgs = safeMenuCfgs;
	}

	public Map<String, String> getDefaultPageCfgs() {
		return defaultPageCfgs;
	}

	public void setDefaultPageCfgs(Map<String, String> defaultPageCfgs) {
		this.defaultPageCfgs = defaultPageCfgs;
	}
	
}
