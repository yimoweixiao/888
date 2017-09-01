package javax.xianfeng.struts.action;

import java.io.InputStream;
import java.io.Serializable;
import java.net.URLEncoder;

/**
 * 实体类的通用Action类 完成Entity的常用增、删、改、查操作
 * @author Programmer.Wenlong
 * @since 2011-12-2 下午04:16:19
 */
public abstract class BaseEntityAction extends BaseAction {
	
	private String excelFileName; //Excel文件名称

	private InputStream excelInputStream; //Excel文件输入流

	/**
	 * 保存
	 * @author Programmer.Wenlong
	 * @since 2012-4-29 下午11:41:41
	 * @return
	 */
	public abstract Serializable doSave();

	/**
	 * 删除
	 * @author Programmer.Wenlong
	 * @since 2012-4-29 下午11:41:46
	 * @return
	 */
	public abstract Serializable doDrop();

	/**
	 * 修改
	 * @author Programmer.Wenlong
	 * @since 2012-4-29 下午11:41:49
	 * @return
	 */
	public abstract Serializable doEdit();

	/**
	 * 查询
	 * @author Programmer.Wenlong
	 * @since 2012-4-29 下午11:41:54
	 * @return
	 */
	public abstract Serializable doList();
	
	/**
	 * 导出Excel
	 * @author Programmer.Wenlong
	 * @since 2015-5-4 下午05:04:46
	 * @return
	 */
	public Serializable doExcel() {
		//TODO
		return null;
	}
	

	public String getExcelFileName() {
		return excelFileName;
	}

	/**
	 * 设置Excel文件名称
	 * @author Programmer.Wenlong
	 * @since 2015-5-4 下午05:07:12
	 * @param excelFileName
	 */
	public void setExcelFileName(String excelFileName) {
		String agent = request.getHeader("USER-AGENT");
		try {
			if (agent.indexOf("Firefox") > 0) {
				// Firefox
				this.excelFileName = new String(excelFileName.getBytes("UTF-8"), "ISO8859-1");
			} else if (agent.indexOf("Chrome") > 0) {
				// Chrome
				this.excelFileName = URLEncoder.encode(excelFileName, "UTF-8");
			} else {
				// IE7+
				this.excelFileName = new String(excelFileName.getBytes("GB2312"), "ISO8859-1");
			}
		} catch (Exception e) {
			this.excelFileName = excelFileName;
		}
	}

	public InputStream getExcelInputStream() {
		return excelInputStream;
	}

	public void setExcelInputStream(InputStream excelInputStream) {
		this.excelInputStream = excelInputStream;
	}


}
