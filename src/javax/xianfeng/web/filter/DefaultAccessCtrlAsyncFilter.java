package javax.xianfeng.web.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.web.util.RequestUtil;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * 实现浏览器访问、Ajax访问两种方式分别响应结果
 * 
 * @author Programmer.Wenlong
 * @since 2015-3-31 下午10:46:26
 */
public class DefaultAccessCtrlAsyncFilter extends DefaultAccessCtrlFilter {

	@Override
	protected void handleNotLicence(HttpServletRequest request, HttpServletResponse response, String uri, String errorMsg) throws ServletException, IOException {
		String suffix = ApplicationConfig.getConfig("Xianfeng.SyncAccessCtrl.Suffix");
		if (RequestUtil.isURISuffix(uri, suffix)) {
			// Ajax请求
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("error", errorMsg);
			this.handleAjaxResult(response, map);
		} else {
			// 浏览器请求
			super.handleNotLicence(request, response, uri, errorMsg);
		}
	}

	@Override
	protected void handleNotLogin(HttpServletRequest request, HttpServletResponse response, String uri) throws ServletException, IOException {
		String suffix = ApplicationConfig.getConfig("Xianfeng.SyncAccessCtrl.Suffix");
		if (RequestUtil.isURISuffix(uri, suffix)) {
			// Ajax请求
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("error", "用户未登录，请登录后再试");
			this.handleAjaxResult(response, map);
		} else {
			// 浏览器请求
			super.handleNotLogin(request, response, uri);
		}
	}

	@Override
	protected void handleNotPermit(HttpServletRequest request, HttpServletResponse response, String uri) throws ServletException, IOException {
		String suffix = ApplicationConfig.getConfig("Xianfeng.SyncAccessCtrl.Suffix");
		//System.out.println(">>> " + RequestUtil.isURISuffix(uri, suffix));
		if (RequestUtil.isURISuffix(uri, suffix)) {
			// Ajax请求
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("error", "用户无权限访问" + uri);
			this.handleAjaxResult(response, map);
		} else {
			// 浏览器请求
			super.handleNotPermit(request, response, uri);
		}
	}

	private void handleAjaxResult(HttpServletResponse response, Map<String, Object> map) {
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml (response, result);
	}

}
