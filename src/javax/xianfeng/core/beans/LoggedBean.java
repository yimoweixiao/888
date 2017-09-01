package javax.xianfeng.core.beans;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 带日志属性对象的Bean基类<br>
 * 说明：依赖于commons的日志实现
 * @author Programmer.Wenlong
 * @since 2011-12-25 下午08:48:22
 */
public abstract class LoggedBean {

	protected final transient Log logger = LogFactory.getLog(this.getClass()); // 日志对象

}
