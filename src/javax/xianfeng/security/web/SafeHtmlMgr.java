package javax.xianfeng.security.web;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-23 下午07:42:54
 */
public class SafeHtmlMgr implements ISafeHtmlMgr {

	/* (non-Javadoc)
	 * @see javax.xianfeng.security.ISafeURIHtmlFilter#filter(java.lang.String)
	 */
	@Override
	public String filter (String str) {
		StringBuffer sb = new StringBuffer();
		int start = 0;
		while (true) {
			//System.out.println("str=" + str.substring(start));
			int index = str.indexOf("safeURI", start); 
			//System.out.println("start=" + start + "\tindex=" + index);
			if (index < 0) {
				sb.append(str.substring(start));
				break;
			}
			
			// 查找safeURI最近的<a hef="#" safeURI="insert@demo"></a>标签
			int aStart = -1;
			for (int i = index; i > start + 1; i--) {
				if ((str.charAt(i) == 'a' || str.charAt(i) == 'A') && str.charAt(i-1) == '<') {
					aStart = i-1;
					break;
				}
			}
			int aEnd = -1;
			for (int i = index; i < str.length() - 1; i++) {
				if ((str.charAt(i) == 'a' || str.charAt(i) == 'A') && str.charAt(i+1) == '>') {
					aEnd = i+1;
					break;
				}
			}
			int safeURIStart = -1;
			for (int i = index + 7; i < str.length(); i++) {
				if (str.charAt(i) == '\'' || str.charAt(i) == '"') {
					safeURIStart = i + 1;
					break;
				}
			}
			int safeURIEnd = -1;
			for (int i = safeURIStart+2; i < str.length(); i++) {
				if (str.charAt(i) == '\'' || str.charAt(i) == '"') {
					safeURIEnd = i;
					break;
				}
			}
			//System.out.println("aStart=" + aStart + "\taEnd=" + aEnd);
			//System.out.println("safeURIStart=" + safeURIStart + "\tsafeURIEnd=" + safeURIEnd);
			
			String safeURI = str.substring(safeURIStart, safeURIEnd);
			
			//System.out.println("safeURI=" + safeURI);
			
			if (this.isSafeURI(safeURI)) {
				continue;
			} else {
				//删除没有权限访问的超链接
				if (aStart > 0) {
					sb.append(str.substring(start, aStart));
					//System.out.println("result=" + sb);
				}
			}
			start = aEnd + 1;
		}
		return sb.toString();
	}

	@Override
	public boolean isSafeURI(String safeURI) {
		return false;
	}
	

}
