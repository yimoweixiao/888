package javax.xianfeng.mhtml.tags;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import javax.xianfeng.mhtml.util.ScriptType;
import javax.xianfeng.mhtml.util.ScriptUtil;
import javax.xianfeng.web.util.RequestUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Script标签类<br>
 * <code>
 * &lt;mhtml:script type="text/javascript" src="demo/demo.js"/&gt;
 * </code><br>
 * <br>
 * 说明：<br>
 * （1）脚本的根路径是从/script开始的，默认为该目录下所有的JavaScript文件<br>
 * （2）考虑脚本冗余问题，目录不进行递归，只支持单级目录<br>
 * <br>
 * 属性说明：<br>
 * type： 脚本类型，默认为JavaScript<br>
 * src：脚本文件路径，支持目录<br>
 * @author Programmer.Wenlong
 * @since 2012-1-8 下午12:02:36
 */
public class ScriptTag extends TagSupport {

	private static final long serialVersionUID = -4258873489118822566L;

	private static final Log logger = LogFactory.getLog(ScriptTag.class);

	private String type = ScriptType.JavaScript; // 类型

	private String src; // 路径

	@SuppressWarnings("deprecation")
	@Override
	public int doStartTag() throws JspException {
		StringBuffer sb = new StringBuffer();

		if (this.src == null || this.src.length() == 0) {
			this.src = ScriptUtil.BASEPATH;
		} else {
			this.src = ScriptUtil.BASEPATH + "/" + this.src;
		}

		logger.debug("type=" + this.type + "\tsrc=" + this.src);

		// 判断src是文件还是目录
		String src = this.src.substring(this.src.lastIndexOf("/") + 1);
		String basePath = RequestUtil.getBasePath((HttpServletRequest) this.pageContext.getRequest());

		if (!src.contains(".")) {
			// src是目录，加载目录下所有的脚本文件
			String path = this.pageContext.getRequest().getRealPath(this.src);
			File[] files = new File(path).listFiles();
			for (File file : files) {
				sb.append(getScriptHtml(type, basePath + this.src + "/" + file.getName()));
				sb.append("\n");
			}
		} else {
			// src是文件
			sb.append(getScriptHtml(this.type, basePath + this.src)).append("\n");
		}
		try {
			this.pageContext.getOut().print(sb.toString());
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
		return super.doEndTag();
	}

	/**
	 * 组装script标签
	 * @author Programmer.Wenlong
	 * @since 2012-5-12 上午11:28:51
	 * @param type
	 * @param src
	 * @return
	 */
	private String getScriptHtml(String type, String src) {
		StringBuffer sb = new StringBuffer();
		sb.append("<script");
		sb.append(" type=\"").append(type).append("\"");
		sb.append(" src=\"").append(src).append("\"");
		sb.append(">");
		sb.append("</script>");
		return sb.toString();
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

}
