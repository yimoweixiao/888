package javax.xianfeng.mhtml.tags;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import javax.xianfeng.web.util.PropertiesUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Property标签类<br>
 * 说明：<br>
 * （1）查找的属性值来源于properties文件夹下的属性文件<br>
 * （2）根据客户端的语言选择属性值<br>
 * @author Programmer.Wenlong
 * @since 2012-5-11 下午07:59:48
 */
public class PropertyTag extends TagSupport {

	private static final Log logger = LogFactory.getLog(PropertyTag.class);

	private static final long serialVersionUID = 5948364481612977277L;

	private String name; // 名称

	private String date; // 日期格式

	private String value = ""; // 默认值

	@Override
	public int doStartTag() throws JspException {
		// 查找属性值
		Locale locale = pageContext.getRequest().getLocale();
		String value = PropertiesUtil.getProperty(locale, name);

		if (value == null) {
			value = this.value;
		}

		// 输出属性值
		try {
			pageContext.getOut().print(value);
		} catch (IOException e) {
			logger.error(e.getMessage(), e.getCause());
		} finally {
			try {
				// this.pageContext.getOut().clear();
				this.pageContext.getOut().flush();
			} catch (IOException e) {
				logger.error(e.getMessage(), e.getCause());
			}
		}

		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
