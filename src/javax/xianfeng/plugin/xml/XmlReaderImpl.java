package javax.xianfeng.plugin.xml;

import java.io.File;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-6 下午01:28:50
 */
public class XmlReaderImpl implements XmlReader {

	public Document read(String path) throws XmlReaderException {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder;
		Document doc = null;
		try {
			builder = factory.newDocumentBuilder();
			doc = builder.parse(new File(path));
		} catch (Exception e) {
			throw new XmlReaderException("read xml exception", e);
		}
		return doc;
	}

}
