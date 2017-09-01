package javax.xianfeng.plugin;

import java.io.Serializable;

/**
 * 加密顶级接口类
 * @author Programmer.Wenlong
 * @since 2011-12-3 下午11:29:24
 */
public interface Encoder {

	/**
	 * 加密
	 * @param bytes
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public Serializable encode(String str) throws Exception;

	/**
	 * 解密
	 * @param str
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public Serializable decode(String str) throws Exception;

}
