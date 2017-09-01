package javax.xianfeng.mhtml.tags;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.xianfeng.ApplicationConfig;
import javax.xianfeng.ApplicationRuntimeException;
import javax.xianfeng.core.model.DataField;
import javax.xianfeng.core.model.DataRecord;
import javax.xianfeng.core.model.DataSet;
import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.core.reflect.ObjectBuilder;
import javax.xianfeng.mhtml.util.DataSetType;
import javax.xianfeng.util.MethodUtil;
import javax.xianfeng.web.util.HttpUtil;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * DataSet标签类<br>
 * 说明：<br>
 * （1）如果autoLoad=true就直接调用后台的Java类，加载数据放入scope中<br>
 * （2）如果autoLoad=false由JavaScript调用HttpAjaxCommandServlet加载数据<br>
 * @see javax.xianfeng.web.servlet.HttpAjaxCommandServlet
 * @author Programmer.Wenlong
 * @since 2012-5-4 下午11:33:10
 */
public class DataSetTag extends BodyTagSupport {

	private static final long serialVersionUID = 3261150888990075434L;

	private static final Log logger = LogFactory.getLog(DataSetTag.class);

	private String id; // 标识id

	private String dictName; // 字典

	private String metaName; // 元数据

	private String command; // command类名

	private String method; // 方法名

	private String type = DataSetType.DATA_JAVA; // 数据类型：java（默认值）

	private boolean autoLoad = true; // 自动加载：true-是（默认值），false-否

	private String scope = HttpUtil.REQUEST; // 缓存数据的JSP对象：request（默认值）

	private int pageSize = 10; // 分页大小：10（默认值）

	private DataSet dataSet = new DataSet(new ParameterSet(), new ArrayList<DataField>(), new ArrayList<DataRecord>()); // 数据集合

	@Override
	public void doInitBody() throws JspException {
		super.doInitBody();
	}

