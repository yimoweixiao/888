package javax.xianfeng.mhtml.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import javax.xianfeng.core.model.DataField;
import javax.xianfeng.mhtml.util.DataTypeUtil;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-4 下午11:34:08
 */
public class FieldTag extends TagSupport {

	private static final long serialVersionUID = 4379728759221542586L;

	private String name; // 名称

	private String type = "java.lang.String"; // Java类型：java.lang.String（默认值）

	private String mapping; // 映射字段

	private String format; // 转换规则

	private String value; // 默认值

	@Override
	public int doStartTag() throws JspException {
		return super.doStartTag();
	}

	@Override
	public int doEndTag() throws JspException {
		DataSetTag dataSetTag = (DataSetTag) findAncestorWithClass(this, DataSetTag.class);
		DataField dataField = new DataField(name, type);
		dataField.setDefaultValue(DataTypeUtil.getValueByType(type, value));
		dataSetTag.getDataSet().getFields().add(dataField);
		return EVAL_PAGE;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMapping() {
		return mapping;
	}

	public void setMapping(String mapping) {
		this.mapping = mapping;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
