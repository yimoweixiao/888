package javax.xianfeng.platform.base;

import java.util.List;

import javax.xianfeng.core.beans.LoggedBean;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.platform.base.entity.DictItem;
import javax.xianfeng.platform.base.entity.Property;
import javax.xianfeng.platform.base.service.IDictItemService;
import javax.xianfeng.spring.ioc.SpringIoc;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-16 下午02:10:17
 */
public final class DictItemApi extends LoggedBean {

	private IDictItemService dictItemService = (IDictItemService) SpringIoc.find("platform.DictItemService");

	private DictItemApi() {
		super();
	}

	public static DictItemApi newInstance() {
		return DictApiHolder.INSTANCE;
	}

	/**
	 * 根据字典编码查询字典项
	 * 
	 * @param id
	 * @return
	 */
	public List<DictItem> query(String dictCode) {
		try {
			ParameterSet pset = new ParameterSet();
			pset.setParameter("dictCode", dictCode);
			List<DictItem> list = dictItemService.queryNoPage(pset);
			return list;
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
	}

	private static class DictApiHolder {
		private static final DictItemApi INSTANCE = new DictItemApi();
	}

}
