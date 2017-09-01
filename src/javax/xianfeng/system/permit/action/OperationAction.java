package javax.xianfeng.system.permit.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.Constants;
import javax.xianfeng.system.permit.entity.Function;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.service.IOperationService;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-9 上午10:06:45
 */
public class OperationAction extends BaseEntityAction {

	@Resource(name = "system.OperationService")
	private IOperationService service;

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doDrop()
	 */
	@Override
	public Serializable doDrop() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doEdit()
	 */
	@Override
	public Serializable doEdit() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			int total = service.getTotalSize(this.parameters);
			map.put("total", total);
			List<Operation> list = service.query(this.parameters);
			map.put("rows", list);
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据查询失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String json = this.parameters.getString("records");
		String functionId = this.parameters.getString("functionId");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			Operation[] records = (Operation[]) JacksonUtil.newInstance().format(json, Operation[].class);
			List<Operation> list = Arrays.asList(records);
			Function function = new Function();
			function.setId(functionId);
			for (Operation e: list) {
				if (e.getState() == StatefulBean.STATE_CREATE) {
					e.setId(SerialNoApi.newInstance().nextString(Constants.SYS_OPERATION_ID));
				}
				
				if (e.getState() == StatefulBean.STATE_CREATE || e.getState() == StatefulBean.STATE_UPDATE) {
					e.setFunction(function);
				}
			}
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
