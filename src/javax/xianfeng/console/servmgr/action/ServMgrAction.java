package javax.xianfeng.console.servmgr.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import javax.xianfeng.console.Constants;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.struts.action.BaseAction;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-13 下午08:35:36
 */
public class ServMgrAction extends BaseAction {

	/**
	 * 内存信息
	 * @author Programmer.Wenlong
	 * @since 2015-4-13 下午08:39:26
	 * @return
	 */
	public Serializable doMemoryInfo() {
		Map<String, Object> map = new HashMap<String, Object>();
		Runtime runtime = Runtime.getRuntime();
		long mTotal = runtime.totalMemory(); //总内存（字节）
		map.put(Constants.SERV_MEMORY_TOTAL, mTotal/1024/1024); //M
		long mFree = runtime.freeMemory();
		long mUsed = mTotal - mFree; //剩余内存（字节）
		map.put(Constants.SERV_MEMORY_USED, mUsed/1024/1024); //M
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseJson(response, result);
		return null;
	}

}
