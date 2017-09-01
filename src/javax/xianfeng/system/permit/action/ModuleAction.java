package javax.xianfeng.system.permit.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.Constants;
import javax.xianfeng.system.permit.entity.Function;
import javax.xianfeng.system.permit.entity.Module;
import javax.xianfeng.system.permit.service.IFunctionService;
import javax.xianfeng.system.permit.service.IModuleService;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-9 上午10:06:45
 */
public class ModuleAction extends BaseEntityAction {

	@Resource(name = "system.ModuleService")
	private IModuleService service;

	@Resource(name = "system.FunctionService")
	private IFunctionService functionService;

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
		Module module = null;
		try {
			module = service.get(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(module);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		String parentType = (String) this.parameters.remove("parentType");
		String id = (String) this.parameters.get("id");
		String result = "";
		try {
			if (parentType == null) {
				// 根节点加载数据
				List<Module> list = service.query(this.parameters);
				for (Module e : list) {
					doTreeNodeFilter(e);
				}
				result = JacksonUtil.newInstance().format(list);
				result = result.replaceAll("\"functions\":", "\"children\":");
			} else if ("module".equals(parentType)) {
				// 模块加载功能
				ParameterSet pset = new ParameterSet();
				pset.setParameter("moduleId", id);
				List<Function> list = functionService.query(pset);
				for (Function e : list) {
					doTreeNodeFilter(e);
				}
				result = JacksonUtil.newInstance().format(list);
				result = result.replaceAll("\"functions\":", "\"children\":");
			} else if ("function".equals(parentType)) {
				// 功能加载功能
				ParameterSet pset = new ParameterSet();
				pset.setParameter("parentId", id);
				List<Function> list = functionService.query(pset);
				for (Function e : list) {
					doTreeNodeFilter(e);
				}
				result = JacksonUtil.newInstance().format(list);
			} else {
				throw new RuntimeException("父节点数据类型" + parentType + "异常");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		result = result.replaceAll("\"state\":-1000", "\"state\":\"closed\"");
		//result = result.replaceAll("\"children\":\\[null\\]", "\"children\":[]");
		ResponseUtil.responseJson(response, result);
		return null;
	}

	private void doTreeNodeFilter(Object obj) {
		if (obj instanceof Module) {
			Module m = (Module) obj;
			if (m.getFunctions().size() > 0) {
				// 子节点（默认不展开）
				m.setState(-1000);
			}
			for (Function f : m.getFunctions()) {
				doTreeNodeFilter(f);
			}
		} else if (obj instanceof Function) {
			Function f = (Function) obj;
			if (f.getChildren().size() > 0) {
				// 子节点（默认不展开）
				f.setState(-1000);
			}
			for (Function func : f.getChildren()) {
				doTreeNodeFilter(func);
			}
		}

	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String id = this.request.getParameter("id");
		String name = this.request.getParameter("name");
		String seq = this.request.getParameter("seq");

		Map<String, Object> map = new HashMap<String, Object>();
		Module e = null;
		try {
			if (id == null || id.length() == 0) {
				e = new Module();
				e.setId(SerialNoApi.newInstance().nextString(Constants.SYS_MODULE_ID));
			} else {
				e = service.get(id);
			}
			e.setName(name);
			e.setSeq(Integer.valueOf(seq));

			service.saveOrUpdate(e);
			map.put("data", e);
		} catch (Exception ex) {
			ex.printStackTrace();
			map.put("error", "数据保存失败！");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

}
