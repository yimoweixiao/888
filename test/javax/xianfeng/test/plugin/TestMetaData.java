package javax.xianfeng.test.plugin;

import javax.xianfeng.plugin.metadata.MetaDataFactory;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-8 下午08:35:03
 */
public class TestMetaData {

	@Test
	public void get() {
		String meta = "Application.State";
		String key = "0";
		System.out.println(MetaDataFactory.getMetaData(meta, key));
	}

}
