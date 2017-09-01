package javax.xianfeng.system.permit.action;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.plugin.json.JsonFormatException;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.system.permit.service.IUserService;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2014-6-8 下午09:52:21
 */
public class UserAction extends BaseEntityAction {

	@Resource(name = "system.UserService")
	private IUserService service;

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doDrop()
	 */
	@Override
	public Serializable doDrop() {
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User[] records = (User[]) JacksonUtil.newInstance().format(json, User[].class);
			List<User> list = Arrays.asList(records);
			this.service.save(list);
		} catch (JsonFormatException e) {
			e.printStackTrace();
			map.put("error", "数据转换失败");
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "删除失败");
		}

		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}
	
	public Serializable doLock () {
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User[] records = (User[]) JacksonUtil.newInstance().format(json, User[].class);
			List<User> list = Arrays.asList(records);
			this.service.save(list);
		} catch (JsonFormatException e) {
			e.printStackTrace();
			map.put("error", "数据转换失败");
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "锁定失败");
		}

		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}
	
	public Serializable doUnlock() {
		String json = this.parameters.getString("records");
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			User[] records = (User[]) JacksonUtil.newInstance().format(json, User[].class);
			List<User> list = Arrays.asList(records);
			this.service.save(list);
		} catch (JsonFormatException e) {
			e.printStackTrace();
			map.put("error", "数据转换失败");
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "解锁失败");
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
		User user = null;
		try {
			user = service.get(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = JacksonUtil.newInstance().format(user);
		ResponseUtil.responseJson(response, result);
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
			
			List<User> list = service.query(this.parameters);
			map.put("rows", list);
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据查询失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		result = result.replaceAll("\"state\":-1000", "\"state\":\"closed\"");
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	/*
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		Map<String, Object> map = new HashMap<String, Object>();
		String id = this.request.getParameter("id");
		try {
			User user = service.get(id);
			if (user == null) {
				user = new User();
				user.setId(id);
				user.setRegistTime(new Date());
			}
			String type = this.request.getParameter("type");
			user.setType(type);
			
			user.setStatus(this.request.getParameter("status"));

			String name = this.request.getParameter("name");
			user.setName(name);
			
			String password = this.request.getParameter("password");
			// TODO 密码加密处理
			if (password != null && password.length() > 0) {
				user.setPassword(password);
			}
			
			String organId = this.request.getParameter("organId");
			if (organId != null && organId.length() > 0) {
				user.setOrganId(organId);
			}

			String question = this.request.getParameter("question");
			if (question != null && question.length() > 0) {
				user.setQuestion(question);
			}
			
			String answer = this.request.getParameter("answer");
			if (answer != null && answer.length() > 0) {
				user.setAnswer(answer);
			}

			user.setEditTime(new Date());

			service.saveOrUpdate(user);
			map.put("data", user);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "数据转换失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

}
