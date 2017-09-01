package javax.xianfeng.mhtml.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-11 下午11:40:30
 */
public class HelloTag extends BodyTagSupport {

	private static final long serialVersionUID = -1740990565863104266L;

	private static final Log logger = LogFactory.getLog(HelloTag.class);

	private String value; // 默认值

	@Override
	public void doInitBody() throws JspException {
		System.out.println("debug: init。。。");
		super.doInitBody();
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("debug: start。。。");
		try {
			pageContext.getOut().print(value);
		} catch (IOException e) {
			logger.error(e.getCause());
		}
		return super.doStartTag();
	}

	@Override
	public int doAfterBody() throws JspException {
		System.out.println("debug: after。。。");
		return super.doAfterBody();
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("debug: end。。。");
		return super.doEndTag();
	}

	@Override
	public void release() {
		System.out.println("debug: release。。。");
		super.release();
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
}
