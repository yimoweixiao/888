package javax.xianfeng.system.permit.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.Constants;
import javax.xianfeng.system.permit.entity.Menu;
import javax.xianfeng.system.permit.entity.MenuType;
import javax.xianfeng.system.permit.service.IMenuService;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-7 上午11:17:12
 */
public class MenuAction extends BaseEntityAction {

	@Resource(name = "system.MenuService")
	private IMenuService service;

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doDrop()
	 */
	@Override
	public Serializable doDrop() {
		String id = this.request.getParameter("id");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			service.delete(id);
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", " 菜单删除失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doEdit()
	 */
	@Override
	public Serializable doEdit() {
		String id = this.request.getParameter("id");
		Menu menu = null;
		try {
			menu = service.get(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(menu);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		List<Menu> list = null;
		try {
			list = service.query(this.parameters);
			for (Menu menu : list) {
				doTreeNodeFilter(menu);
			}
		} catch (DaoException e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(list);
		result = result.replaceAll("\"state\":-1000", "\"state\":\"closed\"");
		ResponseUtil.responseJson(response, result);
		return null;
	}

	private void doTreeNodeFilter(Menu menu) {
		// 子节点（默认不展开）
		if (!menu.getIsLeaf()) {
			menu.setState(-1000);
		}

		for (Menu child : menu.getChildren()) {
			doTreeNodeFilter(child);
		}
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String id = this.request.getParameter("id");
		String typeId = this.request.getParameter("typeId");
		String parentId = this.request.getParameter("parentId");
		String name = this.request.getParameter("name");
		String url = this.request.getParameter("url");
		String linkType = this.request.getParameter("linkType");
		String openType = this.request.getParameter("openType");
		String defineType = this.request.getParameter("defineType");
		String status = this.request.getParameter("status");
		String isLeaf = this.request.getParameter("isLeaf");
		String icon1 = this.request.getParameter("icon1");
		String icon2 = this.request.getParameter("icon2");
		String icon3 = this.request.getParameter("icon3");
		String seq = this.request.getParameter("seq");

		Map<String, Object> map = new HashMap<String, Object>();
		Menu menu = null;
		try {
			if (id == null || id.length() == 0) {
				menu = new Menu();
				menu.setId(SerialNoApi.newInstance().nextString(Constants.SYS_MENU_ID));
				menu.setStatus(true);
				MenuType type = new MenuType();
				type.setId(typeId);
				menu.setType(type);
			} else {
				menu = service.get(id);
			}
			menu.setName(name);
			if (parentId != null && parentId.length() > 0 && !"root".equals(parentId)) {
				menu.setParentId(parentId);
			}
			menu.setUrl(url);
			if (linkType != null && linkType.length() > 0) {
				menu.setLinkType(linkType);
			}
			if (openType != null && openType.length() > 0) {
				menu.setOpenType(openType);
			}
			if (defineType != null && defineType.length() > 0) {
				menu.setDefineType(defineType);
			}
			if (status != null) {
				menu.setStatus(Boolean.valueOf(status));
			}
			if (icon1 != null) {
				menu.setIcon1(icon1);
			}
			if (icon2 != null) {
				menu.setIcon2(icon2);
			}
			if (icon3 != null) {
				menu.setIcon3(icon3);
			}
			menu.setIsLeaf(Boolean.valueOf(isLeaf));
			menu.setSeq(Integer.valueOf(seq));

			service.saveOrUpdate(menu);
			map.put("data", menu);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "数据保存失败！");
		}
		String result = JacksonUtil.newInstance().format(map);
		// ResponseUtil.responseJson(response, result); //解决ie弹出下载提示问题
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	public Serializable doAjaxSave() {
		String typeId = this.parameters.getString("typeId");
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			MenuType menuType = new MenuType();
			menuType.setId(typeId);
			Menu[] records = (Menu[]) JacksonUtil.newInstance().format(json, Menu[].class);
			List<Menu> list = Arrays.asList(records);
			refreshMenuId(menuType, list);
			this.service.save(list);
		} catch (JsonFormatException e) {
			e.printStackTrace();
			map.put("error", "数据转换失败");
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据保存失败");
		}

		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	private static final SerialNoApi serialNoApi = SerialNoApi.newInstance();

	private void refreshMenuId(MenuType menuType, Collection<Menu> list) {
		for (Menu menu : list) {
			if ("root".equals(menu.getParentId())) {
				menu.setParentId(null);
			}
			if (menu.getState() == StatefulBean.STATE_CREATE) {
				menu.setId(serialNoApi.nextString(Constants.SYS_MENU_ID));
				menu.setType(menuType);
			}
			Set<Menu> children = menu.getChildren();
			if (children != null && children.size() > 0) {
				for (Menu child : children) {
					if (child.getState() == StatefulBean.STATE_CREATE) {
						child.setParentId(menu.getId());
					}
				}
				refreshMenuId(menuType, children);
			}
		}
	}

}
