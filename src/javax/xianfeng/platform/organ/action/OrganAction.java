package javax.xianfeng.platform.organ.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.Constants;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.platform.organ.OrganApi;
import javax.xianfeng.platform.organ.entity.Organ;
import javax.xianfeng.platform.organ.entity.OrganType;
import javax.xianfeng.platform.organ.service.IOrganService;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-10 下午08:37:00
 */
public class OrganAction extends BaseEntityAction {
	@Resource(name = "platform.OrganService")
	private IOrganService service;
	
	/*
	 * (non-Javadoc)
	 * 
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
			map.put("error", " 数据删除失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doEdit()
	 */
	@Override
	public Serializable doEdit() {
		String id = this.request.getParameter("id");
		Organ organ = null;
		try {
			organ = service.get(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(organ);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	/*
	 * 过滤显示的类型：showType=CORP,DEPT,POST,EMP，必须包含父节点类型
	 * (non-Javadoc)
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		List<Organ> list = null;
		String showType = this.parameters.getString("showType");
		try {
			list = service.query(this.parameters);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		for (Organ organ : list) {
			doTreeNodeFilter(organ, showType);
		}
		String result = JacksonUtil.newInstance().format(list);
		result = result.replaceAll("\"state\":-1000", "\"state\":\"closed\"");
		ResponseUtil.responseJson(response, result);
		return null;
	}
	
	private void doTreeNodeFilter(Organ organ, String showType) {
		if (showType != null && showType.length() > 0) {
			String[] showTypes = showType.split(",");
			boolean isSelectType = false;
			
			// 遍历子节点是否有可选的类型，如果有则折叠，否则当做叶子节点
			label1: for (Organ child : organ.getChildren()) {
				for (String sType: showTypes) {
					if (child.getType().getId().equals(sType)) {
						isSelectType = true;
						break label1;
					}
				}
			}
			
			//System.out.println(organ.getName() + ":" + isSelectType);
			
			if (isSelectType) {
				organ.setState(-1000);  //有可选的子节点（默认折叠）
				for (Organ child : organ.getChildren()) {
					doTreeNodeFilter(child, showType);
				}
			} else {
				organ.setChildren(null);
			}
		} else {
			// 非叶子节点（默认折叠）
			if (!OrganApi.ORGAN_TYPE_EMP.equals(organ.getType().getId())) {
				organ.setState(-1000);
			}
			
			for (Organ child : organ.getChildren()) {
				doTreeNodeFilter(child, showType);
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		String id = this.request.getParameter("id");
		String typeId = this.request.getParameter("typeId");
		String parentId = this.request.getParameter("parentId");
		String name = this.request.getParameter("name");
		String fullName = this.request.getParameter("fullName");
		String seq = this.request.getParameter("seq");

		Map<String, Object> map = new HashMap<String, Object>();
		Organ organ = null;
		try {
			if (id == null || id.length() == 0) {
				organ = new Organ();
				organ.setId(SerialNoApi.newInstance().nextString(Constants.SYS_ORGAN_ID));
				organ.setStatus(true);
			} else {
				organ = service.get(id);
			}
			organ.setName(name);
			organ.setFullName(fullName);
			
			if (typeId != null && typeId.length() > 0) {
				OrganType organType = new OrganType();
				organType.setId(typeId);
				organ.setType(organType);
;			}
			
			if (parentId != null && parentId.length() > 0 && !"root".equals(parentId)) {
				organ.setParentId(parentId);
			}
			organ.setSeq(Integer.valueOf(seq));
			
			service.saveOrUpdate(organ);
			map.put("data", organ);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "数据保存失败！");
		}
		String result = JacksonUtil.newInstance().format(map);
		// ResponseUtil.responseJson(response, result); //解决ie弹出下载提示问题
		ResponseUtil.responseHtml(response, result);
		return null;
	}

}
