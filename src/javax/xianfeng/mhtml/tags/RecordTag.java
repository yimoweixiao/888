package javax.xianfeng.mhtml.tags;

import java.lang.reflect.Field;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.xianfeng.core.model.DataField;
import javax.xianfeng.util.FieldUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-4 下午11:33:59
 */
public class RecordTag extends BodyTagSupport {

	private static final long serialVersionUID = 7530591317077630306L;

	private static final Log logger = LogFactory.getLog(RecordTag.class);

	private String bean; // 实体类类名

	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		// 获取bean的属性集合
		Field[] fields = null;
		try {
			fields = FieldUtil.getFields(Class.forName(bean));
		} catch (ClassNotFoundException e) {
			logger.error(e.getCause());
		}

		// 将属性集合添加到DataSet中
		DataSetTag dataSetTag = (DataSetTag) this.getParent();
		List<DataField> dataFields = dataSetTag.getDataSet().getFields(); // 属性集合
		String fieldName = null; // 属性名称
		for (Field field : fields) {
			fieldName = field.getName();
			if (isExistInDataFields(fieldName, dataFields) == false && FieldUtil.isJavaDataType(field)) {
				// 只支持java提供的基本数据类型，不支持用户自定义的数据类型
				dataSetTag.getDataSet().getFields().add(new DataField(fieldName, field.getType().getName()));
			}
		}
		return EVAL_PAGE;
	}

	/**
	 * 判断属性名是否在DataField集合中
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 上午12:03:35
	 * @param fieldName
	 * @param dataFields
	 * @return
	 */
	private boolean isExistInDataFields(String fieldName, List<DataField> dataFields) {
		for (DataField dataField : dataFields) {
			if (dataField.getName().equals(fieldName)) {
				return true;
			}
		}
		return false;
	}

	public String getBean() {
		return bean;
	}

	public void setBean(String bean) {
		this.bean = bean;
	}

}
