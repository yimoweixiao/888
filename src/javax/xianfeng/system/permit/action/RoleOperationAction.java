package javax.xianfeng.system.permit.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.permit.entity.Function;
import javax.xianfeng.system.permit.entity.Module;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.entity.Role;
import javax.xianfeng.system.permit.entity.RoleOperation;
import javax.xianfeng.system.permit.service.IModuleService;
import javax.xianfeng.system.permit.service.IRoleOperationService;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-22 下午02:07:13
 */
public class RoleOperationAction extends BaseEntityAction {
	
	@Resource(name = "system.ModuleService")
	private IModuleService moduleService;
	
	@Resource(name = "system.RoleOperationService")
	private IRoleOperationService service;

	/* (non-Javadoc)
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doDrop()
	 */
	@Override
	public Serializable doDrop() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doEdit()
	 */
	@Override
	public Serializable doEdit() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		String result = "";
		try {
			List<RoleOperation> roleOperations = service.query(this.parameters);
			
			List<Module> list = moduleService.query(this.parameters);
			for (Module module : list) {
				doTreeNodeFilter(module, roleOperations);
			}
			result = JacksonUtil.newInstance().format(list);
			result = result.replaceAll("\"functions\":", "\"children\":");
			result = result.replaceAll("\"operations\":", "\"children\":");
		} catch (Exception e) {
			e.printStackTrace();
		}

		result = result.replaceAll("\"state\":-1000", "\"state\":\"closed\"");
		result = result.replaceAll(",\"children\":\\[\\]", ""); //处理function的children和opertions
		ResponseUtil.responseJson(response, result);
		return null;
	}
	
	private void doTreeNodeFilter(Object obj, List<RoleOperation> roleOperations) {
		if (obj instanceof Module) {
			Module m = (Module) obj;
			if (m.getFunctions().size() > 0) {
				// 子节点（默认不展开）
				m.setState(-1000);
			}
			for (Function f : m.getFunctions()) {
				doTreeNodeFilter(f, roleOperations);
			}
		} else if (obj instanceof Function) {
			Function f = (Function) obj;
			if (f.getChildren().size() > 0 || f.getOperations().size() > 0) {
				// 子节点（默认不展开）
				f.setState(-1000);
			}
			
			for (Function func : f.getChildren()) {
				doTreeNodeFilter(func, roleOperations);
			}
			
			for (Operation operation: f.getOperations()) {
				for (RoleOperation roleOperation: roleOperations) {
					if (operation.getId().equals(roleOperation.getOperationId())) {
						operation.setChecked(true);
					}
				}
			}
		}

	}
	
	/* (non-Javadoc)
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			RoleOperation[] records = (RoleOperation[]) JacksonUtil.newInstance().format(json, RoleOperation[].class);
			List<RoleOperation> list = Arrays.asList(records);
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

}
