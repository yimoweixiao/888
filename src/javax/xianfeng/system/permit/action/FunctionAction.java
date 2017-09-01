package javax.xianfeng.system.permit.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.Constants;
import javax.xianfeng.system.permit.entity.Function;
import javax.xianfeng.system.permit.entity.Module;
import javax.xianfeng.system.permit.service.IFunctionService;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-9 上午10:06:45
 */
public class FunctionAction extends BaseEntityAction {

	@Resource(name = "system.FunctionService")
	private IFunctionService service;

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
		Function function = null;
		try {
			function = service.get(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(function);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String id = this.request.getParameter("id");
		String moduleId = this.request.getParameter("moduleId");
		String parentId = this.request.getParameter("parentId");
		String name = this.request.getParameter("name");
		String seq = this.request.getParameter("seq");

		Map<String, Object> map = new HashMap<String, Object>();
		Function e = null;
		try {
			if (id == null || id.length() == 0) {
				e = new Function();
				e.setId(SerialNoApi.newInstance().nextString(Constants.SYS_FUNCTION_ID));
				Module module = new Module();
				module.setId(moduleId);
				e.setModule(module);
				if (parentId != null && parentId.length() > 0) {
					e.setParentId(parentId);
				}
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
		// ResponseUtil.responseJson(response, result); //解决ie弹出下载提示问题
		ResponseUtil.responseHtml(response, result);
		return null;
	}

}
