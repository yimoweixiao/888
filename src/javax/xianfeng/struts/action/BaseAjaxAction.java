package javax.xianfeng.struts.action;

/*
 import java.io.PrintWriter;
 import java.lang.reflect.Method;
 import java.util.HashMap;
 import java.util.Map;

 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;

 import org.apache.commons.beanutils.DynaClass;
 import org.apache.commons.beanutils.DynaProperty;
 import org.apache.commons.logging.Log;
 import org.apache.commons.logging.LogFactory;
 //import org.apache.struts.action.ActionForm;
 //import org.apache.struts.action.ActionForward;
 //import org.apache.struts.action.DynaActionForm;
 import org.apache.struts2.dispatcher.mapper.ActionMapping;*/

/**
 * Ajax封装的Action<br>
 * 特性：支持Ajax调用，并返回结果
 * @author Programmer.Wenlong
 * @since 2011-12-2 下午03:46:26
 */
public class BaseAjaxAction extends BaseAction {

	private static final long serialVersionUID = -2083544388365211694L;

	// private static final Log logger =
	// LogFactory.getLog(BaseAjaxAction.class);
	//	
	// public ActionForward execute(ActionMapping mapping, ActionForm form,
	// HttpServletRequest request, HttpServletResponse response)
	// throws Exception {
	// logger.info("Invoke execute()......");
	// response.setContentType("text/xml; charset=UTF-8");
	// response.setCharacterEncoding("UTF-8");
	// response.setHeader("Cache-Control", "no-cache");
	//		
	// PrintWriter out = response.getWriter();
	//		
	// // 默认的ActionForm
	// DynaActionForm iform = (DynaActionForm) form;
	// String bean = iform.getString("bean");
	// String method = iform.getString("method");
	// Map<String, Object> map = getInfo(iform);
	// if (map.size() < 1) {
	// throw new Exception("从form里面获取字段名失败:");
	// } else {
	// System.out.println("从form里面获取字段名成功");
	// }
	// // 返回与指定的字符串名的类相关的对象
	// Class<?> classBean = Class.forName(bean);
	// // 创建此class对象所表示类的一个新实例,
	// Object objBean = classBean.newInstance();
	// // 返回一个 Method 对象，它反映此 Class 对象所表示的类或接口的指定公共成员方法。
	// Method objMethod = classBean.getMethod(method, new Class[] { Map.class
	// });
	// Object result = objMethod.invoke(objBean, new Object[] { map });
	// // 接收返回的xml数据，并显示
	// System.out.print((String) result);
	// out.print(result);
	//		
	// return null;
	// }
	//
	// protected Map<String, Object> getInfo(ActionForm form) {
	// Map<String, Object> map = new HashMap<String, Object>();
	// DynaActionForm dynaForm = (DynaActionForm) form;
	// // dynaForm里的字段
	// DynaClass dybnClass = dynaForm.getDynaClass();
	// DynaProperty[] dynaproperty = dybnClass.getDynaProperties();
	// for (int i = 0; i < dynaproperty.length; i++) {
	// String property = dynaproperty[i].getName(); // 得到字段名
	// map.put(property, dynaForm.get(property));
	// }
	// return map;
	// }

}
