package javax.xianfeng.test;

import java.io.FileNotFoundException;

import javax.xianfeng.ApplicationRuntime;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-31 下午05:06:33
 */
public class TestRuntime {

	@Test
	public void classPath1() {
		System.out.println(ApplicationRuntime.classPath());
	}

	@Test
	public void classPath2() throws FileNotFoundException {
		System.out.println(ApplicationRuntime.classPath("metadata"));
	}

}
