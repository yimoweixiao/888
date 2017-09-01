package javax.xianfeng.web.command;

import javax.xianfeng.core.model.ParameterSet;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Command抽象基类 说明：<br>
 * 1、parameterSet参数集合中包的查询参数中，包含分页查询的参数<br>
 * 2、Command依赖于Application对象
 * @see javax.xianfeng.WebApplication.Application
 * @author Programmer.Wenlong
 * @since 2012-4-30 下午08:57:38
 */
public abstract class BaseCommand {

	protected final transient Log logger = LogFactory.getLog(this.getClass());

	private ParameterSet parameterSet = new ParameterSet(); // 查询参数集合

	/**
	 * 获取查询参数
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:06:11
	 * @param key
	 * @return
	 */
	protected Object getParameter(String key) {
		return this.parameterSet.getParameter(key);
	}

	/**
	 * 设置查询参数
	 * @author Programmer.Wenlong
	 * @since 2012-4-30 下午08:04:07
	 * @param key
	 * @param value
	 */
	protected void setParameter(String key, String value) {
		this.parameterSet.setParameter(key, value);
	}

	public ParameterSet getParameterSet() {
		return parameterSet;
	}

	public void setParameterSet(ParameterSet parameterSet) {
		this.parameterSet = parameterSet;
	}

}
