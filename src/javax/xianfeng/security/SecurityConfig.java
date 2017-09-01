package javax.xianfeng.security;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.xianfeng.plugin.xml.Dom4jXmlReaderImpl;
import javax.xianfeng.plugin.xml.XmlReaderException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.Document;
import org.dom4j.Element;

/**
 * 安全配置类<br>
 * 安全沙箱：SecurityConfig.excludeTargets标识的资源集合，系统默认为是安全的，不需要进行权限校验<br>
 * @author Programmer.Wenlong
 * @since 2012-4-30 上午11:40:13
 */
@SuppressWarnings("unchecked")
public final class SecurityConfig {

	private static final Log logger = LogFactory.getLog(SecurityConfig.class);

	private static final String FILE = "xianfeng-security.xml";

	// 默认的会话时长
	public static int sessionMaxInterval = 43200; // seconds

	public static int cookieMaxAge = 604800; // seconds

	// 运行模式
	public static boolean isDebug = false;

	// 权限管理配置类
	public static String authorizeToken;

	public static String authorizeTokenProvider;

	public static String authorizeSecurityValidator;

	public static String authorizeManager;

	// 用户登录页面key-type,value-url
	public static final Map<String, String> securityLoginPages = new HashMap<String, String>();;
	
	// 默认的登录页面类型
	public static final String LOGIN_PAGE_DEFAULT = "DEFAULT";

	// 用户主界面key-type,value-url
	public static final Map<String, String> securityHomePages = new HashMap<String, String>();

	// 无权限访问资源默认的返回页面
	public static String defaultNoPermitWarningPage;
	
	// 系统授权验证失败返回页面
	public static String defaultNotLicencePage;

	// 安全沙箱：进行权限校验的资源集合
	public static final List<String> securityIncludeTargets = new ArrayList<String>();

	// 安全沙箱：不进行权限校验的资源集合
	public static final List<String> securityExcludeTargets = new ArrayList<String>();

	static {
		load();
	}

	private static void load() {
		// 读取xianfeng-security.xml文件

		logger.info("load xianfeng-security.xml");

		try {
			Document document = (Document) new Dom4jXmlReaderImpl().read(FILE);
			Element root = document.getRootElement();
			String debug = root.attributeValue("debug");
			if (debug != null && debug.length() > 0) {
				isDebug = Boolean.parseBoolean(debug);
			}

			/** 读取会话配置 **/
			Element parent = root.element("session");
			Element child = parent.element("maxInterval");
			sessionMaxInterval = Integer.parseInt(child.getText().trim());

			parent = root.element("cookie");
			child = parent.element("maxAge");
			cookieMaxAge = Integer.parseInt(child.getText().trim());

			/** 读取校验程序配置 **/
			parent = root.element("authorization");

			child = parent.element("security-token");
			authorizeToken = child.attributeValue("class");

			child = parent.element("token-provider");
			authorizeTokenProvider = child.attributeValue("class");

			child = parent.element("security-validator");
			authorizeSecurityValidator = child.attributeValue("class");

			child = parent.element("authorize-manager");
			authorizeManager = child.attributeValue("class");

			/** 读取安全资源设置 **/
			child = root.element("security-uri");
			defaultNoPermitWarningPage = child.attributeValue("default"); // 无权限跳转页面
			addExcludeTarget(defaultNoPermitWarningPage);
			for (Iterator<Element> it = child.elementIterator(); it.hasNext();) {
				Element element = it.next();
				String name = element.getName();
				String text = element.getText().trim();
				if ("include".equals(name)) {
					addIncludeTarget(text);
				} else if ("exclude".equals(name)) {
					addExcludeTarget(text);
				} else {
					throw new IllegalArgumentException("security-uri无法识别的子标签" + name);
				}
			}

			/** 读取登录页面配置 **/
			child = root.element("login-uri");
			for (Iterator<Element> it = child.elementIterator(); it.hasNext();) {
				Element element = it.next();
				String type = element.attributeValue("type");
				String text = element.getText().trim();
				securityLoginPages.put(type, text);
			}

			/** 读取用户主页配置 **/
			child = root.element("homepage-uri");
			for (Iterator<Element> it = child.elementIterator(); it.hasNext();) {
				Element element = it.next();
				String type = element.attributeValue("type");
				String text = element.getText().trim();
				securityHomePages.put(type, text);
			}
			
			/** 读取授权验证失败页面 **/
			child = root.element("license-uri");
			for (Iterator<Element> it = child.elementIterator(); it.hasNext();) {
				Element element = it.next();
				String text = element.getText().trim();
				defaultNotLicencePage = text;
				break;
			}
		} catch (XmlReaderException e) {
			logger.error(e.getMessage(), e.getCause());
		}
	}

	public static void reload() {
		securityHomePages.clear();
		securityLoginPages.clear();
		securityExcludeTargets.clear();
		securityIncludeTargets.clear();
		load();
	}

	/**
	 * 将target添加到securityExcludeTargets集合中<br>
	 * 注：如果target在securityExcludeTargets中已经存在就不重复添加
	 * @author Programmer.Wenlong
	 * @since 2012-6-7 下午02:45:52
	 * @param value
	 */
	private static void addExcludeTarget(String target) {
		if (!securityExcludeTargets.contains(target)) {
			securityExcludeTargets.add(target);
		}
	}

	/**
	 * 将target添加到securityIncludeTargets集合中<br>
	 * 注：如果target在securityIncludeTargets中已经存在就不重复添加
	 * @author Programmer.Wenlong
	 * @since 2014-4-19 上午11:32:11
	 * @param target
	 */
	private static void addIncludeTarget(String target) {
		if (!securityIncludeTargets.contains(target)) {
			securityIncludeTargets.add(target);
		}
	}

	/**
	 * 获取默认的登录页面
	 * @author Programmer.Wenlong
	 * @since 2015-3-29 下午10:37:40
	 * @return
	 */
	public static String getDefaultLoginPage () {
		return securityLoginPages.get(SecurityConfig.LOGIN_PAGE_DEFAULT);
	}
}
