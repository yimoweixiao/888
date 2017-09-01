package javax.xianfeng.security.web;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-23 下午07:37:00
 */
public interface ISafeHtmlMgr {

	public String filter (String str);
	
	public boolean isSafeURI (String uri);
	
}
