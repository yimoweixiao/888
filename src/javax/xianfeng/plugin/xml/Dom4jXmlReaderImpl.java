package javax.xianfeng.plugin.xml;

import java.io.File;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午01:34:46
 */
public class Dom4jXmlReaderImpl implements XmlReader {

	private static final Log logger = LogFactory.getLog(Dom4jXmlReaderImpl.class);

	@Override
	public Object read(String path) throws XmlReaderException {
		SAXReader reader = new SAXReader();
		try {
			path = Dom4jXmlReaderImpl.class.getClassLoader().getResource(path).getPath();
			logger.debug(path);
			Document document = reader.read(new File(path));
			return document;
		} catch (DocumentException e) {
			throw new XmlReaderException("dom4j read xml exception", e);
		}
	}

}
