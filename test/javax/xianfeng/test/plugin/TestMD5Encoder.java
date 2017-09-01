package javax.xianfeng.test.plugin;

import javax.xianfeng.plugin.Encoder;
import javax.xianfeng.plugin.MD5Encoder;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-1-3 上午01:29:26
 */
public class TestMD5Encoder {

	@Test
	public void encode() throws Exception {
		String str = "166456785322testSys&dongao1295410572863";
		Encoder encoder = new MD5Encoder();
		System.out.println(encoder.encode(str));
		// 8c6c80dc5893c7e5e5837e71054a5b72
	}

}
