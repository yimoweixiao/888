package javax.xianfeng.mhtml.tags;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import javax.xianfeng.mhtml.util.LinkUtil;
import javax.xianfeng.web.util.RequestUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Link标签类
 * @author Programmer.Wenlong
 * @since 2012-1-8 下午12:23:09
 */
public class LinkTag extends TagSupport {

	private static final long serialVersionUID = 1976317649575275789L;

	private static final Log logger = LogFactory.getLog(LinkTag.class);

	private String rel = LinkUtil.STYLESHEET; // 关系

	private String type; // 类型

	private String href; // 路径

	@Override
	public int doStartTag() throws JspException {
		this.href = LinkUtil.BASEPATH + "/" + this.href;

		logger.debug("Rel=" + this.rel + "\tType=" + this.type + "\tHref=" + this.href);

		String basePath = RequestUtil.getBasePath((HttpServletRequest) this.pageContext.getRequest());

		try {
			this.pageContext.getOut().print(getLinkHtml(this.rel, this.type, basePath + this.href));
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
		return super.doStartTag();
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return super.doEndTag();
	}

	/**
	 * 组装link标签
	 * @author Programmer.Wenlong
	 * @since 2012-5-12 下午08:29:37
	 * @param rel
	 * @param type
	 * @param href
	 * @return
	 */
	private String getLinkHtml(String rel, String type, String href) {
		StringBuffer sb = new StringBuffer();
		sb.append("<link");
		sb.append(" rel=\"").append(rel).append("\"");
		sb.append(" type=\"").append(type).append("\"");
		sb.append(" href=\"").append(href).append("\"");
		sb.append(">");
		return sb.toString();
	}

	public String getRel() {
		return rel;
	}

	public void setRel(String rel) {
		this.rel = rel;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

}
