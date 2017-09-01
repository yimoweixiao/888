package javax.xianfeng.web.util;

/**
 * MIME工具类<br>
 * MIME(Multipurpose Internet Mail Extensions) 是描述消息内容类型的因特网标准<br>
 * 注：不同的应用程序支持不同的 MIME 类型<br>
 * <a href="c">参考MIME 参考手册</a><br>
 * @author Programmer.Wenlong
 * @since 2011-12-7 下午05:08:06
 */
public final class MimeUtil {

	// 1.简单文本
	public static final String TXT = "text/plain";

	public static final String HTML = "text/html";
	public static final String XML = "text/xml";
	public static final String JSON = "text/json";

	// 2.图片
	public static final String GIF = "image/gif";
	public static final String JPEG = "image/jpeg";
	public static final String JPG = "image/jpeg";
	public static final String PNG = "image/png";
	public static final String BMP = "application/x-MS-bmp";

	// 3.文档类型
	public static final String DOC = "application/msword";
	public static final String PPT = "appication/powerpoint";
	public static final String XLS = "application/vnd.ms-excel";
	public static final String PDF = "application/pdf";

	// 4.多媒体
	public static final String SWF = "application/x-shockwave-flash";
	public static final String MPEG = "audio/mpeg";
	public static final String WAV = "audio/x-wav";
	public static final String AVI = "video/x-msvideo";

	// 5.压缩文件
	public static final String ZIP = "application/zip";

	private MimeUtil() {
		super();
	}

}
