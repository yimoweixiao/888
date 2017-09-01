package javax.xianfeng.platform.organ.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.organ.entity.OrganRule;
import javax.xianfeng.platform.organ.service.IOrganRuleService;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-10 下午08:37:00
 */
public class OrganRuleAction extends BaseEntityAction {
	@Resource(name = "platform.OrganRuleService")
	private IOrganRuleService service;

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doDrop()
	 */
	@Override
	public Serializable doDrop() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doEdit()
	 */
	@Override
	public Serializable doEdit() {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			int total = service.getTotalSize(this.parameters);
			map.put("total", total);
			List<OrganRule> list = service.query(this.parameters);
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
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			OrganRule[] records = (OrganRule[]) JacksonUtil.newInstance().format(json, OrganRule[].class);
			List<OrganRule> list = Arrays.asList(records);
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
