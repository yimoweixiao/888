package javax.xianfeng.platform.base;

import javax.xianfeng.core.beans.LoggedBean;
import javax.xianfeng.platform.base.entity.Property;
import javax.xianfeng.platform.base.service.IPropertyService;
import javax.xianfeng.spring.ioc.SpringIoc;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-16 下午02:10:17
 */
public final class PropertyApi extends LoggedBean {

	private IPropertyService propertyService = (IPropertyService) SpringIoc.find("platform.PropertyService");

	private PropertyApi() {
		super();
	}

	public static PropertyApi newInstance() {
		return PropertyApiHolder.INSTANCE;
	}

	/**
	 * 根据属性主键查找属性对象
	 * @param id
	 * @return
	 */
	public Property getById(String id) {
		try {
			return propertyService.get(id);
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
	}

	/**
	 * 根据属性主键查找属性值
	 * @param id
	 * @return
	 */
	public String getValue(String id) {
		try {
			Property property = this.getById(id);
			if (property != null) {
				return property.getValue();
			} else {
				return null;
			}
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
	}

	private static class PropertyApiHolder {
		private static final PropertyApi INSTANCE = new PropertyApi();
	}

}
