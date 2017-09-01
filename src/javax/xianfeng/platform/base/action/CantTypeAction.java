package javax.xianfeng.platform.base.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.CantType;
import javax.xianfeng.platform.base.service.ICantTypeService;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2015-1-18 下午03:58:48
 */
public class CantTypeAction extends BaseEntityAction {

	@Resource(name = "platform.CantTypeService")
	private ICantTypeService service;

	@Override
	public Serializable doDrop() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable doEdit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Serializable doList() {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			int total = service.getTotalSize(this.parameters);
			map.put("total", total);
			List<CantType> list = service.query(this.parameters);
			map.put("rows", list);
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据查询失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	@Override
	public Serializable doSave() {
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			CantType[] records = (CantType[]) JacksonUtil.newInstance().format(json, CantType[].class);
			List<CantType> list = Arrays.asList(records);
			// 校验
			for (CantType e : list) {
				if (e.getState() == StatefulBean.STATE_CREATE && this.service.get(e.getId()) != null) {
					throw new IllegalArgumentException("保存失败，已经存在主键为" + e.getId() + "的记录！");
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
