package javax.xianfeng.plugin.xml;

/**
 * XML读取接口
 * @author Programmer.Wenlong
 * @since 2012-1-16 下午10:34:53
 */
public interface XmlReader {

	/**
	 * 读取XML
	 * @author Programmer.Wenlong
	 * @since 2012-4-8 下午11:28:23
	 * @param path
	 * @return
	 * @throws XmlReaderException
	 */
	public Object read(String path) throws XmlReaderException;

}
