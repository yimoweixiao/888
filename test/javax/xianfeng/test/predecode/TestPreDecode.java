package javax.xianfeng.test.predecode;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2016-6-6 下午10:49:07
 */
public class TestPreDecode {

	@Test
	public void demo() {
		try

		{

			new FileInputStream(new File("")).close();
		}

		catch (IOException ioexception)

		{

			IllegalArgumentException illegalargumentexception = new IllegalArgumentException(ioexception.toString());

//			AntiCrack.fake(illegalargumentexception, ioexception);

			throw illegalargumentexception;

		}
	}

	@Test
	public void demo2() throws AntiException {
		try

		{
			new FileInputStream(new File("")).close();
		}

		catch (IOException e)

		{

			throw new AntiException(e.toString(), e);

		}
	}
}
