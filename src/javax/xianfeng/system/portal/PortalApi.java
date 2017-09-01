package javax.xianfeng.system.portal;

import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.portal.entity.DefaultPage;
import javax.xianfeng.system.portal.service.IDefaultPageService;

/**
 * @author Programmer.Wenlong
 * @since 2015-4-1 下午11:15:57
 */
public final class PortalApi {

	private IDefaultPageService defaultPageService = (IDefaultPageService) SpringIoc.find("system.DefaultPageService");

	/**
	 * 查询首页
	 * @author Programmer.Wenlong
	 * @since 2015-4-1 下午11:22:08
	 * @param targetType
	 * @param targetId
	 * @return
	 */
	public List<DefaultPage> queryDefaultPage(String targetType, String targetId) {
		ParameterSet pset = new ParameterSet();
		pset.setParameter("targetType", targetType);
		pset.setParameter("targetId", targetId);
		pset.getPager().setSortField("seq");
		pset.getPager().setSortDir("asc");
		List<DefaultPage> list = null;
		try {
			list = defaultPageService.query(pset);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static PortalApi newInstance() {
		return PortalApiHolder.INSTANCE;
	}

	private static class PortalApiHolder {
		private static final PortalApi INSTANCE = new PortalApi();
	}

}
