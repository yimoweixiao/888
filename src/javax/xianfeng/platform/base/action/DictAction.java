package javax.xianfeng.platform.base.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.Dict;
import javax.xianfeng.platform.base.service.IDictService;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-10 下午06:34:24
 */
public class DictAction extends BaseEntityAction {

	@Resource(name = "platform.DictService")
	private IDictService service;

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
			List<Dict> list = service.query(this.parameters);
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
			Dict[] records = (Dict[]) JacksonUtil.newInstance().format(json, Dict[].class);
			List<Dict> list = Arrays.asList(records);
			// 校验
			for (Dict e : list) {
				if (e.getState() == StatefulBean.STATE_CREATE && this.service.get(e.getCode()) != null) {
					throw new IllegalArgumentException("保存失败，已经存在主键为" + e.getCode() + "的记录！");
				}
			}
			// 保存
			this.service.save(list);
		} catch (JsonFormatException e) {
			e.printStackTrace();
			map.put("error", "数据转换失败");
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据保存失败");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", e.getMessage());
		}

		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

}