	@Override
	public int doStartTag() throws JspException {
		/*
		 * this.dataSet.getParameters().clear(); this.dataSet.getFields().clear(); this.dataSet.getRecords().clear();
		 */
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		logger.debug("command=" + this.command + "\tmethod=" + this.method + "\tscope=" + this.scope + "\ttype=" + this.type);
		logger.debug("dictName=" + dictName + "\tmetaName=" + metaName);
		
		// 1、校验标签
		// 1.1、参数
		// logger.debug("parameters...");
		ParameterSet parameterSet = this.dataSet.getParameters();
		for (String key : parameterSet.keys()) {
			logger.debug("key=" + key + "\tvalue=" + parameterSet.getParameter(key));
		}

		// logger.debug("fields...");
		// 1.2、属性
		for (DataField field : this.dataSet.getFields()) {
			logger.debug("name=" + field.getName() + "\ttype=" + field.getType());
		}
		// 2、初始化Command信息
		if (this.dictName != null) {
			// 加载字典
			parameterSet.setParameter("dictName", this.dictName);
			this.command = ApplicationConfig.getConfig("Xianfeng.Command.BaseDict");
			if (this.command == null) {
				throw new ApplicationRuntimeException("Xianfeng.Command.BaseDict未设置");
			}
		} else if (this.metaName != null) {
			// 加载元数据
			parameterSet.setParameter("metaName", this.metaName);
			this.command = ApplicationConfig.getConfig("Xianfeng.Command.BaseMetaData");
			if (this.command == null) {
				throw new ApplicationRuntimeException("Xianfeng.Command.BaseMetaData未设置");
			}
		}

		if (this.method == null || this.method.length() <= 0) {
			this.method = DataSetType.DEFAULT_METHOD;
		}

		logger.debug("command=" + this.command + "\tmethod=" + this.method + "\tscope=" + this.scope + "\ttype=" + this.type);

		// 3、加载数据
		try {
			Class<?> commandClass = Class.forName(this.command);
			Object command = ObjectBuilder.build(commandClass);

			// 设置参数集合，调用Command的setParameterSet()方法
			// class.getMethod("setParameterSet").invoke(command, parameterSet);
			MethodUtil.getMethod(commandClass, "setParameterSet", ParameterSet.class).invoke(command, parameterSet);

			// 执行方法
			Object result = commandClass.getMethod(this.method).invoke(command);

			if (this.autoLoad) {
				// 直接调用command返回数据结果
				HttpServletRequest request = (HttpServletRequest) this.pageContext.getRequest();
				HttpSession session = request.getSession(true);

				// 转换数据类型
				Object typedResult = getResultByType(result);

				// 组装JavaScript的JSON对象
				if (DataSetType.DATA_JSON.equalsIgnoreCase(this.type)) {
					typedResult = "<script type='text/javascript'>" + "var _" + this.id + " = " + typedResult + ";" + "</script>";
					// var _ds = [{id: '1001', name: 'Jack'}, {id: '1002', name: 'Rose'}];

					try {
						this.pageContext.getOut().print(typedResult.toString());
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
				}
				// 默认设置JSP对象
				this.type = DataSetType.DATA_JAVA;
				typedResult = getResultByType(result);
				if (HttpUtil.PAGE.equalsIgnoreCase(this.scope)) {
					// page
					this.pageContext.setAttribute(this.id, typedResult);
				} else if (HttpUtil.REQUEST.equalsIgnoreCase(this.scope)) {
					// request
					request.setAttribute(this.id, typedResult);
				} else if (HttpUtil.SESSION.equalsIgnoreCase(this.scope)) {
					// session
					session.setAttribute(this.id, typedResult);
				} else if (HttpUtil.APPLICATION.equalsIgnoreCase(this.scope)) {
					// application
					ServletContext application = session.getServletContext();
					application.setAttribute(this.id, typedResult);
				} else {
					this.pageContext.setAttribute(this.id, typedResult);
				}
			} else {
				// 调用command组装JavaScript
				result = commandClass.getMethod("getReturnSet").invoke(command);

				// 转换数据类型
				result = getResultByType(result);

				// TODO: 返回执行结果
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage(), e.getCause());
		}
		return EVAL_PAGE;
	}

	/**
	 * 获取指定类型的返回值<br>
	 * 说明：默认为Java类型，不做转换
	 * @author Programmer.Wenlong
	 * @since 2012-5-13 下午11:44:57
	 * @param obj
	 * @return
	 */
	private Object getResultByType(Object obj) {
		if (DataSetType.DATA_JSON.equalsIgnoreCase(this.type)) {
			// 返回值为JSON类型
			DataSet ds = null;
			if (obj instanceof DataSet) {
				ds = (DataSet) obj;
				List<DataRecord> records = ds.getRecords();
				StringBuffer sb = new StringBuffer();
				sb.append("[");
				for (DataRecord record : records) {
					String key = record.getKey();
					String value = record.getValue();
					sb.append("{key:'").append(key).append("',value:'").append(value).append("'},");
				}
				sb.deleteCharAt(sb.length() - 1);
				sb.append("]");
				return sb.toString();
			} else {
				throw new IllegalArgumentException("不支持的返回数据类型：" + obj.getClass().getName());
			}
		}
		return obj;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCommand() {
		return command;
	}

	public void setCommand(String command) {
		this.command = command;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getDictName() {
		return dictName;
	}

	public void setDictName(String dictName) {
		this.dictName = dictName;
	}

	public String getMetaName() {
		return metaName;
	}

	public void setMetaName(String metaName) {
		this.metaName = metaName;
	}

	public boolean isAutoLoad() {
		return autoLoad;
	}

	public void setAutoLoad(boolean autoLoad) {
		this.autoLoad = autoLoad;
	}

	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public DataSet getDataSet() {
		return dataSet;
	}

	public void setDataSet(DataSet dataSet) {
		this.dataSet = dataSet;
	}

}
