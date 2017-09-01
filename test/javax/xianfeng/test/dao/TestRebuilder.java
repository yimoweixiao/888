package javax.xianfeng.test.dao;

import java.util.Date;

import javax.xianfeng.core.reflect.Rebuilder;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-5 下午03:53:09
 */
public class TestRebuilder {

	@Test
	public void print() {
		User user = new User("Jack", 22, new Date());
		System.out.println(Rebuilder.toString(user));
	}

}
