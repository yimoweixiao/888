package javax.xianfeng.mhtml.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import javax.xianfeng.mhtml.util.DataTypeUtil;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-4 下午11:36:39
 */
public class ParameterTag extends TagSupport {

	private static final long serialVersionUID = -980877299738185074L;

	private String name; // 名称

	private String type = "String"; // Java类型：java.lang.String或者String-字符串类型（默认值）

	private String value; // 值

	@Override
	public int doStartTag() throws JspException {
		return super.doStartTag();
	}

	@Override
	public int doEndTag() throws JspException {
		DataSetTag dataSetTag = (DataSetTag) this.getParent();
		dataSetTag.getDataSet().getParameters().setParameter(name, DataTypeUtil.getValueByType(this.type, this.value));
		return EVAL_PAGE;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
